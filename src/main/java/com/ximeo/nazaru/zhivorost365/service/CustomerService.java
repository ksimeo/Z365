package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Customer;

public interface CustomerService {

    boolean isExsist(String phone);
    Customer getById(String phone);
}
