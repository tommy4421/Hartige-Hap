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
    }

    public Order placeOrder(int tableNr, ArrayList<Consumption> consumptions){
        Order order = new Order(new Table(tableNr));
        for(Consumption con : consumptions){
            order.AddConsumption(con);
        }
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
