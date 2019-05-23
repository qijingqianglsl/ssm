package com.ssm.mapper;

import com.ssm.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /**
     * 查询
     * @return
     */
    List<User> getAll();

    /**
     * 插入
     * @param user
     */
    void saveUser(User user);
    /***
     * 编辑
     */
    User editUser(User user);

    User findUserById(int id);

    List<User> findAll();

    boolean updateUser(User user);

    boolean deleteUser(int id);

    public User selectUserByLoginname(String loginname);
}
