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
public class Skin {
    private int skinId;
    private int categoryId;
    private String skinName;
    private String skinStatus;
    private double skinFloat;
    private boolean skinStattrack;
    private String skinImg;
    private int skinQuantity;
    private double skinPrice;
    private String createdDate;
    private Category category;
    public Skin(int skinId, int categoryId, String skinName, String skinStatus, double skinFloat, boolean skinStattrack, String skinImg, int skinQuantity, double skinPrice, String createdDate) {
        this.skinId = skinId;
        this.categoryId = categoryId;
        this.skinName = skinName;
        this.skinStatus = skinStatus;
        this.skinFloat = skinFloat;
        this.skinStattrack = skinStattrack;
        this.skinImg = skinImg;
        this.skinQuantity = skinQuantity;
        this.skinPrice = skinPrice;
        this.createdDate = createdDate;
    }

    public Skin(int skinId, int categoryId, String skinName, String skinStatus, double skinFloat, boolean skinStattrack, String skinImg, int skinQuantity, double skinPrice, String createdDate, Category category) {
        this.skinId = skinId;
        this.categoryId = categoryId;
        this.skinName = skinName;
        this.skinStatus = skinStatus;
        this.skinFloat = skinFloat;
        this.skinStattrack = skinStattrack;
        this.skinImg = skinImg;
        this.skinQuantity = skinQuantity;
        this.skinPrice = skinPrice;
        this.createdDate = createdDate;
        this.category = category;
    }
    
    public Skin() {
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
    public int getSkinId() {
        return skinId;
    }

    public void setSkinId(int skinId) {
        this.skinId = skinId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getSkinName() {
        return skinName;
    }

    public void setSkinName(String skinName) {
        this.skinName = skinName;
    }

    public String getSkinStatus() {
        return skinStatus;
    }

    public void setSkinStatus(String skinStatus) {
        this.skinStatus = skinStatus;
    }

    public double getSkinFloat() {
        return skinFloat;
    }

    public void setSkinFloat(double skinFloat) {
        this.skinFloat = skinFloat;
    }

    public boolean isSkinStattrack() {
        return skinStattrack;
    }

    public void setSkinStattrack(boolean skinStattrack) {
        this.skinStattrack = skinStattrack;
    }

    public String getSkinImg() {
        return skinImg;
    }

    public void setSkinImg(String skinImg) {
        this.skinImg = skinImg;
    }

    public int getSkinQuantity() {
        return skinQuantity;
    }

    public void setSkinQuantity(int skinQuantity) {
        this.skinQuantity = skinQuantity;
    }

    public double getSkinPrice() {
        return skinPrice;
    }

    public void setSkinPrice(double skinPrice) {
        this.skinPrice = skinPrice;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return "Skin{" + "skinId=" + skinId + ", categoryId=" + categoryId + ", skinName=" + skinName + ", skinStatus=" + skinStatus + ", skinFloat=" + skinFloat + ", skinStattrack=" + skinStattrack + ", skinImg=" + skinImg + ", skinQuantity=" + skinQuantity + ", skinPrice=" + skinPrice + ", createdDate=" + createdDate + '}';
    }

    
}
