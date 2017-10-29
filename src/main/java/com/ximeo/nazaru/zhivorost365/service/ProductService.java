package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Product;

import java.util.List;

public interface ProductService {

    void addProduct(Product prod);
    List<Product> getAll();
    Product getById(long id);
    void delProduct(Long id);
}
