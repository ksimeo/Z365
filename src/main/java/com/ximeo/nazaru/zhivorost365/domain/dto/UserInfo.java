package com.ximeo.nazaru.zhivorost365.domain.dto;

import java.io.Serializable;

public class UserInfo implements Serializable {
    String name;
    String surname;
    String email;
    String region;

    public UserInfo() {
        //NOP
    }

    public UserInfo(String name, String surname, String email, String region) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.region = region;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }
}