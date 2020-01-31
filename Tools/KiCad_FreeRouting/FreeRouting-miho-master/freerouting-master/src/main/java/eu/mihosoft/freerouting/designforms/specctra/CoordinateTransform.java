/*
 *   Copyright (C) 2014  Alfons Wirtz
 *   website www.freerouting.net
 *
 *   Copyright (C) 2017 Michael Hoffer <info@michaelhoffer.de>
 *   Website www.freerouting.mihosoft.eu
*
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License at <http://www.gnu.org/licenses/> 
 *   for more details.
 *
 * CoordinateTransform.java
 *
 * Created on 14. Mai 2004, 09:09
 */

package eu.mihosoft.freerouting.designforms.specctra;

import eu.mihosoft.freerouting.geometry.planar.FloatPoint;
import eu.mihosoft.freerouting.geometry.planar.Vector;
import eu.mihosoft.freerouting.geometry.planar.Line;
import eu.mihosoft.freerouting.geometry.planar.IntBox;
import eu.mihosoft.freerouting.geometry.planar.PolylineShape;

/**
 * Computes transformations between a specctra dsn-file coordinates and eu.mihosoft.freerouting.board coordinates.
 *
 * @author  Alfons Wirtz
 */
public class CoordinateTransform implements java.io.Serializable
{
    
    /**
     * Creates a new instance of CoordinateTransform.
     * The base point of the dsn coordinate system will be translated to zero in the eu.mihosoft.freerouting.board
     * coordinate system.
     */
    public CoordinateTransform(double p_scale_factor, double p_base_x, double p_base_y)
    {
        scale_factor = p_scale_factor;
        base_x = p_base_x;
        base_y = p_base_y;
    }
    
    /**
     * Scale a value from the eu.mihosoft.freerouting.board to the dsn coordinate system
     */
    public double board_to_dsn(double p_val)
    {
        return p_val / scale_factor;
    }
    
    /**
     * Scale a value from the dsn to the eu.mihosoft.freerouting.board coordinate system
     */
    public double dsn_to_board(double p_val)
    {
        return p_val * scale_factor;
    }
    
    /**
     * Transforms a eu.mihosoft.freerouting.geometry.planar.FloatPoint to a tuple of doubles
     * in the dsn coordinate system.
     */
    public double[]  board_to_dsn(FloatPoint p_point)
    {
        double [] result = new double[2];
        result [0] = board_to_dsn(p_point.x) + base_x;
        result [1] = board_to_dsn(p_point.y) + base_y;
        return result;
    }
    
    /**
     * Transforms a eu.mihosoft.freerouting.geometry.planar.FloatPoint to a tuple of doubles
     * in the dsn coordinate system in relative (vector) coordinates.
     */
    public double[]  board_to_dsn_rel(FloatPoint p_point)
    {
        double [] result = new double[2];
        result [0] = board_to_dsn(p_point.x);
        result [1] = board_to_dsn(p_point.y);
        return result;
    }
    
    /**
     * Transforms an array of n eu.mihosoft.freerouting.geometry.planar.FloatPoints to
     * an array of 2*n  doubles in the dsn coordinate system.
     */
    public double [] board_to_dsn(FloatPoint [] p_points)
    {
        double [] result = new double[2 * p_points.length];
        for (int i = 0; i < p_points.length; ++ i)
        {
            result[2 * i] = board_to_dsn(p_points[i].x) + base_x;
            result[2 * i + 1] = board_to_dsn(p_points[i].y) + base_y;
        }
        return result;
    }
    
    /**
     * Transforms an array of n eu.mihosoft.freerouting.geometry.planar.Lines to
     * an array of 4*n  doubles in the dsn coordinate system.
     */
    public double [] board_to_dsn(Line [] p_lines)
    {
        double [] result = new double[4 * p_lines.length];
        for (int i = 0; i < p_lines.length; ++ i)
        {
            FloatPoint a = p_lines[i].a.to_float();
            FloatPoint b = p_lines[i].b.to_float();
            result[4 * i] = board_to_dsn(a.x) + base_x;
            result[4 * i + 1] = board_to_dsn(a.y) + base_y;
            result[4 * i + 2] = board_to_dsn(b.x) + base_x;
            result[4 * i + 3] = board_to_dsn(b.y) + base_y;
        }
        return result;
    }
    
    /**
     * Transforms an array of n eu.mihosoft.freerouting.geometry.planar.FloatPoints to
     * an array of 2*n  doubles in the dsn coordinate system in relative (vector) coordinates.
     */
    public double [] board_to_dsn_rel(FloatPoint [] p_points)
    {
        double [] result = new double[2 * p_points.length];
        for (int i = 0; i < p_points.length; ++ i)
        {
            result[2 * i] = board_to_dsn(p_points[i].x);
            result[2 * i + 1] = board_to_dsn(p_points[i].y);
        }
        return result;
    }
    
