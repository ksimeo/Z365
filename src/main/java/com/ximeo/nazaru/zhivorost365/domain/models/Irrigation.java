package com.ximeo.nazaru.zhivorost365.domain.models;

import javax.persistence.*;

@Entity
@Table(name = "irrigation")
public class Irrigation {
    private Long id;
    private String name;
    private float coefficient;
    private int version;

    public Irrigation() {
        //NOP
    }

    @Transient
    public boolean isNew() {
        return (this.id == null || this.id == 0);
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column
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
        return "Irrigation{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", coefficient=" + coefficient +
                '}';
    }
}