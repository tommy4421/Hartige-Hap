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

public class Table {

    private int tableNumber;
    
    public Table(int tableNumber)
    {
        this.tableNumber = tableNumber;
    }
    
    public int getTableNumber()
    {
        return tableNumber;
    }


    public void setTableNumber(int tableNumber)
    {
        this.tableNumber = tableNumber;
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
            if(o instanceof Table)
            {
                Table l = (Table)o;
                
                // Boek wordt geidentificeerd door ISBN, dus alleen hierop
                // controlleren is voldoend.
                equal = this.tableNumber == l.tableNumber;
            }
        }
        
        return equal;
    }
    
}
