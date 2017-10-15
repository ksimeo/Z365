package com.ximeo.nazaru.zhivorost365.domain.models;

public enum UserRole {
    GUEST("guest"), USER("user"), ADMIN("admin");
    String name;

    UserRole(String name) {
        this.name = name;
    }
}
