/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Receipts;
import com.warehouse.project.responsitory.depbt.ReceiptsRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class ReceiptsService implements IReceipts{
    @Autowired
    ReceiptsRepository repository;

    @Override
    public List<Receipts> findAll() {
        return repository.findAll();
    }  

    @Override
    public Receipts findOne(int id) {
        return repository.findById(id);
    }

    @Override
    public void save(Receipts rece) {
        repository.save(rece);
    }

    @Override
    public void DeleteById(Receipts re) {
        repository.delete(re);
    }
   
}
