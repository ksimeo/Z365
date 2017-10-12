package com.ximeo.nazaru.zhivorost365.service.impl;

import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.service.CustomerService;
import org.springframework.stereotype.Service;

@Service
//@Repository
//@Transactional
public class CustomerServiceImpl implements CustomerService {

//    private CustomerRepository custRepo;

    @Override
    public boolean isExsist(String phone) {
        if (phone.equals("+380938181491")) return true;
        return false;
    }

    @Override
    public Customer getById(String phone) {
//        custRepo.findOne(phone);
        if (("+380938181491").equals(phone)) return new Customer("+380938181491", "Максим", "Федоренко");
        return null;
    }

//    @Resource
//    public void setCustRepo(CustomerRepository custRepo) {
//        this.custRepo = custRepo;
//    }
}
