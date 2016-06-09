/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentation;

import businesslogic.ConsumptionManager;
import java.awt.CardLayout;
import businesslogic.OrderManager;
import domain.Consumption;
import domain.Order;
import domain.Table;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.*;

/**
 *
 * @author Dorian
 */
public class GUI extends javax.swing.JFrame {
    
    private static final long serialVersionUID = 10003;
    
    private final OrderManager manager;
    private final ConsumptionManager conManager;
    private final ArrayList<MenuItem> menuItems = new ArrayList<>();
    private Menu menuPanel;
    private JPanel orderPanel;
    private int tableNumber;
    

    /**
     * Creates new form Beginscherm
     *
     * @param manager
     * @param conManager
     */
    public GUI(OrderManager manager, ConsumptionManager conManager) {
        this.manager = manager;
        this.conManager = conManager;
        initComponents();
        initMenu();
    }
    
    private void initMenu(){
        menuPanel = new Menu(conManager.GetConsumptions());        
        Menu.setLayout(new BorderLayout());
        Menu.add(menuPanel, BorderLayout.CENTER);
        
        orderPanel = new JPanel();
        orderPanel.setLayout(new BoxLayout(orderPanel, BoxLayout.Y_AXIS));
        OrderContainer.setLayout(new BorderLayout());
        JScrollPane scroll = new JScrollPane(orderPanel);
        scroll.setMaximumSize(new Dimension(400, 170));
        OrderContainer.add(scroll, BorderLayout.CENTER);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFrame1 = new javax.swing.JFrame();
        jFrame2 = new javax.swing.JFrame();
        jCheckBox1 = new javax.swing.JCheckBox();
        jPanel1 = new javax.swing.JPanel();
        TafelNummer = new javax.swing.JPanel();
        jTextField1 = new javax.swing.JTextField();
        jButton17 = new javax.swing.JButton();
        Welkomscherm = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        Menu = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        BestellingUitleesScherm = new javax.swing.JPanel();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        OrderContainer = new javax.swing.JPanel();
        Confirmatiescherm = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jButton9 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jButton15 = new javax.swing.JButton();
        Infoscherm1 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jButton13 = new javax.swing.JButton();
        Infoscherm2 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTextArea2 = new javax.swing.JTextArea();
        jButton14 = new javax.swing.JButton();
        jLabel11 = new javax.swing.JLabel();
        Afrekenscherm = new javax.swing.JPanel();
        jLabel12 = new javax.swing.JLabel();
        jButton16 = new javax.swing.JButton();

        javax.swing.GroupLayout jFrame1Layout = new javax.swing.GroupLayout(jFrame1.getContentPane());
        jFrame1.getContentPane().setLayout(jFrame1Layout);
        jFrame1Layout.setHorizontalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jFrame1Layout.setVerticalGroup(
            jFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout jFrame2Layout = new javax.swing.GroupLayout(jFrame2.getContentPane());
        jFrame2.getContentPane().setLayout(jFrame2Layout);
        jFrame2Layout.setHorizontalGroup(
            jFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jFrame2Layout.setVerticalGroup(
            jFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        jCheckBox1.setText("jCheckBox1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setLayout(new java.awt.CardLayout());

        jTextField1.setText("1");
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });

        jButton17.setText("Verder");
        jButton17.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton17ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout TafelNummerLayout = new javax.swing.GroupLayout(TafelNummer);
        TafelNummer.setLayout(TafelNummerLayout);
        TafelNummerLayout.setHorizontalGroup(
            TafelNummerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TafelNummerLayout.createSequentialGroup()
                .addGroup(TafelNummerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, TafelNummerLayout.createSequentialGroup()
                        .addGap(160, 160, 160)
                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(TafelNummerLayout.createSequentialGroup()
                        .addGap(172, 172, 172)
                        .addComponent(jButton17)))
                .addContainerGap(656, Short.MAX_VALUE))
        );
        TafelNummerLayout.setVerticalGroup(
            TafelNummerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TafelNummerLayout.createSequentialGroup()
                .addGap(125, 125, 125)
                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton17)
                .addContainerGap(548, Short.MAX_VALUE))
        );

        jPanel1.add(TafelNummer, "card9");

        jLabel1.setText("Welkom bij de Hartige Hap!");

