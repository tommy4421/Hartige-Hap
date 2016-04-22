/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hartigehap.domain;

import java.util.ArrayList;

/**
 *
 * @author ppthgast
 */
public class Dish {
    
    int dishNumber;
    String dishTitle;
    int price;
    // hallo ik ben sean
    
    public Dish(int dishNumber, String dishTitle, int price)
    {
        this.dishNumber = dishNumber;
        this.dishTitle = dishTitle;
        this.price = price;
    }

    public int getDishNumber()
    {
        return dishNumber;
    }

    public String getDishTitle()
    {
        return dishTitle;
    }

    public int getPrice()
    {
        return price;
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
            if(o instanceof Dish)
            {
                Dish b = (Dish)o;
                
                // Book wordt geidentificeerd door ISBN, dus alleen hierop
                // controlleren is voldoend.
                equal = this.dishNumber == b.dishNumber;
            }
        }
        
        return equal;
    }
    
    @Override
    public int hashCode()
    {
        // Deze implementatie is gebaseerd op de best practice zoals beschreven
        // in Effective Java, 2nd edition, Joshua Bloch.
        
        // ISBN is uniek, dus voldoende als hashcode.
        return dishNumber;
    }
}
