/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Debt;
import com.warehouse.project.model.Other;
import com.warehouse.project.responsitory.depbt.OtherRepository;
import com.warehouse.project.responsitory.depbt.debtRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class DebtService implements IDebt {

    @Autowired
    debtRepository repository;

    @Override
    public List<Debt> findAll() {
        return repository.findAll();
    }

    @Override
    public Debt findOne(int id) {
        return repository.findById(id);
    }

    @Override
    public Debt save(Debt debt) {
        return repository.save(debt);
    }

    @Override
    public void DeleteById(Debt debt) {
        repository.delete(debt);
    }
}
