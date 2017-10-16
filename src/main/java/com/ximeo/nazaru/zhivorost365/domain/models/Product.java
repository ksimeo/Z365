package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "product")
public class Product implements Serializable {
    private static final long serialVersionUID = -5579174309345318350L;

    private Long id;
    private String name;
    private float price;
    private CurrencyType currency;
    private MeasureUnit units;
    private Set<Order> orders = new HashSet<>();
    private boolean actual;

    private int version;

    public Product() {
        //NOP
    }

    public Product(Long id, String name) {
        this.name = name;
        this.id = id;
        this.units = MeasureUnit.CANISTER;
    }

//    public Product(Long id, String name, BigDecimal price, boolean actual) {
//        this.id = id;
//        this.name = name;
//        this.price = price;
//        this.actual = actual;
//    }


    public Product(String name, float price, CurrencyType currency, MeasureUnit units, boolean actual, int version) {
        this.name = name;
        this.price = price;
        this.currency = currency;
        this.units = units;
        this.actual = actual;
        this.version = version;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "PRICE")
    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Column(name = "CURRENCY_TYPE")
    public CurrencyType getCurrency() {
        return currency;
    }

    public void setCurrency(CurrencyType currency) {
        this.currency = currency;
    }

    @Column(name = "MEASURE_UNITS")
    public MeasureUnit getUnits() {
        return units;
    }

    public void setUnits(MeasureUnit units) {
        this.units = units;
    }

    @Version
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, orphanRemoval = true)
    public Set<Order> getOrders() {
        return orders;
    }

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

    public void addOrder(Order order) {
        order.setProduct(this);
        getOrders().add(order);
    }

    public void removeOrder(Order order) {
        getOrders().remove(order);
    }

    @Column(name = "IS_ACTUAL")
    public boolean isActual() {
        return actual;
    }

    public void setActual(boolean actual) {
        this.actual = actual;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", currency=" + currency +
                ", units=" + units +
                ", version=" + version +
                '}';
    }
}