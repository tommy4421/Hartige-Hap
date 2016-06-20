/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import domain.Consumption;
import domain.Order;
import domain.Table;
import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import static java.lang.System.out;
import java.util.ArrayList;
import javax.swing.*;
import javax.swing.border.MatteBorder;

/**
 *
 * @author Ruben
 */
public class MenuItem extends JPanel {
    
    private static final long serialVersionUID = 10002;
    
    private int conNumber;
    private String conTitle;
    private int price;
    private Consumption consumption;
    
    private JLabel titleLabel;
    private JLabel priceLabel;
    private JLabel amount;
    private JButton minusButton;
    private JButton plusButton;
    private JButton info;
    
    private GUI gui;
    
    public MenuItem(Consumption consumption){
        this.conNumber = consumption.getConsumtionNumber();
        this.conTitle = consumption.getConsumtionTitle();
        this.price = consumption.getPrice();
        this.consumption = consumption;
        setMaximumSize(new Dimension(375, 40));
        initComps();
    }
    
    private void initComps(){
        
        titleLabel = new JLabel(conTitle);
        priceLabel = new JLabel("€" + price);
        minusButton = new JButton("-");
        plusButton = new JButton("+");
        amount = new JLabel("0");
        info = new JButton("?");
        
        minusButton.addActionListener(new AmountChangeHandler());
        plusButton.addActionListener(new AmountChangeHandler());
        
        
//        minusButton.setPreferredSize(new Dimension(50, 50));
//        plusButton.setPreferredSize(new Dimension(50, 50));
        
        info.addActionListener(new InfoButtonHandler());
        
        setLayout(new FlowLayout(FlowLayout.LEFT));
        
        add(info);
        add(titleLabel);
        add(Box.createHorizontalStrut(215 - titleLabel.getPreferredSize().width - priceLabel.getPreferredSize().width));
        add(priceLabel);
        add(minusButton);
        add(amount);
        add(plusButton);
    }
    
    private void ChangeAmount(int change){
        int curAmount = Integer.parseInt(amount.getText());
        curAmount = Math.max(Math.min(curAmount + change, 9), 0);
        amount.setText(Integer.toString(curAmount));
    }
    
    public void SetGUI(GUI gui){
        this.gui = gui;
    }
    
    @Override
    public Dimension getPreferredSize() {
        return this.getMaximumSize();
    }
    
    public ArrayList<Consumption> GetConsumption(){
        int amount1 = Integer.parseInt(amount.getText());
        if(amount1 > 0){
            ArrayList<Consumption> consumptions = new ArrayList<>();
            for(int i = 0;  i < amount1; i++){
                consumptions.add(consumption);
            }            
            return consumptions;
        }else{
            return null;
        }
    }
    
    class AmountChangeHandler implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent e) {
            switch(e.getActionCommand()){
                case "+":
                    ChangeAmount(1); break;
                case "-":
                    ChangeAmount(-1); break;
            }
        }
    }
    
    class InfoButtonHandler implements ActionListener{
        @Override
        public void actionPerformed(ActionEvent e) {
           gui.ShowCard("Infoscherm");
           gui.SetInfoConsumption(consumption);
        }        
    }
    
}
