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
    
    int consumptionNumber;
    String consumptionTitle;
    int price;
    String consumptionType;
    Info info;
    
    public Consumption(int consumtionNumber, String consumtionTitle, int price, String type, Info consumptionInfo)
    {
        this.consumptionNumber = consumtionNumber;
        this.consumptionTitle = consumtionTitle;
        this.price = price;
        this.consumptionType = type;
        this.info = consumptionInfo;
    }
    
    public Info getInfo(){
        return info;
    }

    public int getConsumtionNumber()
    {
        return consumptionNumber;
    }

    public String getConsumtionTitle()
    {
        return consumptionTitle;
    }

    public int getPrice()
    {
        return price;
    }
    
    public String getConsumptionType(){
        return consumptionType;
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
                equal = this.consumptionNumber == b.consumptionNumber;
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
        return consumptionNumber;
    }
}
