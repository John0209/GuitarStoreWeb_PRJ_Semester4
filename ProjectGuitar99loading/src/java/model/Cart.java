/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tuan vu
 */
public class Cart {
    private List<Product> list=null;

    public Cart() {
        list=new ArrayList<>();
    }
    public void add(Product pr){
        list.add(pr);
    }
    public void empty(int i){
        list.remove(i);
    }
    public void empty(){
        list.clear();
    }
    public List<Product> getList() {
        return list;
    }
}
