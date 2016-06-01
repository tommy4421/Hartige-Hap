/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.util.Date;
import datastorage.OrderDAO;

/**
 *
 * @author ppthgast
 */
public class Order {
    private Date orderDate;
    
    private Table table;
    private Consumption consumption;
    private int consumptionAmount;

    public Order(Table table, Consumption consumption, int consumptionAmount) {
        this.table = table;
        this.consumption = consumption;
        this.consumptionAmount = consumptionAmount;
    }
    
    public Table getTable()
    {
        return table;
    }
    
    public Consumption getConsumtion()
    {
        return consumption;
    }
    
    public Date getDate()
    {
        return orderDate;
    }
    
    public int getConsumtionAmount(){
        return consumptionAmount;
    }
    
    public void setConsumtionAmount(int amount){
        this.consumptionAmount = amount;
    }
    
    public void remove()
    {
        // Removing this reservation means unlinking from the member and the
        // book. The garbage collection mechanism will detect that there are
        // no more references to this object and consequently will remove it
        // from memory. To clean up nicely, the book and member fields are
        // set to null (the relations are bidirectional).
        table.removeReservation(this);
        table = null;
        
        if(consumption != null)
        {
            consumption = null;
        }
    }
    
    @Override
    public boolean equals(Object o)
    {
        boolean equal = false;
        
        if(o == this)
        {
            // Dezelfde instantie van de klasse, dus per definitie hetzelfde.
            equal = true;
        }
        else
        {
            if(o instanceof Order)
            {
                Order r = (Order)o;
                
                equal = orderDate.equals(r.orderDate) &&
                        table.equals(r.table) &&
                        consumption.equals(r.consumption);
            }
        }
        
        return equal;
    }
    
    @Override
    public int hashCode()
    {
        // Deze implementatie is gebaseerd op de best practice zoals beschreven
        // in Effective Java, 2nd edition, Joshua Bloch.
        
        int result = 17;
        result += orderDate.hashCode() +
                table.hashCode() +
                consumption.hashCode();
        
        return result;
    }
}
