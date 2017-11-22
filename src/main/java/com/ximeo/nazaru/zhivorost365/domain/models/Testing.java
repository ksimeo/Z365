package com.ximeo.nazaru.zhivorost365.domain.models;

public class Testing {

    public static void main(String[] args) {
        try {
            Class.forName("org.jadira.usertype.dateandtime.joda.PersistentDateTime");
        } catch (ClassNotFoundException ex) {
            System.err.println("Не удается!");
        }
    }
}
