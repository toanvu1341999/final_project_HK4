/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.service.debpt;

import com.warehouse.project.model.CouponPay;
import com.warehouse.project.responsitory.depbt.DeptRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Toan
 */
@Service
public class DeptService implements ICouponPay{
    @Autowired
    DeptRepository repository;
    
    @Override
    public List<CouponPay> findAll() {
        return repository.findAll();
    }

   

    @Override
    public void create(CouponPay coupon) {
        repository.save(coupon);
    }

    @Override
    public void DeleteById(CouponPay coupon) {
        repository.delete(coupon);
    }

    @Override
    public void save(CouponPay coupon) {
        repository.save(coupon);
    }

    @Override
    public CouponPay findOne(int id) {
      return  repository.findById(id);
    }

   
    
}
