/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Customer;
import com.warehouse.project.model.Debt;
import java.util.List;

/**
 *
 * @author Toan
 */
public interface ICustomer {
    List<Customer> findAll();
    
    Customer findOne(String id);
     Customer save(Debt debt);

    public void DeleteById(Customer debt);
}
