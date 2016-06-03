/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import java.awt.Color;
import java.awt.Dimension;
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
    
    private JLabel titleLabel;
    private JLabel priceLabel;
    
    public MenuItem(int conNumber, String conTitle, int price){
        this.conNumber = conNumber;
        this.conTitle = conTitle;
        this.price = price;
        initComps();
    }
    
    private void initComps(){
        titleLabel = new JLabel(conTitle);
        priceLabel = new JLabel("€" + price);
        JButton minusButton = new JButton("-");
        JButton plusButton = new JButton("+");
        JTextField amount = new JTextField("0");
        JButton info = new JButton("?");
        
        javax.swing.GroupLayout MenuLayout = new javax.swing.GroupLayout(this);
        setLayout(MenuLayout);
        MenuLayout.setHorizontalGroup(
            MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(MenuLayout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(minusButton, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(priceLabel))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(MenuLayout.createSequentialGroup()
                        .addGroup(MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(MenuLayout.createSequentialGroup()
                                .addComponent(plusButton)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(amount, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(MenuLayout.createSequentialGroup()
                                .addComponent(titleLabel)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(info)))))
                .addContainerGap(29, Short.MAX_VALUE))
        );
        MenuLayout.setVerticalGroup(
            MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(MenuLayout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addGroup(MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(titleLabel)
                    .addComponent(priceLabel)
                    .addComponent(info))
                .addGap(13, 13, 13)
                .addGroup(MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(plusButton)
                    .addComponent(minusButton)
                    .addComponent(amount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 206, Short.MAX_VALUE)
                .addGap(41, 41, 41))
        );
    }
    
    @Override
    public Dimension getPreferredSize() {
        return new Dimension(272, 110);
    }
    
}
