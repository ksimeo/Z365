package com.ximeo.nazaru.zhivorost365.domain.dto;

import java.io.Serializable;

public class PhoneInfo implements Serializable {

    String parth1;
    String parth2;
    String parth3;
    String parth4;

    public PhoneInfo() {
        //NOP
    }

    public PhoneInfo(String parth1, String parth2, String parth3, String parth4) {
        this.parth1 = parth1;
        this.parth2 = parth2;
        this.parth3 = parth3;
        this.parth4 = parth4;
    }

    public String getParth1() {
        return parth1;
    }

    public void setParth1(String parth1) {
        this.parth1 = parth1;
    }

    public String getParth2() {
        return parth2;
    }

    public void setParth2(String parth2) {
        this.parth2 = parth2;
    }

    public String getParth3() {
        return parth3;
    }

    public void setParth3(String parth3) {
        this.parth3 = parth3;
    }

    public String getParth4() {
        return parth4;
    }

    public void setParth4(String parth4) {
        this.parth4 = parth4;
    }

    @Override
    public String toString() {
        return "+380" + parth1 + parth2 + parth3 + parth4;
    }
}