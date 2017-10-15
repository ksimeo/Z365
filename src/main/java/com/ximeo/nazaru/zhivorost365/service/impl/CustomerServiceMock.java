package com.ximeo.nazaru.zhivorost365.service.impl;

import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceMock implements CustomerService {

//    private CustomerRepository custRepo;

    @Override
    public Customer getById(String phone) {
//        custRepo.findOne(phone);
        if (("+380938181491").equals(phone)) return new Customer("+380938181491", "Максим", "Федоренко",
                "maksym.fedorenko@gmail.com");
        return null;
    }

    @Override
    public List<Customer> getAll() {
        return null;
    }

    @Override
    public void delCustomer(String phone) {

    }

    //    @Resource
//    public void setCustRepo(CustomerRepository custRepo) {
//        this.custRepo = custRepo;
//    }
}
