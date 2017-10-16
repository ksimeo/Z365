package com.ximeo.nazaru.zhivorost365.domain.models;

public enum UserRole {
    GUEST("Гость"), USER("Пользователь"), ADMIN("Администратор");

    String name;

    UserRole(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}