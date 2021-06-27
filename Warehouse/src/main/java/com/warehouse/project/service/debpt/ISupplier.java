/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.CouponPay;
import java.util.List;

/**
 *
 * @author Toan
 */
public interface ISupplier {
     List<CouponPay> findAll();
    
    CouponPay findOne(int id);

    public void DeleteById(CouponPay coupon);
    void save(CouponPay coupon);
}
