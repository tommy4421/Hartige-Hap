/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import domain.Order;
import java.awt.*;
import java.util.ArrayList;
import javax.swing.*;

/**
 *
 * @author Ruben
 */
public class MenuCategory extends JPanel {
    
    private JPanel panel;
    private String name;
    
    private ArrayList<MenuItem> menuItems = new ArrayList<>();
    
    public MenuCategory(String name){
        this.name = name;
        setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
        init();
    }
    
    private void init(){
        panel = new JPanel();
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
        JScrollPane scroll = new JScrollPane(panel);
        scroll.setMinimumSize(new Dimension(400, 170));
        add(new JLabel(name));
        add(scroll);
    }
    
    public void AddItem(MenuItem item){
        panel.add(item);
        menuItems.add(item);
    }
    
    public ArrayList<Order> GetOrders(){
        ArrayList<Order> orders = new ArrayList<>();
        for(MenuItem item : menuItems){
            Order order = item.GetOrder();
            if(order != null){
                orders.add(order);
            }
        }
        return orders;
    }
    
}
