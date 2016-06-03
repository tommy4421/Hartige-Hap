package domain;

import java.util.ArrayList;

/**
 *
 * @author Tom Maljaars 
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
        // Database configuration (int)
        //0. Niet besteld
        //1. Besteld
        //3. Wordt bereid
        //4. Wordt opgediend
        //5. Opgediend
        
        String status;
        switch (statusNumber) {
            case 1:  status = "Besteld";
                     break;
            case 2:  status = "Wordt bereid";
                     break;
            case 3:  status = "Wordt opgediend";
                     break;
            case 4:  status = "Opgediend";
                     break;
            case 5:  status = "Betaald";
                     break;
            default: status = "Niet besteld";
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
