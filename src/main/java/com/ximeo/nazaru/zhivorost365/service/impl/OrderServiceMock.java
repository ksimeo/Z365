package com.ximeo.nazaru.zhivorost365.service.impl;

import com.ximeo.nazaru.zhivorost365.domain.models.Customer;
import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import com.ximeo.nazaru.zhivorost365.domain.models.Product;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.ArrayList;
import java.util.List;

//@Service
public class OrderServiceMock implements OrderService {

    private List<Order> orders;

    public OrderServiceMock() {
        orders = new ArrayList<>(5);
        Customer cust1 = new Customer("+380997510598", "Алексей", "Эм", "ksimeo@gmail.com");
        Customer cust2 = new Customer("+380938181491", "Евгений", "Поляков", "evg@mail.ru");
        Customer cust3 = new Customer("+380657550989", "Михаил", "Мудаков", "mih@hotmail.com");
        Customer cust4 = new Customer("+380503222345", "Стас", "Попов", "s.popov@yandex.ua");
        Product prod1 = new Product(1L, "Продукт типа 1");
        Product prod2 = new Product(2L, "Продукт типа 2");
//        orders.add(new Order(cust1, prod1, 23));
//        orders.add(new Order(cust2, prod2, 4));
//        orders.add(new Order(cust3, prod1, 5));
//        orders.add(new Order(cust4,prod2, 16));
    }

    @Override
    public void addOrder(Order order) {
        orders.add(order);
    }

    @Override
    public Order getOrder(Long id) {
        return orders.get((int) id.longValue() - 1);
    }

    @Override
    public List<Order> getOrders() {
        return orders;
    }

    @Override
    public void delOrder(Long id) {
        orders.remove((int) id.longValue() - 1);
    }

    @Override
    public Page<Order> getOrderPage(Pageable pageable) {
        return null;
    }
}