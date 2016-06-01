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
import domain.Status;


public class OrderDAO extends BaseDAO{
    
    public OrderDAO(DatabaseConnection con)
    {
        super(con);
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


    public void add(Order order) {

        boolean result = false;
        
        if(order != null)
        {
            // First open the database connection.
            DatabaseConnection connection = super.getDatabaseConnection();
            if(connection.openConnection())
            {

                result = connection.executeSQLDeleteStatement(
                        
//                result = connection.executeSQLDeleteStatement("INSERT INTO `order`, (ConsumptionName, ConsumtionAmount, TableNumber)\n" +
//                "VALUES (" + order.getConsumtion().getConsumtionNumber() + "," + 
//                        order.getTable().getTableNumber() + "," + 
//                        order.getConsumtionAmount() + ");");
                        
//                        "INSERT INTO `order` (StatusNumber, TableNumber) "
//                        + "VALUES (0," + order.getTable().getTableNumber() + ");"
//                        + " INSERT INTO `consumptionorder` (OrderNumber, ConsumptionNumber, Amount) "
//                        + "VALUES (3423," + order.getConsumtion().getConsumtionNumber() + "," + order.getConsumtionAmount() + ");"
//                        + "COMMIT;");
//                
//                  result = connection.executeSQLDeleteStatement( 
//                                 "INSERT INTO `consumptionorder` (OrderNumber, ConsumptionNumber, Amount) "
//                                + "VALUES(LAST_INSERT_ID(),1,1); "
//                                );


                        "INSERT INTO `order` (StatusNumber, TableNumber) "
                        + "VALUES (0," + order.getTable().getTableNumber() + ");"
                         ,
                        "INSERT INTO `consumptionorder` (OrderNumber, ConsumptionNumber, Amount)"
                        + "VALUES (LAST_INSERT_ID()," + order.getConsumtion().getConsumtionNumber() + "," + order.getConsumtionAmount()+ ");"
                        );
                    
                // Finished with the connection, so close it.
                connection.closeConnection();
            }
            // else an error occurred leave 'member' to null.
        }
        
    }
}
