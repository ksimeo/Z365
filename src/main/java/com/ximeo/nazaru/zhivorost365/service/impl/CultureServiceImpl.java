package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.domain.models.Culture;
import com.ximeo.nazaru.zhivorost365.service.CultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Service("cultServ")
public class CultureServiceImpl implements CultureService {

    private CultureService cultServ;

    @Override
    public void addCulture(Culture culture) {
        cultServ.addCulture(culture);
    }

    @Override
    public Culture getCulture(long id) {
        return cultServ.getCulture(id);
    }

    @Override
    public List<Culture> getCultures() {
        return Lists.newArrayList(cultServ.getCultures());
    }

    @Override
    public void delCulture(long id) {
        cultServ.delCulture(id);
    }

    @Autowired
    public void setCultServ(CultureService cultServ) {
        this.cultServ = cultServ;
    }
}