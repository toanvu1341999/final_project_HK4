/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Customer;
import com.warehouse.project.model.Debt;
import com.warehouse.project.responsitory.depbt.CustomerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class CustomerService implements ICustomer{
    @Autowired
    CustomerRepository repository;
    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public Customer findOne(String id) {
                  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override
    public Customer save(Debt debt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void DeleteById(Customer debt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     
}
