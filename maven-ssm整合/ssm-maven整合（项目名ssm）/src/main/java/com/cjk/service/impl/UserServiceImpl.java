package com.cjk.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjk.bean.User;
import com.cjk.dao.UserMapper;
import com.cjk.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
    
    @Autowired
    private UserMapper userDao;
    
    @Override
    public User getUserById(int userId) {

        return this.userDao.selectByPrimaryKey(userId);

    }

}