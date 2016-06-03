/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package businesslogic;

import datastorage.ConsumptionDAO;
import domain.Consumption;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Ruben
 */
public class ConsumptionManager {
    
    private ArrayList<Consumption> consumptions = new ArrayList<>();
    
    public ConsumptionManager(ConsumptionDAO daoConsumption){
        consumptions = daoConsumption.FindConsumptions();
    }
    
    public ArrayList<Consumption> GetConsumptions(){
        return consumptions;
    }
    
}
