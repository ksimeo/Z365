package com.ximeo.nazaru.zhivorost365.dao;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<Order, Long> {
}
