
package com.codebook.user;

import com.codebook.Connection.DBConnection;
import com.codebook.Connection.Query;
import com.codebook.bean.Bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userRequestBlood implements Query {
    
     public int Register(Bean b,String query){
        int rowCount=0;
        Connection connection=null;
        try{
             DBConnection.BuildConnection();
            connection=DBConnection.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getPassword());
       ps.setString(4, b.getAge());
       ps.setString(5, b.getTemp());
       ps.setString(6, b.getAddress());
       ps.setString(7, b.getMobile());
       ps.setString(8, b.getCenter());
       ps.setString(9, b.getInfo());
       rowCount=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
       return rowCount;
    }
     
     public int BloodMatching(Bean b,String query){
        int rowCount=0;
        Connection connection=null;
        try{
             DBConnection.BuildConnection();
            connection=DBConnection.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getTemp());
       ps.setString(3, b.getAge());
       ps.setString(4, b.getInfo());
       ps.setString(5, b.getEmail());
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
}
