package com.codebook.Connection;
import java.sql.*;
public class DBConnection {
    private static Connection connection=null;
    public static void BuildConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood-donation", "root", "");
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
    public static Connection getConnection(){
        return connection;
    }
    public static void closeConnection(){
        try{
            connection.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
}
