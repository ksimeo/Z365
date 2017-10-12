package com.ximeo.nazaru.zhivorost365.domain.dto;

import java.io.Serializable;

public class OrderInfo implements Serializable {
    int amount;
    int type;

    public OrderInfo() {
        //NOP
    }

    public OrderInfo(int amount, int type) {
        this.amount = amount;
        this.type = type;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "OrderInfo{" +
                "amount=" + amount +
                ", type=" + type +
                '}';
    }
}