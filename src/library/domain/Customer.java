/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package library.domain;

import java.util.ArrayList;

/**
 *
 * @author ppthgast
 */

public class Customer {

    private String firstname;
    private String lastname;
    
    private ArrayList<Invoice> invoices;
    private ArrayList<Order> orders;
            
    public Customer(String firstname, String lastname)
    {
        this.firstname = firstname;
        this.lastname = lastname;
        
        invoices = new ArrayList();
        orders = new ArrayList();
    }
    
    public String getLastname()
    {
        return lastname;
    }

    public void setLastname(String lastname)
    {
        this.lastname = lastname;
    }

    public String getFirstname()
    {
        return firstname;
    }

    public void setFirstname(String firstname)
    {
        this.firstname = firstname;
    }
    
    public void setLoans(Invoice[] invoices)
    {
        removeAllInvoices();
        
        for(Invoice theInvoice: invoices)
        {
            addInvoice(theInvoice);
        }
    }
    
    public void addInvoice(Invoice invoice)
    {
        invoices.add(invoice);
    }
    
    public void removeAllInvoices()
    {
        invoices.clear();
    }
    
    public void addOrder(Order newOrder)
    {
        orders.add(newOrder);
    }
    
    public boolean remove()
    {
        // Result is always true. If we later on use a database from which
        // the member needs to be removed as well, we can return a more
        // meaningfull value.
        boolean result = true;
        
        removeAllOrders();
        
        return result;
    }
    
    private void removeAllOrders()
    {
        while(!orders.isEmpty())
        {
            Order reservation = orders.get(0);
            reservation.remove();
        }
        
        // Alternatives for this construction with the temporary copy of the
        // ArrayList field are for example:
        //
        // -- 1 --
        // Start removing the reservations starting from the END OF the list
        // moving backwards until the list is empty. Starting from the first
        // element towards the end of the list will not succeed since the
        // index values are messed up.
        //    int index = reservations.size() - 1;
        //    
        //    while(index >= 0)
        //    {
        //        reservations.r
        //        Reservation reservation = reservations.get(index);
        //        reservation.remove();
        //        
        //        index--;
        //    }
        //
        // -- 2 --
        //
        //    ArrayList<Reservation> tempList = new ArrayList<>(reservations);
        //      
        //    for(Reservation r: reservations)
        //    {
        //        r.remove();
        //    }
        //
        // This defenitely needs clarification. Using a for each or iterator
        // on a list, has the limitation that deletion of elements from that
        // list is not allowed. Therefore a new ArrayList object is created,
        // referring to the same Reservation objects as the reservations field.
        // The local variable tempList is not modified during execution of the
        // loop. The reservations field on the other hand is.
    }
    
    public boolean hasInvoices()
    {
        return !invoices.isEmpty();
    }
    
    public boolean hasOrders()
    {
        return !orders.isEmpty();
    }
    
    public boolean isRemovable()
    {
        return !hasInvoices() && !hasOrders();
    }
    
    public void removeReservation(Order reservation)
    {
        orders.remove(reservation);
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
            if(o instanceof Customer)
            {
                Customer l = (Customer)o;
                
                // Boek wordt geidentificeerd door ISBN, dus alleen hierop
                // controlleren is voldoend.
                equal = this.firstname == l.firstname && this.lastname == l.lastname;
            }
        }
        
        return equal;
    }
    
    @Override
    public int hashCode()
    {
        // Deze implementatie is gebaseerd op de best practice zoals beschreven
        // in Effective Java, 2nd edition, Joshua Bloch.
        
        // membershipNumber is uniek, dus voldoende als hashcode.
        return this.hashCode();
    }
}
