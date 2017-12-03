package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.dao.CulturesRepository;
import com.ximeo.nazaru.zhivorost365.domain.models.Culture;
import com.ximeo.nazaru.zhivorost365.service.CultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
@Service("cultServ")
public class CultureServiceImpl implements CultureService {

    private CulturesRepository cultRepo;

    @Override
    public void addCulture(Culture culture) {
        cultRepo.save(culture);
    }

    @Transactional(readOnly = true)
    @Override
    public Culture getCulture(long id) {
        return cultRepo.findOne(id);
    }

    @Transactional(readOnly = true)
    @Override
    public List<Culture> getCultures() {
        return Lists.newArrayList(cultRepo.findAll());
    }

    @Override
    public void delCulture(long id) {
        cultRepo.delete(id);
    }

    @Autowired
    public void setCultRepo(CulturesRepository cultRepo) {
        this.cultRepo = cultRepo;
    }
}