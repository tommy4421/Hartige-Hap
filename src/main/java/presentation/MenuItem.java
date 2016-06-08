/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import domain.Consumption;
import domain.Order;
import domain.Table;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import static java.lang.System.out;
import javax.swing.*;
import javax.swing.border.MatteBorder;

/**
 *
 * @author Ruben
 */
public class MenuItem extends JPanel {
    
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
        
        minusButton.addActionListener(new ButtonHandler());
        plusButton.addActionListener(new ButtonHandler());
        
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
    
    @Override
    public Dimension getPreferredSize() {
        return this.getMaximumSize();
    }
    
    public Consumption GetConsumption(){
        int amount1 = Integer.parseInt(amount.getText());
        if(amount1 > 0){
            return consumption;
        }else{
            return null;
        }
    }
    
    class ButtonHandler implements ActionListener{

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
}
