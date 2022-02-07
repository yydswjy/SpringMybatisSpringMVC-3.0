package com.hand.ssm.dao;

import com.hand.ssm.dto.order_;

import java.util.List;

public interface orderDao {
    //添加订单
    public void addorder(order_ order);
    //订单列表
    public List<order_> getorderAll(String user_id);
    //结束租借
    public void deleorderbyid(int orderid);
	
}
