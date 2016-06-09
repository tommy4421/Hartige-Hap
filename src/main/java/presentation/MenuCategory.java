/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import domain.Consumption;
import domain.Order;
import java.awt.*;
import java.util.ArrayList;
import javax.swing.*;

/**
 *
 * @author Ruben
 */
public class MenuCategory extends JPanel {
    
    private static final long serialVersionUID = 10001;
    
    private JPanel panel;
    private String name;
    
    private ArrayList<MenuItem> menuItems = new ArrayList<>();
    
    public MenuCategory(String name){
        this.name = name;
        setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
        setMaximumSize(new Dimension(420, 190));
        setPreferredSize(getMaximumSize());
        init();
    }
    
    private void init(){
        panel = new JPanel();
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
        JScrollPane scroll = new JScrollPane(panel);
        scroll.setMinimumSize(new Dimension(400, 170));
        JLabel label = new JLabel("<html><span style='font-size:12px'>"+name+"</span></html>");
        label.setOpaque(true);
        label.setForeground(Color.white);
        label.setBackground(Color.red);
        add(label);
        add(scroll);
    }
    
    public void AddItem(MenuItem item){
        panel.add(item);
        menuItems.add(item);
    }
    
    public ArrayList<Consumption> GetConsumptions(){
        ArrayList<Consumption> cons = new ArrayList<>();
        for(MenuItem item : menuItems){
            ArrayList<Consumption> con = item.GetConsumption();
            if(con != null){
                for(Consumption c : con){
                    cons.add(c);
                }
            }
        }
        return cons;
    }
    
}
