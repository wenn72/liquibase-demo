package com.example.demo.Mapper;

import com.example.demo.Core.User;
import org.apache.ibatis.annotations.*;

@Mapper
public interface UserMapper {


    @Select("SELECT * FROM users WHERE id = #{id}")
    @Results(id="userMap", value= {
            @Result(column = "id", property = "id", id = true),
            @Result(column = "user_name", property = "userName"),
            @Result(column = "create_time", property = "createTime")
    })
    User findUserById(@Param("id") Integer id);
}
