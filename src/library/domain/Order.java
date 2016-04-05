/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package library.domain;

import java.util.Date;

/**
 *
 * @author ppthgast
 */
public class Order {
    private Date orderDate;
    
    private Table table;
    private Dish dish;
    private Drink drink;
    
    public Order(Table table, Dish dish){
        this.table = table;
        this.dish = dish;
        this.drink = null;
    }
    
    public Order(Table table, Dish dish, Drink drink){
        this.table = table;
        this.dish = dish;
        this.drink = drink;
    }
    
    public Order(Table table, Drink drink, Dish dish){
        this.table = table;
        this.dish = dish;
        this.drink = drink;
    }
    
    public Order(Table table, Drink drink){
        this.table = table;
        this.drink = drink;
        this.dish = null;
    }
    
    public Table getTable()
    {
        return table;
    }
    
    public Dish getDish()
    {
        return dish;
    }
    
    public Date getDate()
    {
        return orderDate;
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
        
        // Check added for this POC. We don't load the Books from the database.
        if(dish != null)
        {
            dish = null;
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
                        dish.equals(r.dish);
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
                dish.hashCode();
        
        return result;
    }
}
