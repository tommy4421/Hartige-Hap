/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.awt.Color;

/**
 *
 * @author Ruben
 */
public class Paint {
    
    private Vector2 location;
    private Color color;
    
    public Paint(Vector2 location, Color color){
        this.location = location;
        this.color = color;
    }
    
    public int getX(){
        return location.getX();
    }
    
    public int getY(){
        return location.getY();
    }
    
    public Color getColor(){
        return color;
    }
    
}
