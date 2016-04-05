/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package library.businesslogic;

import java.util.ArrayList;
import java.util.HashMap;
import library.datastorage.LoanDAO;
import library.datastorage.MemberDAO;
import library.domain.Loan;
import library.domain.Customer;
import library.domain.Dish;
import library.domain.Order;

/**
 *
 * @author ppthgast
 */
public class OrderManager {
    
    private HashMap<Integer, Customer> members;
    
    public OrderManager()
    {
        members = new HashMap();
        
        //fillTestData();
    }

    private void fillTestData()
    {
        members.put(1000, new Customer(1000, "Pascal", "van Gastel"));
        members.put(1001, new Customer(1001, "Erco", "Argante"));
        members.put(1002, new Customer(1002, "Marice", "Bastiaense"));
        members.put(1004, new Customer(1004, "Floor", "van Gastel"));
        members.put(1005, new Customer(1005, "Jet", "van Gastel"));
        members.put(1006, new Customer(1006, "Marin", "van Gastel"));
    }
    
    public Order placeOrder(Customer customer, Dish dish){
        return new Order(customer, dish);
    }
    
    public Customer findMember(int membershipNumber)
    {
        Customer member = members.get(membershipNumber);
        
        if(member == null)
        {
            // Member may not have been loaded from the database yet. Try to
            // do so.
            MemberDAO memberDAO = new MemberDAO();
            member = memberDAO.findMember(membershipNumber);
            
            if(member != null)
            {
                // Member successfully read. Now read its loans.
                LoanDAO loanDAO = new LoanDAO();
                ArrayList<Loan> loans = loanDAO.findLoans(member);

                for(Loan loan: loans)
                {
                    member.addLoan(loan);
                }
                
                // Cache the member that has been read from the database, to
                // avoid querying the database each time a member is needed.
                members.put(membershipNumber, member);
            }
        }

        return member;
    }
    
    public boolean removeMember(Customer member)
    {
        boolean result = false;
        
        if(member.isRemovable())
        {
            int membershipNumber = member.getMembershipNumber();
                    
            // Let the member remove itself as a domain object. Do this before
            // removing from the database. In case something goes wrong, we
            // still have the data in the database. If first the member was
            // removed from the database, we might end up in an inconsistent
            // state.
            result = member.remove();
            
            if(result)
            {
                // Let the member remove itself from the database.
                MemberDAO memberDAO = new MemberDAO();
                result = memberDAO.removeMember(member);
                
                // In case something goes wrong here, we need to roll back.
                // But that's too much for this version of the POC.
            }
            
            // Finally, remove the member from the map in this manager.
            members.remove(membershipNumber);
        }
        else
        {
            result = false;
        }
        
        return result;
    }
}
