/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import businesslogic.OrderManager;
import businesslogic.TestOrderManager;
import datastorage.DatabaseConnection;
import datastorage.OrderDAO;
import datastorage.TableDAO;
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
        DatabaseConnection con = new DatabaseConnection( "jdbc:mysql://localhost/23ivp4c1", "IVP4C1", "Koksmuts#4");
        OrderDAO daoOrder = new OrderDAO(con);
        TableDAO daoTable = new TableDAO(con);
        OrderManager manager = new TestOrderManager(daoOrder,daoTable);
        
        GUI ui = new GUI(manager);
        ui.setVisible(true);
    }
}
