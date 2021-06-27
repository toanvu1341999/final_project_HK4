/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.warehouse.project.responsitory.depbt;

import com.warehouse.project.model.Customer;
import javax.persistence.Id;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Toan
 */
public interface CustomerRepository extends JpaRepository<Customer, String> {
    
}
