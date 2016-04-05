/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package library.businesslogic;

import java.util.ArrayList;
import java.util.HashMap;
import library.datastorage.CustomerDAO;
import library.domain.Table;
import library.domain.Dish;
import library.domain.Order;

/**
 *
 * @author ppthgast
 */
public class OrderManager {
    
    private HashMap<Integer, Table> tables;
    
    public OrderManager()
    {
        tables = new HashMap();
        
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
    
    public Order placeOrder(Table customer, Dish dish){
        return new Order(customer, dish);
    } 
}
