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

public class Status {

    private int statusNumber;
     
    public Status(int statusNumber)
    {
        this.statusNumber = statusNumber;
    }
    
    public int getStatusNumber()
    {
        return statusNumber;
    }

    public void setStatusNumber(int statusNumber)
    {
        this.statusNumber = statusNumber;
    }
    
    public String translateStatusNumber(int statusNumber)
    {
        String status;
        switch (statusNumber) {
            case 1:  status = "Order ontvangen.";
                     break;
            case 2:  status = "Order wordt gereedgemaakt.";
                     break;
            case 3:  status = "Order klaargemaakt.";
                     break;
            case 4:  status = "Order afgerond.";
                     break;
            case 5:  status = "Ongeldige status";
                     break;
            case 6:  status = "Ongeldige status";
                     break;
            default: status = "Order versturen";
                     break;
        }
        return status;
    }
   
    @Override
    public int hashCode()
    {
        // Deze implementatie is gebaseerd op de best practice zoals beschreven
        // in Effective Java, 2nd edition, Joshua Bloch.
        
        return this.statusNumber;
    }
}
