/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Other;
import com.warehouse.project.responsitory.depbt.OtherRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class OrtheService implements IOrther{
    @Autowired
    OtherRepository repository;
    
    @Override
    public List<Other> findAll() {
        return repository.findAll();
    }

    @Override
    public Other findOne(int id) {
      return  repository.findById(id);
    }

    @Override
    public Other save(Other other) {
      return  repository.save(other);
    }

    @Override
    public void DeleteById(Other other) {
        repository.delete(other);
    }
    
}
