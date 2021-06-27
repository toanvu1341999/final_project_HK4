/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.controller.dept;

import com.warehouse.project.model.CouponPay;
import com.warehouse.project.model.Receipts;
import com.warehouse.project.service.debpt.ICouponPay;
import com.warehouse.project.service.debpt.IReceipts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Toan
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
    
   @Autowired
    ICouponPay service;
    
    @RequestMapping("/list")
    public String index(Model model) {
        model.addAttribute("listdept",service.findAll() );
        return "dept/index";
    }
    @RequestMapping(value = "/doCreate", method = RequestMethod.GET)
    public String doCreate(Model model, CouponPay re) {
        re = new CouponPay();
        model.addAttribute("toancreatede", re);
        return "dept/create";
    }

    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String Create(Model model, CouponPay re) {
        service.create(re);
        return "redirect:/dept/list";
    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, Model model) {
        CouponPay re = service.findOne(id);
        if (re != null) {
            service.DeleteById(re);
            return "redirect:/dept/list";
        } else {
          
            model.addAttribute("listdept", new Receipts());
            return "delete";
        }                   
    }
    
    @RequestMapping(value = "/doEdit/{id}", method=RequestMethod.GET)
    public String doEdit(@PathVariable("id") int id, Model model){
        CouponPay c = service.findOne(id);
        model.addAttribute("de", c);
        return "dept/edit";
    }
    
    @RequestMapping(value = "/edit", method=RequestMethod.POST)
    public String edit(CouponPay coupon, Model model){
        service.save(coupon);
        model.addAttribute("listdept", service.findAll());
        return "dept/index";
    }
    
}
