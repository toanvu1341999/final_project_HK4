/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.controller.dept;

import com.warehouse.project.model.Receipts;
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
@RequestMapping("/payment")
public class PaymentController {
    
    @Autowired
    IReceipts service;
    
    @RequestMapping("/list")
    public String index(Model model) {
        model.addAttribute("listreceipts",service.findAll() );
        return "payment/index";
    }
    @RequestMapping(value = "/doCreate", method = RequestMethod.GET)
    public String doCreate(Model model, Receipts re) {
        model.addAttribute("toancreate", new Receipts());
        return "payment/create";
    }

    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String Create(Model model, Receipts re) {
        service.save(re);
        return "redirect:/payment/list";
    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, Model model) {
        Receipts re = service.findOne(id);
        if (re != null) {
            service.DeleteById(re);
            return "redirect:/payment/list";
        } else {
          
            model.addAttribute("listreceipts", new Receipts());
            return "payment/delete";
        }                   
    }
    
    @RequestMapping(value = "/doEdit/{id}", method=RequestMethod.GET)
    public String doEdit(@PathVariable("id") int id, Model model){
        Receipts c = service.findOne(id);
        model.addAttribute("cs", c);
        return "payment/edit";
    }
    
    @RequestMapping(value = "/edit", method=RequestMethod.POST)
    public String edit(Receipts country, Model model){
        service.save(country);
        model.addAttribute("listreceipts", service.findAll());
        return "redirect:/payment/list";
    }
    
}
