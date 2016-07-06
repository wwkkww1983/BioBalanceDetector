﻿using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArduinoMultiplexerServer
{
    internal class BBDInput : MultiChannelInput
    {
        private SerialPort arduinoCOMPort;

        private string dataBuffer = "";
        private List<byte> dataBufferBytes = new List<byte>();

        public long COMPortBytesReceived;
        public long LLCommandReceived;


        public BBDInput(string arduinoPort, int channelCount) : base(channelCount)
        {
            List<ADCChannel> channels = new List<ADCChannel>();
            for (int i = 0; i < channelCount; i++)
            {
                channels.Add(new ADCChannel());
            }
            this.channels = channels.ToArray();

            // Set up the serial port communication with the Arduino on COM3 at 115200 baud
            arduinoCOMPort = new SerialPort(arduinoPort) { BaudRate = 115200 * 16 };
            // hook up the event for receiving the data
            arduinoCOMPort.DataReceived += ArduinoCOMPort_DataReceived;

            arduinoCOMPort.Open();
        }

        private void ArduinoCOMPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            if (!recordingInProgress)
            {
                return;
            }

            int bytesToRead = arduinoCOMPort.BytesToRead;

            byte[] buffer = new byte[bytesToRead];
            COMPortBytesReceived += arduinoCOMPort.Read(buffer, 0, bytesToRead);

            dataBufferBytes.AddRange(buffer);
            dataBuffer += System.Text.Encoding.ASCII.GetString(buffer);

            int dataBlockStartIndex = dataBuffer.IndexOf("<|");
            int dataBlockEndIndex = dataBuffer.IndexOf("|>");

            if ((dataBlockStartIndex < 0) || (dataBlockEndIndex < 0)) return;

            List<SerialCommand> commandsReceived = new List<SerialCommand>();
            while ((dataBlockStartIndex >= 0) && (dataBlockEndIndex >= 0))
            {
                if (dataBlockStartIndex + 1 < dataBlockEndIndex)
                {
                    SerialCommand sc = new SerialCommand();

                    string dataBlock = dataBuffer.Substring(dataBlockStartIndex + 2, dataBlockEndIndex - dataBlockStartIndex - 2);

                    if (dataBlock.Length > 3)
                    {
                        sc.Command = dataBlock.Substring(0, 2);
                        sc.ParametersRaw = new byte[dataBlock.Length - 3];
                        dataBufferBytes.CopyTo(dataBlockStartIndex + 2 + 3, sc.ParametersRaw, 0, dataBlock.Length - 3);
                        sc.Parameters = dataBlock.Substring(3).Split(new char[] { ',' });

                        commandsReceived.Add(sc);
                    }
                }

                dataBuffer = dataBuffer.Substring(dataBlockEndIndex + 2);
                dataBufferBytes = dataBufferBytes.Skip(dataBlockEndIndex + 2).ToList();
                dataBlockStartIndex = dataBuffer.IndexOf("<|");
                dataBlockEndIndex = dataBuffer.IndexOf("|>");
            }

            foreach (SerialCommand sc in commandsReceived)
            {
                if (sc.Command == "ch")
                {
                    byte channel = 0;
                    int parsedValue = -1;

                    if ((sc.Parameters.Length < 2) || (!Byte.TryParse(sc.Parameters[0], out channel)) || (!Int32.TryParse(sc.Parameters[1], out parsedValue)))
                    {
                        continue;
                    }

                    ((ADCChannel)channels[channel]).AppendValue(DateTime.UtcNow, (double)parsedValue);
                }
                else if (sc.Command == "ll")
                {
                    for (int i = 0; i < sc.ParametersRaw.Length / 2; i++)
                    {
                        if (i >= channels.Length) continue;

                        ushort value = (ushort)(sc.ParametersRaw[i * 2] * 256 + sc.ParametersRaw[i * 2 + 1]);
                        ((ADCChannel)channels[i]).AppendValue(DateTime.UtcNow, (double)(value - 32768.0) / (32768.0));

                        //selfHostedClient.GetAsync("api/channels/appendvalue/" + sessionId + "/" + i + "/" + DateTime.UtcNow.ToString("o") + "/" + value);
                    }

                    LLCommandReceived++;
                }
                else if (sc.Command == "bm")
                {
                    timer.Stop();
                    Console.WriteLine($"Time elapsed until benchmark point '{sc.Parameters[0]}' - remote: {sc.Parameters[1]} ticks, local: {timer.Duration.ToString("0.0000")} seconds");
                    timer.Start();
                }
                else
                {
                    Console.WriteLine(sc);
                }
            }
        }

        new void Dispose()
        {
            if (arduinoCOMPort.IsOpen)
            {
                arduinoCOMPort.Close();
            }

            base.Dispose();
        }
    }
}