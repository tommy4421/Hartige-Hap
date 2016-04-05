/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package library.businesslogic;

import java.util.ArrayList;
import java.util.HashMap;
import library.datastorage.TableDAO;
import library.domain.Table;
import library.domain.Dish;
import library.domain.Drink;
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
        
        /* Voorbeeld van een order
        Order order = placeOrder(tables.get(1), new Dish(1, "Ei met spek", 10), new Drink(1, "Cola", 2));
        order.setDishAmount(1);
        order.setDrinkAmount(1);
        order.writeToDatabase();*/
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
    
    public Order placeOrder(Table table, Dish dish, Drink drink){
        System.out.println("Tafel " + table.getTableNumber() + " : " + dish.getDishTitle());
        return new Order(table, dish, drink);
    } 
}
