package com.ximeo.nazaru.zhivorost365.domain.models;

import java.io.Serializable;

public enum MeasureUnit implements Serializable {

    LITER("liter"), CUBIC_METER("cubic_meter"), GALLON("gallon"), CANISTER("canister"), BARREL("barrel"), PIECE("piece");

    public String name;

    MeasureUnit(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}
