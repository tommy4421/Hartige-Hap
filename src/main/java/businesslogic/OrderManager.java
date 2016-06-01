/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package businesslogic;

import datastorage.OrderDAO;
import java.util.ArrayList;
import java.util.HashMap;
import datastorage.TableDAO;
import domain.Table;
import domain.Consumption;
import domain.Order;
import java.util.List;

/**
 *
 * @author ppthgast
 */
public class OrderManager {
    private final OrderDAO daoOrder;
    private final TableDAO daoTable;
    
    public OrderManager(OrderDAO daoOrder, TableDAO daoTable)
    {
        this.daoOrder = daoOrder;
        this.daoTable = daoTable;
        /* Voorbeeld van een order
        Order order = placeOrder(tables.get(1), new Dish(1, "Ei met spek", 10), new Drink(1, "Cola", 2));
        order.setDishAmount(1);
        order.setDrinkAmount(1);
        order.writeToDatabase();*/
    }

    public Order placeOrder(Order order){
        daoOrder.add(order);
        return order;
    } 
    
    public List<Table> getTables(){
        return this.daoTable.getTables();
    }

    protected TableDAO getTableDAO(){
        return this.daoTable;
    }
}
