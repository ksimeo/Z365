package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface OrderService {
    void addOrder(Order order);
    Order getOrder(Long id);
    List<Order> getOrders();
    void delOrder(Long id);
    Page<Order> getOrderPage(Pageable pageable);
}
