package com.example.demo.Core;

import com.fasterxml.jackson.annotation.JsonProperty;

public class UserResp {
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    private Integer id;
    @JsonProperty("user_name")
    private String userName;
    @JsonProperty("create_time")
    private Long createTime;

    public UserResp(User user) {
        this.id = user.getId();
        this.userName = user.getUserName();
        this.createTime = user.getCreateTime();
    }

    public UserResp(){
    }
}
