package com.ximeo.nazaru.zhivorost365.service.impl;

import com.google.common.collect.Lists;
import com.ximeo.nazaru.zhivorost365.dao.UserRepository;
import com.ximeo.nazaru.zhivorost365.domain.models.User;
import com.ximeo.nazaru.zhivorost365.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("usrServ")
@Repository
@Transactional
public class UserServiceImpl implements UserService {

    private UserRepository usrRepo;

    @Override
    public void addUser(User usr) {
        usrRepo.save(usr);
    }

    @Override
    @Transactional(readOnly = true)
    public User getUser(long id) {
        return usrRepo.findOne(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> getAllUsers() {
        return Lists.newArrayList(usrRepo.findAll());
    }

    @Override
    public void delUser(long id) {
        usrRepo.delete(id);
    }

    @Autowired
    public void setUsrRepo(UserRepository usrRepo) {
        this.usrRepo = usrRepo;
    }
}