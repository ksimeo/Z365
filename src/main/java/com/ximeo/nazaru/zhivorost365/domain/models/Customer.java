package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="customer")
public class Customer implements Serializable {
    private static final long serialVersionUID = 2784499156417061453L;

    private String phoneNumber;
    private String name;
    private String surname;
    private String email;
    private Date regDate;
//    private Date lastDate;
    private Set<Order> orders = new HashSet<>();
    private int version;

    public Customer() {
        //NOP
    }

    public Customer(String phoneNumber, String name, String surname, String email) {
        this.phoneNumber = phoneNumber;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.regDate = new Date();
    }

    @Id
    @Column(name = "PHONE_NUMBER")
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "SURNAME")
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Column(name = "EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL, orphanRemoval = true)
    public Set<Order> getOrders() {
        return orders;
    }

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

    public void addOrder(Order order) {
        order.setCustomer(this);
        getOrders().add(order);
    }

    public void removeOrder(Order order) {
        getOrders().remove(order);
    }

    @Column(name = "REG_DATE")
    @Temporal(TemporalType.DATE)
    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    @Version
    @Column(name = "VERSION")
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

//
//    @Column(name = "LAST_DATE")
//    public Date getLastDate() {
//        return lastDate;
//    }
//
//    public void setLastDate(Date lastDate) {
//        this.lastDate = lastDate;
//    }


    @Override
    public String toString() {
        return "Customer{" +
                "phoneNumber='" + phoneNumber + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", regDate=" + regDate +
                ", orders=" + orders +
                ", version=" + version +
                '}';
    }
}