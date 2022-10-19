/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import model.*;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author tuan vu
 */
public class DBUtils {
    public static Connection getConnect(){
        String url="jdbc:sqlserver://localhost;databaseName=guitar;user=sa;password=12345";
        Connection con=null;
        try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           con=DriverManager.getConnection(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
