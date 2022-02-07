package com.hand.ssm.dao;

import com.hand.ssm.dto.Info;

import java.util.List;

public interface InfoDao {
    public List<Info> selectAll();
    public List<Info> findAll(String username);
    //添加日志信息
    public void addinfo(Info info);
}

