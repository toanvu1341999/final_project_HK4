/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Payment;
import com.warehouse.project.responsitory.depbt.PaymentRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class PaymentService implements IPayment{
    @Autowired
    PaymentRepository repository;
    
    @Override
    public List<Payment> findAll() {
        return repository.findAll();
    }

    @Override
    public Payment findOne(int id) {
        return repository.findById(id);
    }

    @Override
    public Payment save(Payment payment) {
       return repository.save(payment);
    }

    @Override
    public void DeleteById(Payment other) {
        repository.delete(other);
    }
    
}
