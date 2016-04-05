/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hartigehap.datastorage;

import hartigehap.domain.Table;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import hartigehap.domain.Dish;
import hartigehap.domain.Order;


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

//    public Order getOrder(int membershipNumber)
//    {
//        Order order = null;
//        
//        // First open a database connnection
//        DatabaseConnection connection = new DatabaseConnection();
//        if(connection.openConnection())
//        {
//            // If a connection was successfully setup, execute the SELECT statement.
//            ResultSet resultset = connection.executeSQLSelectStatement(
//                "SELECT * FROM `order` WHERE `OrderNumber` = " + membershipNumber + ";");
//
//            if(resultset != null)
//            {
//                try
//                {
//                    // The membershipnumber for a member is unique, so in case the
//                    // resultset does contain data, we need its first entry.
//                    if(resultset.next())
//                    {
//                        int tableNumberFromDb = resultset.getInt("TableNumber");
//                        
//
//                        order = new Order(
//                            tableNumberFromDb);
//                           
//                    }
//                }
//                catch(SQLException e)
//                {
//                    System.out.println(e);
//                    table = null;
//                }
//            }
//            // else an error occurred leave 'member' to null.
//            
//            // We had a database connection opened. Since we're finished,
//            // we need to close it.
//            connection.closeConnection();
//        }
//        
//        return Order;
//    }
//
//    /**
//     * Removes the given member from the database.
//     * 
//     * @param memberToBeRemoved an object of the Member class representing the
//     * member to be removed.
//     * 
//     * @return true if execution of the SQL-statement was successful, false
//     * otherwise.
//     */
//    public boolean removeMember(Table memberToBeRemoved)
//    {
//        boolean result = false;
//        
//        if(memberToBeRemoved != null)
//        {
//            // First open the database connection.
//            DatabaseConnection connection = new DatabaseConnection();
//            if(connection.openConnection())
//            {
//                // Execute the delete statement using the membership number to
//                // identify the member row.
//                result = connection.executeSQLDeleteStatement(
//                    "DELETE FROM member WHERE MembershipNumber = " + memberToBeRemoved.getTableNumber() + ";");
//                
//                // Finished with the connection, so close it.
//                connection.closeConnection();
//            }
//            // else an error occurred leave 'member' to null.
//        }
//        
//        return result;
//    }

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
