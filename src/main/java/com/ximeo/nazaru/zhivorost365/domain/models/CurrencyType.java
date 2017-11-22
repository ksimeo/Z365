package com.ximeo.nazaru.zhivorost365.domain.models;

import java.io.Serializable;

public enum CurrencyType implements Serializable {
    UAH("UAH", '₴'), USD("USD", '$'), EUR("EUR", '€'), GBP("GBP", '£'), CHF("CHF", '₣'), JPY("JPY",'¥'),
    RUR("RUR", '\u20BD');

    String name;
    char c;

    CurrencyType(String name, char c) {
        this.name = name;
        this.c = c;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setC(char c) {
        this.c = c;
    }

    public char getC() {
        return c;
    }

}
