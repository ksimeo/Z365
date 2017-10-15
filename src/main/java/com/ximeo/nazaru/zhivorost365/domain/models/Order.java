package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

//@Entity
//@Table(name = "ORDERS")
public class Order implements Serializable {
    private static final long serialVersionUID = -5484814236598120693L;

    private static Long gid = 1L;
    private Long id;
    private Customer customer;
    private Product product;
    private int amount;
    //TODO Joda Time?
    private Date createTime;
    private int version;
    private Date reviewDate;

    public Order() {
        this.createTime = new Date();
    }

    public Order(Customer customer, Product product, int amount) {
        id = gid++;
        this.customer = customer;
        this.product = product;
        this.amount = amount;
        this.createTime = new Date();
    }


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @Column
    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @Column
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Column
    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Temporal(TemporalType.DATE)
    @Column
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Version
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "review_date")
    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", customer=" + customer +
                ", product=" + product +
                ", amount=" + amount +
                ", createTime=" + createTime +
                ", version=" + version +
                '}';
    }
}