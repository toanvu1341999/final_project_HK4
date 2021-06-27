/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Other;
import java.util.List;

/**
 *
 * @author Toan
 */
public interface IOrther {
     List<Other> findAll();
    
    Other findOne(int id);
     Other save(Other other);

    public void DeleteById(Other other);
  
}
