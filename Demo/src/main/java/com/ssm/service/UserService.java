package com.ssm.service;

import com.ssm.pojo.User;

import java.util.List;

public interface UserService {
    /**
     * 查询
     * @return
     */
    List<User> getAll();

    /**
     * 插入
     */
    void insertUser(User user);

    /***
     * 编辑
     */
    User editUser(User user);

    void  saveUser(User user);
    boolean updateUser(User user);

    boolean deleteUser(int id);

    User findUserById(int id);

    List<User> findAll();

    User selectUserByLoginname(String loginname);
}
