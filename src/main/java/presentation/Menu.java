/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import domain.Consumption;
import domain.Order;
import domain.Table;
import java.awt.*;
import java.util.ArrayList;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

/**
 *
 * @author Ruben
 */
public class Menu extends JPanel {
    
    private MenuCategory appetizers;
    private MenuCategory salads;
    private MenuCategory mainDishes;
    private MenuCategory drinks;
    private MenuCategory hotBeverages;
    private MenuCategory desserts;
    
    private ArrayList<MenuCategory> panels = new ArrayList<>();
    
    public Menu(ArrayList<Consumption> cons){
        
        GridBagLayout gbl = new GridBagLayout();
        setLayout(gbl);
        
        appetizers = new MenuCategory("Voorgerechten");
        salads = new MenuCategory("Salades");
        mainDishes = new MenuCategory("Hoofdgerechten");
        drinks = new MenuCategory("Drankjes");
        hotBeverages = new MenuCategory("Warme Dranken");
        desserts = new MenuCategory("Nagerechten");
        
        panels.add(appetizers);
        panels.add(salads);
        panels.add(mainDishes);
        panels.add(drinks);
        panels.add(hotBeverages);
        panels.add(desserts);
        
        if(cons != null){
            for(Consumption con : cons){
                if(con != null){
                    MenuItem item = new MenuItem(con);
                    switch(con.getConsumptionType()){
                        case "appetizer":
                            appetizers.AddItem(item); break;
                        case "salad":
                            salads.AddItem(item); break;
                        case "maindish":
                            mainDishes.AddItem(item); break;
                        case "drink":
                            drinks.AddItem(item); break;
                        case "hot beverage":
                            hotBeverages.AddItem(item); break;
                        case "dessert":
                            desserts.AddItem(item); break;
                        default:
                            System.out.println("Consumption type not found!"); break;
                    }   
                }
            }
        }
        GridBagConstraints gbc = new GridBagConstraints();
        for(int i = 0; i < panels.size(); i++){
            MenuCategory panel = panels.get(i);
            gbc.gridx = i % 2;
            gbc.gridy = (int) Math.ceil(i / 2);
            add(panel, gbc);
        }
    }
    
    public ArrayList<Consumption> GetConsumptions(){
        ArrayList<Consumption> cons = new ArrayList<>();
        for(MenuCategory panel : panels){
            for(Consumption con : panel.GetConsumptions()){
                cons.add(con);
            }
        }
        return cons;
    }
}
