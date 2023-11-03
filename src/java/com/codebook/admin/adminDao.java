/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.codebook.admin;

import com.codebook.Connection.DBConnection;
import com.codebook.Connection.Query;
import com.codebook.bean.Bean;
import com.codebook.user.userDonateBlood;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class adminDao implements Query{
     public int Register(Bean b,String query){
        int rowCount=0;
        Connection connection=null;
        try{
             DBConnection.BuildConnection();
            connection=DBConnection.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getMobile());
       ps.setString(4, b.getAddress());
       ps.setBlob(5, b.getBlob());
       ps.setString(6, b.getPassword());
       rowCount=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
       return rowCount;
    }
    
    public ResultSet Retrieve(String query){
        ResultSet rs=null;
        try{
            DBConnection.BuildConnection();
            Connection connection=DBConnection.getConnection();
        PreparedStatement ps=connection.prepareStatement(query);
        rs=ps.executeQuery();
        }catch(Exception e){
            e.printStackTrace();
        }
        return rs;
    }
    
    public int RetrieveCount(String query){
        ResultSet rs=null;int rowCount=0;
        try{
            DBConnection.BuildConnection();
            Connection connection=DBConnection.getConnection();
        PreparedStatement ps=connection.prepareStatement(query);
        rs=ps.executeQuery();
        if (rs.next()) {
            rowCount = rs.getInt(1); // Assuming the count is in the first column
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        return rowCount;
    }
    
    public int UpdateProfile(String query){
        int rowCount=0;
        Connection connection=null;
        try{
             DBConnection.BuildConnection();
            connection=DBConnection.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       rowCount=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
       return rowCount;
    }
    
    public int UpdateDetails(Bean b,String query){
        int rowCount=0;
        Connection connection=null;
        try{
             DBConnection.BuildConnection();
            connection=DBConnection.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getTemp());
       ps.setString(4, b.getAddress());
       ps.setString(5,b.getMobile());
       ps.setString(6, b.getAge());
       ps.setString(7, b.getTemp2());
       rowCount=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
       return rowCount;
    }
    
}
