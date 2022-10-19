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
public class Account {
    String account,password;
    boolean test;
    int idCus;
    public Account() {
    }

    public int getIdCus() {
        return idCus;
    }

    public void setIdCus(int idCus) {
        this.idCus = idCus;
    }

    public Account(String account, String password, boolean test, int idCus) {
        this.account = account;
        this.password = password;
        this.test = test;
        this.idCus = idCus;
    }

    public Account(String account, String password, boolean test) {
        this.account = account;
        this.password = password;
        this.test = test;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isTest() {
        return test;
    }

    public void setTest(boolean test) {
        this.test = test;
    }
    
}
