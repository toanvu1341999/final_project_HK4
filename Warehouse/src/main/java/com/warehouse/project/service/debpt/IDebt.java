/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Debt;
import com.warehouse.project.model.Other;
import java.util.List;

/**
 *
 * @author Toan
 */
public interface IDebt {
    List<Debt> findAll();
    
    Debt findOne(int id);
     Debt save(Debt debt);

    public void DeleteById(Debt debt);
}
