package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.dao.OrderRepository;
import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//@Service
// ("ordServ")
//@Repository
//@Transactional
public class OrderServiceImpl implements OrderService {

    private OrderRepository ordDAO;

    @Override
    public void addOrder(Order order) {
        ordDAO.save(order);
    }

    @Override
    @Transactional(readOnly = true)
    public Order getOrder(Long id) {
        return ordDAO.findOne(id);
    }

    @Override
    public List<Order> getOrders() {
        return Lists.newArrayList(ordDAO.findAll());
    }

    @Override
    public void delOrder(Long id) {
        ordDAO.delete(id);
    }

    @Override
    public Page<Order> getOrderPage(Pageable pageable) {
        return null;
    }

    @Autowired
    public void setOrdDAO(OrderRepository ordDAO) {
        this.ordDAO = ordDAO;
    }
}