package com.example.demo.Service;

import com.example.demo.Core.User;
import com.example.demo.Core.UserResp;
import com.example.demo.Mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;

    @Autowired
    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public UserResp findUserById(Integer id) {
        User user = userMapper.findUserById(id);
        if (user == null) {
            return new UserResp();
        }
        return new UserResp(userMapper.findUserById(id));
    }
}
