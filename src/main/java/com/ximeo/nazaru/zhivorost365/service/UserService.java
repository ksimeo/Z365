package com.ximeo.nazaru.zhivorost365.service;

import com.ximeo.nazaru.zhivorost365.domain.models.User;

import java.util.List;

public interface UserService {

    void addUser(User usr);
    User getUser(long id);
    List<User> getAllUsers();
    void delUser(long id);
}
