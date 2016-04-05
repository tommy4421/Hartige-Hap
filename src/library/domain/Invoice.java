/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package library.domain;

/**
 *
 * @author ppthgast
 */
public class Invoice {
    
    private Customer customer;
    private int amount;
    
    public Invoice(Customer customer, int amount)
    {
        customer.addInvoice(this);
        this.amount = amount;
    }
    
    public int getAmount()
    {
        return amount;
    }
}
