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
import static presentation.GUI.folderID;

/**
 *
 * @author Ruben
 */
public class MenuCategory extends JPanel {
    
    private static final long serialVersionUID = 10001;
    
    private JPanel panel;
    private String name;
    
    private GUI gui;
    
    private ArrayList<MenuItem> menuItems = new ArrayList<>();
    
    public MenuCategory(String name){
        this.name = name;
        //setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
        setLayout(new FlowLayout(FlowLayout.LEFT));
        setBackground(new Color(244, 244, 244));
        setMaximumSize(new Dimension(420, 190));
        setPreferredSize(getMaximumSize());
        init();
    }
    
    private void init(){
        panel = new JPanel();
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
        JScrollPane scroll = new JScrollPane(panel);
        DragScrollListener dl = new DragScrollListener(panel);
        panel.addMouseListener(dl);
        panel.addMouseMotionListener(dl);
        scroll.setMinimumSize(new Dimension(400, 130));
        scroll.setPreferredSize(scroll.getMinimumSize());
        JLabel label = new JLabel("<html><div style='position: relative; width: 110px; background: white url(https://googledrive.com/host/" + folderID + "/Categoryheader1.png) no-repeat right top;'>"
                + "<h3 style='position: absolute; padding-left: 3px; color: white'>" + name + "</h3>"
                + "</div></html>");
        add(label);
        add(scroll);
    }
    
    public void SetGUI(GUI gui){
        for(MenuItem item : menuItems){
            item.SetGUI(gui);
        }
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

    public void ResetAmount() {
        for(MenuItem item : menuItems){
            item.ResetAmount();
        }
    }
    
}
