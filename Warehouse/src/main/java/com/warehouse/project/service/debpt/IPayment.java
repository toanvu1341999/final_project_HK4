/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Payment;
import java.util.List;

/**
 *
 * @author Toan
 */
public interface IPayment {
     List<Payment> findAll();
    
    Payment findOne(int id);
     Payment save(Payment payment);

    public void DeleteById(Payment other);
}
