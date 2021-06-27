/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Suplierpay;
import java.util.List;

/**
 *
 * @author Toan
 */
public interface ISuplierpay {
     List<Suplierpay> findAll();
    
    Suplierpay findOne(int id);
     void save(Suplierpay sup);

    public void DeleteById(Suplierpay sup);
}
