/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datastorage;

import domain.Table;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import domain.Consumption;
import domain.Order;
import java.util.logging.Level;
import java.util.logging.Logger;


public class OrderDAO extends BaseDAO{
    
    public OrderDAO(DatabaseConnection con)
    {
        super(con);
        // Nothing to be initialized. This is a stateless class. Constructor
        // has been added to explicitely make this clear.
    }
    

    public void add(Order order) {
        boolean result = false;
        
        if(order != null)
        {
            // First open the database connection.
            DatabaseConnection connection = super.getDatabaseConnection();
            if(connection.openConnection())
            {
                int orderid = 0;
                ResultSet resultSet;
                try {
                    resultSet = connection.executeSQLSelectStatement("SELECT MAX(OrderNumber) FROM `order`;");
                    resultSet.first();
                    orderid = resultSet.getInt(1) + 1;
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
                String query = "";
                query += " INSERT INTO `consumptionorder` (OrderNumber, ConsumptionNumber) VALUES";
                ArrayList<Consumption> consumptions = order.getConsumtions();
                for(int i = 0; i < consumptions.size(); i ++){
                    query += "(" + orderid + "," + consumptions.get(i).getConsumtionNumber() + ")";
                    if(i < consumptions.size() - 1)
                        query += ",";
                }
                
                query += ";";
                result = connection.executeSQLDeleteStatement(
                         "INSERT INTO `order` (StatusNumber, TableNumber) "
                        + "VALUES (1," + order.getTable().getTableNumber() + ");"
                         , query);
                    
                // Finished with the connection, so close it.
                connection.closeConnection();
            }
            // else an error occurred leave 'member' to null.
        }
        
    }
}
