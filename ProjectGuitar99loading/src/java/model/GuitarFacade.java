/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tuan vu
 */
public class GuitarFacade {

    public List<Product> select() {
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        List<Product> list = null;
        try {
            Statement sm = con.createStatement();
            ResultSet rs = sm.executeQuery("select * from Products p inner join Category c on p.categoryId=c.categoryId");
            list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product();
                p.setProID(rs.getInt("productsId"));
                p.setCateID(rs.getInt("categoryId"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getLong("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setCategory(rs.getString("categoryName"));
                p.setImg(rs.getString("img"));
                list.add(p);
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public List<Customer> selectAccount() {
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        List<Customer> list = null;
        try {
            Statement sm = con.createStatement();
            ResultSet rs = sm.executeQuery("select * from Account");
            list = new ArrayList<>();
            while (rs.next()) {
                Customer ac = new Customer();
                ac.setAccountID(rs.getString("account"));
                ac.setPassword(rs.getString("password"));
                ac.setAddress(rs.getString("address"));
                ac.setEmail(rs.getString("email"));
                ac.setCustomerID(rs.getInt("customerID"));
                ac.setPhone(rs.getInt("phone"));
                ac.setNameCus(rs.getString("name"));
                list.add(ac);
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public List<Order> selectOrder(int idCus) {
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        List<Order> list = null;
        try {
            String url = "select img, name, price, num, allPrice from Bill b inner join Products p on b.productId=p.productsId inner join BillDetails bd on b.billId=bd.billId   where customerID=?";
            PreparedStatement ps = con.prepareStatement(url);
            ps.setInt(1, idCus);
            ResultSet rs = ps.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                Order or = new Order();
                or.setName(rs.getString("name"));
                or.setImg(rs.getString("img"));
                or.setPrice(rs.getLong("price"));
                or.setAllprice(rs.getLong("allPrice"));
                or.setQuantity(rs.getInt("num"));
                list.add(or);
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public boolean CreateAccount(Customer ac) {
        boolean result = true;
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        try {
            PreparedStatement ps = con.prepareStatement("insert account values(?,?,?,?,?,?)");
            ps.setString(1, ac.getAccountID());
            ps.setString(2, ac.getPassword());
            ps.setString(3, ac.getNameCus());
            ps.setString(4, ac.getAddress());
            ps.setInt(5, ac.getPhone());
            ps.setString(6, ac.getEmail());
            int count = ps.executeUpdate();
            if (count == 0) {
                result = false;
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
            result = false;
        }
        return result;
    }

    public boolean insertBill(int idCus, int proID) {
        boolean result = true;
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        try {
            String url = "insert Bill values(?,?)";
            PreparedStatement ps = con.prepareStatement(url);
            ps.setInt(1, idCus);
            ps.setInt(2, proID);
            int count = ps.executeUpdate();
            if (count == 0) {
                result = false;
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

    public int takeBillId(int idCus, int proId) {
        int billId = 0;
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        try {
            String url = " select billId from Bill where customerID like ? and productId like ?";
            PreparedStatement ps = con.prepareStatement(url);
            ps.setInt(1, idCus);
            ps.setInt(2, proId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                billId = rs.getInt("billId");
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return billId;
    }

    public boolean insertBillDetails(int billId, int quantity, long price, int idpro) {
        boolean result = true;
        DBUtils db = new DBUtils();
        Connection con = db.getConnect();
        try {
            String url = "insert BillDetails values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(url);
            ps.setInt(1, billId);
            ps.setInt(2, quantity);
            ps.setLong(3, price);
            ps.setInt(4, idpro);
            int count = ps.executeUpdate();
            if (count == 0) {
                result = false;
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

}
