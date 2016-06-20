/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datastorage;

import domain.Consumption;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ruben
 */
public class ConsumptionDAO extends BaseDAO {
    
    public ConsumptionDAO(DatabaseConnection con) {
        super(con);
    }
    
    public ArrayList<Consumption> FindConsumptions(){
        ArrayList<Consumption> cons = new ArrayList<>();

            ResultSet result;
            ResultSet info;

            // First open the database connection.
            DatabaseConnection connection = super.getDatabaseConnection();
            if(connection.openConnection())
            {
                try {
                    result = connection.executeSQLSelectStatement("SELECT * FROM `consumption` WHERE in_stock = 1");
                    while(result.next()){
                        int conNumber = result.getInt("ConsumptionNumber");
                        String conName = result.getString("ConsumptionName");
                        int conPrice = result.getInt("ConsumptionPrice");
                        String conType = result.getString("ConsumptionType");
                        String conInfo = result.getString("Info");
                        cons.add(new Consumption(conNumber, conName, conPrice, conType, conInfo));
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(ConsumptionDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
                connection.closeConnection();
            }

        return cons;
    }
    
}
