/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datastorage;

/**
 *
 * @author Sean
 */
public class BaseDAO {
    DatabaseConnection con;
    
    
    public BaseDAO(DatabaseConnection con){
        this.con = con;
        
    }
    
    public DatabaseConnection getDatabaseConnection(){
        return this.con;
        
    }
}
