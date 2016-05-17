/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hartigehap.businesslogic;

import hartigehap.datastorage.OrderDAO;
import hartigehap.domain.Table;

/**
 *
 * @author Sean
 */
public class TestOrderManager extends OrderManager{
    
    public TestOrderManager(OrderDAO dao) {
        super(dao);
        fillTestData();
    }
    
    
    private void fillTestData()
    {
        tables.put(1, new Table(1));
        tables.put(2, new Table(2));
        tables.put(3, new Table(3));
        tables.put(4, new Table(4));
        tables.put(5, new Table(5));
        tables.put(6, new Table(6));
    }
    
}
