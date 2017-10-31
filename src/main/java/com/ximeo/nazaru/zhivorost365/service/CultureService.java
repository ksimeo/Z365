package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.Culture;

import java.util.List;

public interface CultureService {

    void addCulture(Culture culture);
    Culture getCulture(long id);
    List<Culture> getCultures();
    void delCulture(long id);
}
