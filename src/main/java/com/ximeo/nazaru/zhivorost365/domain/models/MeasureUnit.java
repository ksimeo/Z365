package com.ximeo.nazaru.zhivorost365.domain.models;

public enum MeasureUnit {
    LITER("liter"), CUBIC_METER("cubic_meter"), GALLON("gallon"), CANISTER("canister"), BARREL("barrel"), PIECE("piece");

    private String name;

    MeasureUnit(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}
