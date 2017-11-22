package com.ximeo.nazaru.zhivorost365.domain.dto;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;

import java.io.Serializable;
import java.util.List;

public class OrderGrid implements Serializable {

    private static final long serialVersionUID = 8850103369822543009L;
    private int totalPages;
    private int currentPage;
    private long totalRecords;
    private List<Order> orderData;

    public OrderGrid() {
        //NOP
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public long getTotalRecords() {
        return totalRecords;
    }

    public void setTotalRecords(long totalRecords) {
        this.totalRecords = totalRecords;
    }

    public List<Order> getOrderData() {
        return orderData;
    }

    public void setOrderData(List<Order> orderData) {
        this.orderData = orderData;
    }

    @Override
    public String toString() {
        return "OrderGrid{" +
                "totalPages=" + totalPages +
                ", currentPage=" + currentPage +
                ", totalRecords=" + totalRecords +
                ", orderData=" + orderData +
                '}';
    }
}