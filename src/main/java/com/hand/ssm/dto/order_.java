package com.hand.ssm.dto;

public class order_ {
    private String user_id;
    private int order_id;
    private String num;
    private String type;
    private String color;
    private String time;
    private String description;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public order_(){

    }

    public order_(String user_id, int order_id, String num, String type, String color, String time, String description) {
        this.user_id = user_id;
        this.order_id = order_id;
        this.num = num;
        this.type = type;
        this.color = color;
        this.time = time;
        this.description = description;
    }
}
