/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Suplierpay;
import com.warehouse.project.responsitory.depbt.SupplierPayRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class SuplierpayService implements ISuplierpay{
    @Autowired
    SupplierPayRepository repository;
    @Override
    public List<Suplierpay> findAll() {
        return repository.findAll();
    }

    @Override
    public Suplierpay findOne(int id) {
        return repository.findById(id);
    }

    @Override
    public void save(Suplierpay sup) {
        repository.save(sup);
    }

    @Override
    public void DeleteById(Suplierpay sup) {
        repository.delete(sup);
    }
    
}
