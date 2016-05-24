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
import domain.Dish;
import domain.Order;
import domain.Status;


public class OrderDAO {
    
    public OrderDAO()
    {
        // Nothing to be initialized. This is a stateless class. Constructor
        // has been added to explicitely make this clear.
    }
    
    /**
     * Tries to find the member identified by the given membership number
     * in the persistent data store, in this case a MySQL database. All loans
     * and reservations for the member are loaded as well. In this POC, the
     * reserved books and/or lend copies of the books are not loaded - it is
     * out of scope for now.
     * 
     * @param membershipNumber identifies the member to be loaded from the database
     * 
     * @return the Member object to be found. In case member could not be found,
     * null is returned.
     */


    public void writeToDB(Order order) {

        boolean result = false;
        
        if(order != null)
        {
            // First open the database connection.
            DatabaseConnection connection = new DatabaseConnection();
            if(connection.openConnection())
            {
                // Execute the delete statement using the membership number to
                // identify the member row.
                result = connection.executeSQLDeleteStatement("INSERT INTO `order` (DrinkNumber,DishNumber,TableNumber,DishAmount,DrinkAmount)\n" +
                "VALUES (" + order.getDrink().getDrinkNumber() + "," + 
                        order.getDish().getDishNumber() + "," + 
                        order.getTable().getTableNumber() + "," + 
                        order.getDishAmount() + "," + 
                        order.getDrinkAmount() +
                        ");");
                
                
                    
                // Finished with the connection, so close it.
                connection.closeConnection();
            }
            // else an error occurred leave 'member' to null.
        }
        
    }
}