        jButton1.setText("Bestel");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout WelkomschermLayout = new javax.swing.GroupLayout(Welkomscherm);
        Welkomscherm.setLayout(WelkomschermLayout);
        WelkomschermLayout.setHorizontalGroup(
            WelkomschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(WelkomschermLayout.createSequentialGroup()
                .addGap(121, 121, 121)
                .addGroup(WelkomschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(591, Short.MAX_VALUE))
        );
        WelkomschermLayout.setVerticalGroup(
            WelkomschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(WelkomschermLayout.createSequentialGroup()
                .addGap(43, 43, 43)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(632, Short.MAX_VALUE))
        );

        jPanel1.add(Welkomscherm, "Paneel1");

        jButton4.setText("Verder");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 48)); // NOI18N
        jLabel2.setText("Menu");

        javax.swing.GroupLayout MenuLayout = new javax.swing.GroupLayout(Menu);
        Menu.setLayout(MenuLayout);
        MenuLayout.setHorizontalGroup(
            MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, MenuLayout.createSequentialGroup()
                .addContainerGap(390, Short.MAX_VALUE)
                .addGroup(MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(387, 387, 387))
        );
        MenuLayout.setVerticalGroup(
            MenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, MenuLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 581, Short.MAX_VALUE)
                .addComponent(jButton4)
                .addGap(31, 31, 31))
        );

        jPanel1.add(Menu, "Paneel2");

        jButton5.setText("Terug");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton6.setText("Bestel");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jLabel6.setText("Uw bestelling");

        javax.swing.GroupLayout OrderContainerLayout = new javax.swing.GroupLayout(OrderContainer);
        OrderContainer.setLayout(OrderContainerLayout);
        OrderContainerLayout.setHorizontalGroup(
            OrderContainerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 823, Short.MAX_VALUE)
        );
        OrderContainerLayout.setVerticalGroup(
            OrderContainerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 543, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout BestellingUitleesSchermLayout = new javax.swing.GroupLayout(BestellingUitleesScherm);
        BestellingUitleesScherm.setLayout(BestellingUitleesSchermLayout);
        BestellingUitleesSchermLayout.setHorizontalGroup(
            BestellingUitleesSchermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(BestellingUitleesSchermLayout.createSequentialGroup()
                .addGroup(BestellingUitleesSchermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(BestellingUitleesSchermLayout.createSequentialGroup()
                        .addGap(161, 161, 161)
                        .addComponent(jLabel6))
                    .addGroup(BestellingUitleesSchermLayout.createSequentialGroup()
                        .addGap(121, 121, 121)
                        .addGroup(BestellingUitleesSchermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jButton5, javax.swing.GroupLayout.DEFAULT_SIZE, 132, Short.MAX_VALUE)
                            .addComponent(jButton6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(BestellingUitleesSchermLayout.createSequentialGroup()
                        .addGap(46, 46, 46)
                        .addGroup(BestellingUitleesSchermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(OrderContainer, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(38, Short.MAX_VALUE))
        );
        BestellingUitleesSchermLayout.setVerticalGroup(
            BestellingUitleesSchermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, BestellingUitleesSchermLayout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jLabel6)
                .addGap(26, 26, 26)
                .addComponent(jLabel8)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel9)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(OrderContainer, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, Short.MAX_VALUE)
                .addComponent(jButton5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton6)
                .addContainerGap())
        );

        jPanel1.add(BestellingUitleesScherm, "Paneel3");

        jLabel7.setText("Uw bestelling is ontvangen. Eet smakelijk!");

        jButton9.setText("Bestel opnieuw");
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });

        jButton10.setText("Home");
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });

        jButton15.setText("Afrekenen");
        jButton15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton15ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout ConfirmatieschermLayout = new javax.swing.GroupLayout(Confirmatiescherm);
        Confirmatiescherm.setLayout(ConfirmatieschermLayout);
        ConfirmatieschermLayout.setHorizontalGroup(
            ConfirmatieschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, ConfirmatieschermLayout.createSequentialGroup()
                .addContainerGap(517, Short.MAX_VALUE)
                .addComponent(jLabel7)
                .addGap(93, 93, 93))
            .addGroup(ConfirmatieschermLayout.createSequentialGroup()
                .addGap(141, 141, 141)
                .addGroup(ConfirmatieschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jButton10, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButton15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        ConfirmatieschermLayout.setVerticalGroup(
            ConfirmatieschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ConfirmatieschermLayout.createSequentialGroup()
                .addGap(56, 56, 56)
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 555, Short.MAX_VALUE)
                .addComponent(jButton15, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton9)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton10)
                .addContainerGap())
        );

        jPanel1.add(Confirmatiescherm, "Paneel4");

        jLabel10.setText("Ei met spek");

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jTextArea1.setText("Dit heerlijke gerecht bestaat uit roerei en spek.\nCalorien: 462\nGluten: ja");
        jScrollPane1.setViewportView(jTextArea1);

        jButton13.setText("Terug");
        jButton13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton13ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout Infoscherm1Layout = new javax.swing.GroupLayout(Infoscherm1);
        Infoscherm1.setLayout(Infoscherm1Layout);
        Infoscherm1Layout.setHorizontalGroup(
            Infoscherm1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Infoscherm1Layout.createSequentialGroup()
                .addGroup(Infoscherm1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(Infoscherm1Layout.createSequentialGroup()
                        .addGap(39, 39, 39)
                        .addGroup(Infoscherm1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel10)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 303, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(Infoscherm1Layout.createSequentialGroup()
                        .addGap(133, 133, 133)
                        .addComponent(jButton13, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(565, Short.MAX_VALUE))
        );
        Infoscherm1Layout.setVerticalGroup(
            Infoscherm1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Infoscherm1Layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addComponent(jLabel10)
                .addGap(27, 27, 27)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 488, Short.MAX_VALUE)
                .addComponent(jButton13, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25))
        );

        jPanel1.add(Infoscherm1, "Paneel5");
        Infoscherm1.getAccessibleContext().setAccessibleName("");

        jTextArea2.setColumns(20);
        jTextArea2.setRows(5);
        jTextArea2.setText("Een 500ml glas van cola. Zeer slecht voor je tanden.\nCalorien: 150\nGluten: ja");
        jScrollPane2.setViewportView(jTextArea2);

        jButton14.setText("Terug");
        jButton14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton14ActionPerformed(evt);
            }
        });

        jLabel11.setText("Cola");

        javax.swing.GroupLayout Infoscherm2Layout = new javax.swing.GroupLayout(Infoscherm2);
        Infoscherm2.setLayout(Infoscherm2Layout);
        Infoscherm2Layout.setHorizontalGroup(
            Infoscherm2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Infoscherm2Layout.createSequentialGroup()
                .addGroup(Infoscherm2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(Infoscherm2Layout.createSequentialGroup()
                        .addGap(39, 39, 39)
                        .addGroup(Infoscherm2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel11)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 303, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(Infoscherm2Layout.createSequentialGroup()
                        .addGap(133, 133, 133)
                        .addComponent(jButton14, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(565, Short.MAX_VALUE))
        );
        Infoscherm2Layout.setVerticalGroup(
            Infoscherm2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Infoscherm2Layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addComponent(jLabel11)
                .addGap(27, 27, 27)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 488, Short.MAX_VALUE)
                .addComponent(jButton14, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25))
        );

        jPanel1.add(Infoscherm2, "Paneel6");

        jLabel12.setText("Er komt er komt iemand aan waarbij u kunt betalen");

        jButton16.setText("Home");
        jButton16.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton16ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout AfrekenschermLayout = new javax.swing.GroupLayout(Afrekenscherm);
        Afrekenscherm.setLayout(AfrekenschermLayout);
        AfrekenschermLayout.setHorizontalGroup(
            AfrekenschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(AfrekenschermLayout.createSequentialGroup()
                .addGroup(AfrekenschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(AfrekenschermLayout.createSequentialGroup()
                        .addGap(81, 81, 81)
                        .addComponent(jLabel12))
                    .addGroup(AfrekenschermLayout.createSequentialGroup()
                        .addGap(143, 143, 143)
                        .addComponent(jButton16, javax.swing.GroupLayout.PREFERRED_SIZE, 107, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(460, Short.MAX_VALUE))
        );
        AfrekenschermLayout.setVerticalGroup(
            AfrekenschermLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(AfrekenschermLayout.createSequentialGroup()
                .addGap(59, 59, 59)
                .addComponent(jLabel12)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 592, Short.MAX_VALUE)
                .addComponent(jButton16)
                .addGap(46, 46, 46))
        );

        jPanel1.add(Afrekenscherm, "card8");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 746, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel2");
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel3");
        orderPanel.removeAll();
        for(Consumption con : menuPanel.GetConsumptions()){
            JLabel label = new JLabel("1x " + con.getConsumtionTitle() + " €" + con.getPrice());
            orderPanel.add(label);
        }
    } 
    
    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        manager.placeOrder(1, menuPanel.GetConsumptions());
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel4");
    } 
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel2");
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton10ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel1");
    }//GEN-LAST:event_jButton10ActionPerformed

    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel2");
    }//GEN-LAST:event_jButton9ActionPerformed

    private void jButton13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton13ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel2");
    }//GEN-LAST:event_jButton13ActionPerformed

    private void jButton14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton14ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel2");
    }//GEN-LAST:event_jButton14ActionPerformed

    private void jButton15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton15ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "card8");
    }//GEN-LAST:event_jButton15ActionPerformed

    private void jButton16ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton16ActionPerformed
        CardLayout card = (CardLayout) jPanel1.getLayout();
        card.show(jPanel1, "Paneel1");
    }//GEN-LAST:event_jButton16ActionPerformed

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
         
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jButton17ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton17ActionPerformed
        try{    
            tableNumber = Integer.parseInt(jTextField1.getText());
            CardLayout card = (CardLayout) jPanel1.getLayout();
            card.show(jPanel1, "Paneel1");
        }catch(NumberFormatException e){
            System.out.println("That was not an int you big dumb dumb");
        }
        
    }//GEN-LAST:event_jButton17ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Afrekenscherm;
    private javax.swing.JPanel BestellingUitleesScherm;
    private javax.swing.JPanel Confirmatiescherm;
    private javax.swing.JPanel Infoscherm1;
    private javax.swing.JPanel Infoscherm2;
    private javax.swing.JPanel Menu;
    private javax.swing.JPanel OrderContainer;
    private javax.swing.JPanel TafelNummer;
    private javax.swing.JPanel Welkomscherm;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton16;
    private javax.swing.JButton jButton17;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton9;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JFrame jFrame1;
    private javax.swing.JFrame jFrame2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextArea jTextArea2;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables

}
