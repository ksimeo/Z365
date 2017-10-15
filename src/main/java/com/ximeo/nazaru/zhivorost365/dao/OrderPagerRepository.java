package com.ximeo.nazaru.zhivorost365.dao;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface OrderPagerRepository extends PagingAndSortingRepository<Order, Long> {
}
