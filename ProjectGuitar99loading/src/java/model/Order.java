/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tuan vu
 */
public class Order {
    String img, name;
    long price, allprice;
    int quantity;

    public Order(String img, String name, long price, long allprice, int quantity) {
        this.img = img;
        this.name = name;
        this.price = price;
        this.allprice = allprice;
        this.quantity = quantity;
    }

    public Order() {
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getAllprice() {
        return allprice;
    }

    public void setAllprice(long allprice) {
        this.allprice = allprice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}

