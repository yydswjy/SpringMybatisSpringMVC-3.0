package com.hand.ssm.dao;


import com.hand.ssm.dto.Car;

import java.util.List;

public interface CarsDao {
    //添加车辆
    public void addcars(Car car);
    //列表
    public List<Car> getcarsAll();
    //下架车辆
    public void delecarbyid(int carid);
    //id寻找
    public Car getcarById(int carid);
    //修改
    public void updateCarById(Car car);

    public List<Car> selectcar();
    //列表
    public List<Car> getcarsbytypeAll(String type);

    public List<Car> getcarsbybrandAll(String brand);

    public List<Car> getcarsbyrentpriceAll();
}
