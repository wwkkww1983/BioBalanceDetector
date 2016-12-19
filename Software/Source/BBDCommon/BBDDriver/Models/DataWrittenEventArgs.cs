﻿using BBDDriver.Models.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BBDDriver.Models
{
    public delegate void DataWrittenEventHandler(object sender, DataWrittenEventArgs e);

    public class DataWrittenEventArgs : EventArgs
    {
        public string Path;
        public long DataWritten;
        public long TotalDataWritten;

        public DataWrittenEventArgs(string path, long dataWritten, long totalDataWritten)
        {
            this.Path = path;
            this.DataWritten = dataWritten;
            this.TotalDataWritten = totalDataWritten;
        }
    }
}