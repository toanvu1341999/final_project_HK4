/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.deptController;

import com.warehouse.project.model.Suplierpay;
import com.warehouse.project.service.debpt.ISuplierpay;
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
 @RequestMapping("/suplierpay")
public class SuplierpayController {
    @Autowired
    ISuplierpay service;
    @RequestMapping("/list")
    public String index(Model model) {
        model.addAttribute("suplist", service.findAll());
        return "suplierpay/index";
    }
    @RequestMapping(value = "/doCreate", method = RequestMethod.GET)
    public String doCreate(Model model, Suplierpay debt) {
        debt = new Suplierpay();
        model.addAttribute("toancreate", debt);
        return "/suplierpay/create";
    }

    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String Create(Model model, Suplierpay re) {
        service.save(re);
        return "redirect:/suplierpay/list";
    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, Model model) {
        Suplierpay re = service.findOne(id);
        if (re != null) {
            service.DeleteById(re);
            return "redirect:/suplierpay/list";
        } else {
          
            model.addAttribute("suplist", new Suplierpay());
            return "/delete";
        }                   
    }
    
    @RequestMapping(value = "/doEdit/{id}", method=RequestMethod.GET)
    public String doEdit(@PathVariable("id") int id, Model model){
        Suplierpay c = service.findOne(id);
        model.addAttribute("de", c);
        return "/suplierpay/edit";
    }
    
    @RequestMapping(value = "/edit", method=RequestMethod.POST)
    public String edit(Suplierpay coupon, Model model){
        service.save(coupon);
        model.addAttribute("suplist", service.findAll());
        return "/suplierpay/index";
    }
    
}
