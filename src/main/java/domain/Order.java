/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.util.Date;
import datastorage.OrderDAO;
import java.util.ArrayList;

/**
 *
 * @author ppthgast
 */
public class Order {
    private Date orderDate;
    
    private Table table;
    private ArrayList<Consumption> consumptions = new ArrayList<>();
    private Status status;

    public Order(Table table) {
        this.table = table;
    }
    
    public Table getTable()
    {
        return table;
    }
    
    public ArrayList<Consumption> getConsumtions()
    {
        return consumptions;
    }
    
    public Date getDate()
    {
        return orderDate;
    }
    
    public void AddConsumption(Consumption con){
        consumptions.add(con);
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
        
        if(consumptions != null)
        {
            consumptions = null;
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
                        consumptions.equals(r.consumptions);
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
                consumptions.hashCode();
        
        return result;
    }

    /**
     * @return the status
     */
    public Status getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(Status status) {
        this.status = status;
    }
}
