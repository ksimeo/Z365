package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.Column;
import java.io.Serializable;

//@Entity
//@Table(name="customer")
public class Customer implements Serializable {
    private String phoneNumber;
    private String name;
    private String surname;

    public Customer() {
        //NOP
    }

    public Customer(String phoneNumber, String name, String surname) {
        this.phoneNumber = phoneNumber;
        this.name = name;
        this.surname = surname;
    }

    @Column(name = "phone_number")
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Column
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "phoneNumber='" + phoneNumber + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                '}';
    }
}