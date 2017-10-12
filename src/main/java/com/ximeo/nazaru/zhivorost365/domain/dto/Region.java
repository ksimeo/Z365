package com.ximeo.nazaru.zhivorost365.domain.dto;

public class Region {
    private static int currID = 1;
    private int id;
    private String name;

    public Region() {
        //NOP
    }

    public Region(String name) {
        this.id = currID++;
        this.name = name;
    }

    public static int getCurrID() {
        return currID;
    }

    public static void setCurrID(int currID) {
        Region.currID = currID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}