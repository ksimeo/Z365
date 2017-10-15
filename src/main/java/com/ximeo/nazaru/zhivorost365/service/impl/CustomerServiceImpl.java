package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.dao.CustomerRepository;
import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//@Service
// ("custServ")
//@Repository
//@Transactional
public class CustomerServiceImpl implements CustomerService {

    private CustomerRepository custDAO;

    @Override
    @Transactional(readOnly = true)
    public Customer getById(String phone) {
        return custDAO.findOne(phone);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Customer> getAll() {
        return Lists.newArrayList(custDAO.findAll());
    }

    @Override
    public void delCustomer(String phone) {
        custDAO.delete(phone);
    }

    public void setCustDAO(CustomerRepository custDAO) {
        this.custDAO = custDAO;
    }
}