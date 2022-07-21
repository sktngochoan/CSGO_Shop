/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Administrator
 */
public class Order {
    private int orderId;
    private int userId;
    private double price;
    private String note;
    private int countOrder;
    private String date;
    
    public Order(int orderId, int userId, double price, String note, String date) {
        this.orderId = orderId;
        this.userId = userId;
        this.price = price;
        this.note = note;
        this.date = date;
    }

    public Order(double price, int countOrder, String date) {
        this.price = price;
        this.countOrder = countOrder;
        this.date = date;
    }
    
    public int getCountOrder() {
        return countOrder;
    }

    public void setCountOrder(int countOrder) {
        this.countOrder = countOrder;
    }

    
    
    
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
    
    public Order() {
    }

    public Order(int userId, double price, String note) {
        this.userId = userId;
        this.price = price;
        this.note = note;
    }
    
    
    
    public Order(int orderId, int userId, double price, String note) {
        this.orderId = orderId;
        this.userId = userId;
        this.price = price;
        this.note = note;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    
    
    
}
