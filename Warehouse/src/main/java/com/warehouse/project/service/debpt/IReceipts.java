/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.Receipts;
import java.util.List;

/**
 *
 * @author trung
 */
public interface IReceipts {
    List<Receipts> findAll();
    
    Receipts findOne(int id);
     void save(Receipts debt);
    void DeleteById(Receipts re);
}
