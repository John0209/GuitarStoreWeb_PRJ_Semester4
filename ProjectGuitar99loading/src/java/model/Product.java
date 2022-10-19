/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import model.*;

/**
 *
 * @author tuan vu
 */
public class Product {
    int proID,cateID,quantity;
    String name, string,category,img;
    long price;

    public Product(int proID, int cateID, int quantity, String name, String string, String category, String img, long price) {
        this.proID = proID;
        this.cateID = cateID;
        this.quantity = quantity;
        this.name = name;
        this.string = string;
        this.category = category;
        this.img = img;
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Product(int proID, int cateID, int quantity, String name, String string, String category, long price) {
        this.proID = proID;
        this.cateID = cateID;
        this.quantity = quantity;
        this.name = name;
        this.string = string;
        this.category = category;
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Product(int proID, int cateID, int quantity, String name, String string, long price) {
        this.proID = proID;
        this.cateID = cateID;
        this.quantity = quantity;
        this.name = name;
        this.string = string;
        this.price = price;
    }

    public Product(int proID, int cateID, String name, String string, long price) {
        this.proID = proID;
        this.cateID = cateID;
        this.name = name;
        this.string = string;
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product() {
    }

    public int getProID() {
        return proID;
    }

    public void setProID(int proID) {
        this.proID = proID;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }
    
}
