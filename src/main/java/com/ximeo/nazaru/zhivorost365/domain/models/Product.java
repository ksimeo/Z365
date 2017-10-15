package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

//@Entity
//@Table(name = "products")
public class Product implements Serializable {
    private static final long serialVersionUID = -5579174309345318350L;

    private Long id;
    private String name;
    private BigDecimal price;
    private CurrencyType currency;
    private MeasureUnit units;
    private List<Order> orders;
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

    public Product(Long id, String name, BigDecimal price, boolean actual) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.actual = actual;
    }

    public Product(String name, BigDecimal price, CurrencyType currency, MeasureUnit units) {
        this.name = name;
        this.price = price;
        this.currency = currency;
        this.units = units;
    }

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Column
    public CurrencyType getCurrency() {
        return currency;
    }

    public void setCurrency(CurrencyType currency) {
        this.currency = currency;
    }

    @Column(name = "measure_units")
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

    @OneToMany(mappedBy = "product")
    @Column
    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    @Column
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