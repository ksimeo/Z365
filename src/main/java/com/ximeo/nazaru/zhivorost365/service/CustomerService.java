package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Customer;

import java.util.List;

public interface CustomerService {

    Customer getById(String phone);
    List<Customer> getAll();
    void delCustomer(String phone);
}
