package com.ximeo.nazaru.zhivorost365.service.impl;

import com.ximeo.nazaru.zhivorost365.domain.models.Product;
import com.ximeo.nazaru.zhivorost365.service.ProductService;

import java.util.ArrayList;
import java.util.List;

//@Service
public class ProductServiceMock implements ProductService {
    public List<Product> products;


    public ProductServiceMock() {
        products = new ArrayList<>(2);
        products.add(new Product(1L, "Продукт типа 1"));
        products.add(new Product(2L, "Продукт типа 2"));
    }

    @Override
    public Product getById(long id) {
        return products.get((int)id);
    }

    @Override
    public void addProduct(Product prod) {
        products.add(prod);
    }

    @Override
    public List<Product> getAll() {
        return products;
    }

    @Override
    public void delProduct(Long id) {
        products.remove(id - 1);
    }
}