    /**
     * Transforms a eu.mihosoft.freerouting.geometry.planar.Vector to a tuple of doubles
     * in the dsn coordinate system.
     */
    public double[]  board_to_dsn(Vector p_vector)
    {
        double [] result = new double[2];
        FloatPoint v = p_vector.to_float();
        result [0] = board_to_dsn(v.x);
        result [1] = board_to_dsn(v.y);
        return result;
    }
    
    /**
     * Transforms a dsn tuple to a eu.mihosoft.freerouting.geometry.planar.FloatPoint
     */
    public FloatPoint dsn_to_board(double [] p_tuple)
    {
        double x = dsn_to_board(p_tuple[0] - base_x);
        double y = dsn_to_board(p_tuple[1] - base_y);
        return new FloatPoint(x, y);
    }
    
    /**
     * Transforms a dsn tuple to a eu.mihosoft.freerouting.geometry.planar.FloatPoint in relative (vector) coordinates.
     */
    public FloatPoint dsn_to_board_rel(double [] p_tuple)
    {
        double x = dsn_to_board(p_tuple[0]);
        double y = dsn_to_board(p_tuple[1]);
        return new FloatPoint(x, y);
    }
    
    /**
     * Transforms a eu.mihosoft.freerouting.geometry.planar.Intbox to the coordinates of a Rectangle.
     */
    public double [] board_to_dsn(IntBox p_box)
    {
        double [] result = new double[4];
        result[0] = p_box.ll.x / scale_factor + base_x;
        result[1] = p_box.ll.y / scale_factor + base_y;
        result[2] = p_box.ur.x / scale_factor + base_x;
        result[3] = p_box.ur.y / scale_factor + base_y;
        return result;
    }
    
    /**
     * Transforms a eu.mihosoft.freerouting.geometry.planar.Intbox to a Rectangle in relative (vector) coordinates.
     */
    public double [] board_to_dsn_rel(IntBox p_box)
    {
        double [] result = new double[4];
        result[0] = p_box.ll.x / scale_factor;
        result[1] = p_box.ll.y / scale_factor ;
        result[2] = p_box.ur.x / scale_factor;
        result[3] = p_box.ur.y / scale_factor;
        return result;
    }
    
    /**
     * Transforms a eu.mihosoft.freerouting.board shape to a dsn shape.
     */
    public Shape board_to_dsn(eu.mihosoft.freerouting.geometry.planar.Shape p_board_shape, Layer p_layer)
    {
        Shape result;
        if (p_board_shape instanceof IntBox)
        {
            result = new Rectangle(p_layer, board_to_dsn((IntBox) p_board_shape));
        }
        else if (p_board_shape instanceof PolylineShape)
        {
            FloatPoint [] corners = ((PolylineShape)p_board_shape).corner_approx_arr();
            double [] coors = board_to_dsn(corners);
            result  = new Polygon(p_layer, coors);
        }
        else if (p_board_shape instanceof eu.mihosoft.freerouting.geometry.planar.Circle)
        {
            eu.mihosoft.freerouting.geometry.planar.Circle board_circle = (eu.mihosoft.freerouting.geometry.planar.Circle) p_board_shape;
            double diameter = 2 * board_to_dsn(board_circle.radius);
            double [] center_coor = board_to_dsn(board_circle.center.to_float());
            result  = new Circle(p_layer, diameter, center_coor[0], center_coor[1]);
        }
        else
        {
            System.out.println("CoordinateTransform.board_to_dsn not yet implemented for p_board_shape");
            result = null;
        }
        return result;
    }
    
    /**
     * Transforms the relative (vector) coordinates of a eu.mihosoft.freerouting.geometry.planar.Shape to a specctra dsn shape.
     */
    public Shape board_to_dsn_rel(eu.mihosoft.freerouting.geometry.planar.Shape p_board_shape, Layer p_layer)
    {
        Shape result;
        if (p_board_shape instanceof IntBox)
        {
            result = new Rectangle(p_layer, board_to_dsn_rel((IntBox) p_board_shape));
        }
        else if (p_board_shape instanceof PolylineShape)
        {
            FloatPoint [] corners = ((PolylineShape)p_board_shape).corner_approx_arr();
            double [] coors = board_to_dsn_rel(corners);
            result  = new Polygon(p_layer, coors);
        }
        else if (p_board_shape instanceof eu.mihosoft.freerouting.geometry.planar.Circle)
        {
            eu.mihosoft.freerouting.geometry.planar.Circle board_circle = (eu.mihosoft.freerouting.geometry.planar.Circle) p_board_shape;
            double diameter = 2 * board_to_dsn(board_circle.radius);
            double [] center_coor = board_to_dsn_rel(board_circle.center.to_float());
            result  = new Circle(p_layer, diameter, center_coor[0], center_coor[1]);
        }
        else
        {
            System.out.println("CoordinateTransform.board_to_dsn not yet implemented for p_board_shape");
            result = null;
        }
        return result;
    }
    
    private final double scale_factor;
    private final double base_x;
    private final double base_y;
}