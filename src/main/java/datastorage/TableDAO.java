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
public class TableDAO extends BaseDAO{
    
    public TableDAO(DatabaseConnection con)
    {
        super(con);
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
    public Table findMember(int membershipNumber)
    {
        Table table = null;
        
        // First open a database connnection
        DatabaseConnection connection = super.getDatabaseConnection();
        if(connection.openConnection())
        {
            // If a connection was successfully setup, execute the SELECT statement.
            ResultSet resultset = connection.executeSQLSelectStatement(
                "SELECT * FROM member WHERE MembershipNumber = " + membershipNumber + ";");

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

    /**
     * Removes the given member from the database.
     * 
     * @param memberToBeRemoved an object of the Member class representing the
     * member to be removed.
     * 
     * @return true if execution of the SQL-statement was successful, false
     * otherwise.
     */
    public boolean removeMember(Table memberToBeRemoved)
    {
        boolean result = false;
        
        if(memberToBeRemoved != null)
        {
            // First open the database connection.
            DatabaseConnection connection = super.getDatabaseConnection();
            if(connection.openConnection())
            {
                // Execute the delete statement using the membership number to
                // identify the member row.
                result = connection.executeSQLDeleteStatement(
                    "DELETE FROM member WHERE MembershipNumber = " + memberToBeRemoved.getTableNumber() + ";");
                
                // Finished with the connection, so close it.
                connection.closeConnection();
            }
            // else an error occurred leave 'member' to null.
        }
        
        return result;
    }

    public List<Table> getTables() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void add(Table table) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
