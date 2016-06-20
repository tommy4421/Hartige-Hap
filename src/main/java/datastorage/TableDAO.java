/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package datastorage;

import domain.Table;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import domain.Order;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author ppthgast
 */
public class TableDAO extends BaseDAO {
    
    //private int tablenumber = getTableNumber();
    
    public TableDAO(DatabaseConnection con)
    {
        super(con);
    }
    

    public Table table(Table table)
    {
        
        // First open a database connnection
        DatabaseConnection connection = super.getDatabaseConnection();
        if(connection.openConnection())
        {
            // If a connection was successfully setup, execute the SELECT statement.
            connection.executeSQLDeleteStatement(
                "UPDATE `table` SET `Pay`= 1 WHERE TableNumber = " + 
                        table.getTableNumber() +
                         ";", "");
            
            connection.closeConnection();
        }
        
        return table;
    }
}
