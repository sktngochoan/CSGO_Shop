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
public class OrderDetail {
    private int id;
    private int orderId;
    private String skinName;
    private String skinImg;
    private double skinPrice;
    private int quantity;

    public OrderDetail(int id, int orderId, String skinName, String skinImg, double skinPrice, int quantity) {
        this.id = id;
        this.orderId = orderId;
        this.skinName = skinName;
        this.skinImg = skinImg;
        this.skinPrice = skinPrice;
        this.quantity = quantity;
    }

    public OrderDetail() {
    }

    public OrderDetail(String skinName, int quantity) {
        this.skinName = skinName;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getSkinName() {
        return skinName;
    }

    public void setSkinName(String skinName) {
        this.skinName = skinName;
    }

    public String getSkinImg() {
        return skinImg;
    }

    public void setSkinImg(String skinImg) {
        this.skinImg = skinImg;
    }

    public double getSkinPrice() {
        return skinPrice;
    }

    public void setSkinPrice(double skinPrice) {
        this.skinPrice = skinPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
