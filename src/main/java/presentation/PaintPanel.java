/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import domain.Paint;
import domain.Vector2;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.ArrayList;
import javax.swing.*;

/**
 *
 * @author Ruben
 */
public class PaintPanel extends JPanel{
    
    private int mouseX;
    private int mouseY;
    
    private ArrayList<Paint> locations;
    
    public PaintPanel(){
        init();
    }
    
    private void init(){
        locations = new ArrayList<>();
        this.addMouseMotionListener(new Painter());
    }
    
    @Override
    public void paintComponent(Graphics g) {
       super.paintComponent(g);
       Graphics2D g2 = (Graphics2D) g;
       g2.setStroke(new BasicStroke(10));
        if(locations.size() > 0){
            Paint lastLoc = locations.get(0);
            for(Paint loc : locations){
                g2.setColor(loc.getColor());
                g2.drawLine(lastLoc.getX(), lastLoc.getY(), loc.getX(), loc.getY());
                lastLoc = loc;
            }
        }
    }
    
    
    class Painter implements MouseMotionListener{

        @Override
        public void mouseDragged(MouseEvent e) {
            Vector2 loc = new Vector2(e.getPoint().x, e.getPoint().y);
            locations.add(new Paint(loc, Color.red));
            repaint();
        }

        @Override
        public void mouseMoved(MouseEvent e) {
        }      
        
    }
}
