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
import java.awt.event.ActionEvent;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.swing.*;

/**
 *
 * @author Ruben
 */
public class PaintPanel extends JPanel{
    
    private int mouseX;
    private int mouseY;
    
    private ArrayList<Paint> locations;
    private HashMap<String, Color> colors;
    private Color paintColor = Color.red;
    
    public PaintPanel(){
        init();
    }
    
    private void init(){
        this.setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));
        this.setBackground(Color.white);
        this.addMouseMotionListener(new Painter());
        
        colors = new HashMap<>();
        colors.put("Black", Color.black);
        colors.put("White", Color.white);
        colors.put("Red", Color.red);
        colors.put("Green", Color.green);
        colors.put("Blue", Color.blue);
        locations = new ArrayList<>();
        for(Map.Entry<String, Color> entry : colors.entrySet()){
            JButton colorButton = new JButton(entry.getKey());
            colorButton.addActionListener((ActionEvent e) -> {
                paintColor = entry.getValue();
            });
            add(colorButton);
        }
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
            locations.add(new Paint(loc, paintColor));
            repaint();
        }

        @Override
        public void mouseMoved(MouseEvent e) {
        }      
        
    }
}
