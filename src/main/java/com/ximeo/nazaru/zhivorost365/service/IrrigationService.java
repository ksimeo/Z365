package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Irrigation;

import java.util.List;

public interface IrrigationService {

    List<Irrigation> getAll();
    Irrigation getById(long id);
    void addOne(Irrigation irr);
    void delOne(Long id);
}
