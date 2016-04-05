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
public class Drink {
    
    int drinkNumber;
    String drinkTitle;
    int price;
    
    public Drink(int drinkNumber, String drinkTitle, int price)
    {
        this.drinkNumber = drinkNumber;
        this.drinkTitle = drinkTitle;
        this.price = price;
    }

    public int getDrinkNumber()
    {
        return drinkNumber;
    }

    public String getDrinkTitle()
    {
        return drinkTitle;
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
            if(o instanceof Drink)
            {
                Drink b = (Drink)o;
                
                // Book wordt geidentificeerd door ISBN, dus alleen hierop
                // controlleren is voldoend.
                equal = this.drinkNumber == b.drinkNumber;
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
        return drinkNumber;
    }
}
