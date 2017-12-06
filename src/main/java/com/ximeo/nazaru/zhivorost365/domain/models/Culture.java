package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="culture")
public class Culture implements Serializable {
    private Long id;
    private String name;
    private float coefficient;
    private int version;

    public Culture() {
        //NOP
    }

    public Culture(String name, float coefficient) {
        this.name = name;
        this.coefficient = coefficient;
    }

    @Transient
    public boolean isNew() {
        return (this.id == null || this.id == 0);
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "COEFFICIENT")
    public float getCoefficient() {
        return coefficient;
    }

    public void setCoefficient(float coefficient) {
        this.coefficient = coefficient;
    }

    @Version
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return "Culture{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", coefficient=" + coefficient +
                '}';
    }
}