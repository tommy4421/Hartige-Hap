/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import businesslogic.*;
import datastorage.*;
import domain.Order;
import domain.Table;
import java.net.URL;
import presentation.GUI;

/**
 *
 * @author ppthgast
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
                /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(GUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(GUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(GUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(GUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        DatabaseConnection con = new DatabaseConnection( "jdbc:mysql://145.48.6.148/hartige_hap", "IVP4C1", "Koksmuts#4");
        OrderDAO daoOrder = new OrderDAO(con);
        TableDAO daoTable = new TableDAO(con);
        OrderManager manager = new OrderManager(daoOrder,daoTable);
        
        ConsumptionDAO daoConsumption = new ConsumptionDAO(con);
        ConsumptionManager conManager = new ConsumptionManager(daoConsumption);
        
        GUI ui = new GUI(manager, conManager, daoTable);
        ui.setVisible(true);
    }
}
