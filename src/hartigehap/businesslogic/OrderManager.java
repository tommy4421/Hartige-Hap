/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hartigehap.businesslogic;

import hartigehap.datastorage.OrderDAO;
import java.util.ArrayList;
import java.util.HashMap;
import hartigehap.datastorage.TableDAO;
import hartigehap.domain.Table;
import hartigehap.domain.Dish;
import hartigehap.domain.Drink;
import hartigehap.domain.Order;

/**
 *
 * @author ppthgast
 */
public class OrderManager{
    
    protected HashMap<Integer, Table> tables;
    private OrderDAO dao;
    
    public OrderManager(OrderDAO dao)
    {
        tables = new HashMap();
        this.dao = dao;
        /* Voorbeeld van een order
        Order order = placeOrder(tables.get(1), new Dish(1, "Ei met spek", 10), new Drink(1, "Cola", 2));
        order.setDishAmount(1);
        order.setDrinkAmount(1);
        order.writeToDatabase();*/
    }
    
    public void placeOrder(Order order) {
        this.dao.writeToDB(order);
    }
}
