/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hartigehap.domain;

import java.util.Date;
import hartigehap.datastorage.OrderDAO;

/**
 *
 * @author ppthgast
 */
public class Order {
    private Date orderDate;
    
    private Table table;
    private Dish dish;
    private int dishAmount;
    private Drink drink;
    private int drinkAmount; 
    private Status status;
    private int statusNumber;
    
    public Order(Table table, Dish dish, Status status){
        createOrder(table, dish, null, status);
    }
    
    public Order(Table table, Dish dish, Drink drink, Status status){
        createOrder(table, dish, drink, status);
    }
    
    public Order(Table table, Drink drink, Dish dish, Status status){
        createOrder(table, dish, drink, status);
    }
    
    public Order(Table table, Drink drink, Status status){
        createOrder(table, null, drink, status);
    }
    
    private void createOrder(Table table, Dish dish, Drink drink, Status status){
        this.table = table;
        this.drink = drink;
        this.dish = dish;
        this.status = status;
        
    }
    
    public void writeToDatabase(){
        OrderDAO dao = new OrderDAO();
        dao.writeToDB(this);
    }
    
    public Table getTable()
    {
        return table;
    }
    
    public Dish getDish()
    {
        return dish;
    }
    
    public Drink getDrink()
    {
        return drink;
    }
    
    public Date getDate()
    {
        return orderDate;
    }
    
    public int getDishAmount(){
        return dishAmount;
    }
    
    public void setDishAmount(int amount){
        this.dishAmount = amount;
    }
    
    public void setDrinkAmount(int amount){
        this.drinkAmount = amount;
    }
    
    public int getDrinkAmount(){
        return drinkAmount;
    }
  
    public int getStatusNumber() {
        return statusNumber;
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
