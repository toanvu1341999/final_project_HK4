/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.responsitory.depbt;

import com.warehouse.project.model.CouponPay;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Toan
 */
public interface SupplierRepository extends JpaRepository<CouponPay, Integer> {
     CouponPay findById(int id);
}
