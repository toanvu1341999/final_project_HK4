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
 * @author trung
 */
public interface ICouponPay {
     List<CouponPay> findAll();
    
    CouponPay findOne(int id);
     void create(CouponPay coupon);

    public void DeleteById(CouponPay coupon);
    void save(CouponPay coupon);
}
