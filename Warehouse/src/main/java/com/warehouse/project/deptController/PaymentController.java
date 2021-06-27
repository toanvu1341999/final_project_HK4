/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.deptController;

import com.warehouse.project.model.Debt;
import com.warehouse.project.model.Other;
import com.warehouse.project.model.Payment;
import com.warehouse.project.service.debpt.IPayment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Toan
 */
@Controller
@RequestMapping("/payment")
public class PaymentController {
    @Autowired
    IPayment service;
    
    @RequestMapping("/list")
    public String index(Model model) {
        model.addAttribute("paymentlist", service.findAll());
        return "payment/index";
    }
    @RequestMapping(value = "/doCreate", method = RequestMethod.GET)
    public String doCreate(Model model, Payment payment) {
        payment = new Payment();
        model.addAttribute("toancreate", payment);
        return "/payment/create";
    }

    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String Create(Model model, Payment re) {
        service.save(re);
        return "redirect:/payment/list";
    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, Model model) {
        Payment re = service.findOne(id);
        if (re != null) {
            service.DeleteById(re);
            return "redirect:/payment/list";
        } else {
          
            model.addAttribute("paymentlist", new Other());
            return "/delete";
        }                   
    }
    
    @RequestMapping(value = "/{id}",
            method = RequestMethod.GET, //
            produces = {MediaType.APPLICATION_JSON_VALUE, //
                MediaType.APPLICATION_XML_VALUE})
    @ResponseBody
    public Payment listGoods(@PathVariable("id") int id) {

        return service.findOne(id);
    }
     @ResponseBody
    @RequestMapping(value = "/edit", method = RequestMethod.POST)

    public Payment edit(@RequestParam("haid") String id, @RequestParam("object") String name, @RequestParam("price") String price,
            @RequestParam("explain") String explain, @RequestParam("date") String date,
            @RequestParam("major") String major, @RequestParam("submitter") String submitter,
            @RequestParam("address") String address, @RequestParam("voter") String voter) {
        System.out.println(id);
        Payment re = service.findOne(Integer.valueOf(id));
        if (re != null) {
            re.setObject(name);
            re.setAddress(address);
            re.setDate(date);
            re.setExplain(explain);
            re.setPrice(Integer.parseInt(price));
            re.setSubmitter(submitter);
            re.setMajor(major);
            re.setVoter(voter);
            return service.save(re);
        } else {

            //nodothing 
            return null;
        }

    }
    
}
