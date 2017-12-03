package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.dao.IrrigationRepository;
import com.ximeo.nazaru.zhivorost365.domain.models.Irrigation;
import com.ximeo.nazaru.zhivorost365.service.IrrigationService;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Repository
@Transactional
@Service("irrServ")
public class IrrigationServImpl implements IrrigationService {
    private IrrigationRepository irrRepo;

    @Transactional(readOnly = true)
    @Override
    public List<Irrigation> getAll() {
        return Lists.newArrayList(irrRepo.findAll());
    }

    @Transactional(readOnly = true)
    @Override
    public Irrigation getById(long id) {
        return irrRepo.findOne(id);
    }

    @Override
    public void addOne(Irrigation irr) {
        irrRepo.save(irr);
    }

    @Override
    public void delOne(Long id) {
        irrRepo.delete(id);
    }

    @Resource
    public void setIrrRepo(IrrigationRepository irrRepo) {
        this.irrRepo = irrRepo;
    }
}
