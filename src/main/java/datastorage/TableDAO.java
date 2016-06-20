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
            ResultSet resultset = connection.executeSQLSelectStatement(
                "UPDATE `table` SET `Pay`= 1 WHERE TableNumber = " + 
                        table.getTableNumber() +
                         ";");

            if(resultset != null)
            {
                try
                {
                    // The membershipnumber for a member is unique, so in case the
                    // resultset does contain data, we need its first entry.
                    if(resultset.next())
                    {
                        int tableNumberFromDb = resultset.getInt("TableNumber");
                        

                        table = new Table(
                            tableNumberFromDb);
                           
                    }
                }
                catch(SQLException e)
                {
                    System.out.println(e);
                    table = null;
                }
            }
            // else an error occurred leave 'member' to null.
            
            // We had a database connection opened. Since we're finished,
            // we need to close it.
            connection.closeConnection();
        }
        
        return table;
    }

    public List<Table> getTables() {
        return new ArrayList<Table>();
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void add(Table table) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
