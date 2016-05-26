/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package businesslogic;

import datastorage.OrderDAO;
import datastorage.TableDAO;
import domain.Table;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Sean
 */
public class TestOrderManager extends OrderManager{
    
    public TestOrderManager(OrderDAO daoOrder, TableDAO daoTable) {
        super(daoOrder, daoTable);
        fillTestData();
    }
    
    
    private void fillTestData()
    {
        List<Table> tables = super.getTables();
        tables.add(new Table(1));
        tables.add(new Table(2));
        tables.add(new Table(3));
        tables.add(new Table(4));
        tables.add(new Table(5));
        tables.add(new Table(6));
        
        for(Table table : tables)
            super.getTableDAO().add(table);
    }
}
    