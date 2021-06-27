/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.responsitory.depbt;

import com.warehouse.project.model.Suplierpay;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Toan
 */
public interface SupplierPayRepository extends JpaRepository<Suplierpay, Integer> {
    Suplierpay findById(int id);
}
