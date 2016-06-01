/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.util.ArrayList;

/**
 *
 * @author ppthgast
 */
public class Consumption {
    
    int consumtionName;
    String consumtionTitle;
    int price;
    // hallo ik ben sean
    
    public Consumption(int consumtionName, String consumtionTitle, int price)
    {
        this.consumtionName = consumtionName;
        this.consumtionTitle = consumtionTitle;
        this.price = price;
    }

    public int getConsumtionNumber()
    {
        return consumtionName;
    }

    public String getConsumtionTitle()
    {
        return consumtionTitle;
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
            if(o instanceof Consumption)
            {
                Consumption b = (Consumption)o;
                
                // Book wordt geidentificeerd door ISBN, dus alleen hierop
                // controlleren is voldoend.
                equal = this.consumtionName == b.consumtionName;
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
        return consumtionName;
    }
}
