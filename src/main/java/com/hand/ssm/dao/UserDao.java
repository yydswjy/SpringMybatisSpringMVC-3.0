package com.hand.ssm.dao;

import com.hand.ssm.dto.Feedback;
import com.hand.ssm.dto.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    public User selectById(String id);
    public List<User> selectAll();
	public void deleteById(String id);
    public User getagrement();
    public User getaboutus();
    public User getwechatimg();
    public void addUser(User user);
    public void addAdvice(Feedback feedback);
    public User selectByIdd(String id);
    //修改用户信息（密码、联系电话）
	public void updateUser(User user);
    //登陆
    public User DengLu(User user);
    public User selectByIdAndPwd(String id, String pwd);
	public User selectByIdAndPwd(User user);
}

