package com.codebook.user;

import com.codebook.Connection.DBConnection;
import com.codebook.Connection.Query;
import com.codebook.bean.Bean;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;

public class userDonateBlood implements Query {
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
       ps.setString(4, b.getAddress());
       ps.setString(5, b.getMobile());
       ps.setString(6, b.getAge());
       ps.setString(7, b.getTemp());
       ps.setString(8, b.getCenter());
       rowCount=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
       return rowCount;
    }
     
    public int donateBlood(Bean b,String query){
        int rowCount=0;
        Connection connection=null;
        try{
             DBConnection.BuildConnection();
            connection=DBConnection.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getCenter());
       ps.setString(4, b.getAddress());
       ps.setString(5, b.getMobile());
       ps.setString(6, b.getAge());
       ps.setString(7, b.getInfo());
       ps.setString(8, b.getTemp3());
       ps.setString(9, b.getTemp2());
       ps.setString(10, b.getPassword());
       ps.setString(11, b.getFlat());
       ps.setString(12, b.getTemp());
       ps.setString(13, b.getVal());
       
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
    
     public String imageConversion(Blob pic){
        String Profilepic="";
        try{
            InputStream inputStream = pic.getBinaryStream();

                     ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                     byte[] buffer = new byte[4096];
                        int bytesRead;
                        while ((bytesRead = inputStream.read(buffer)) != -1) {
                         outputStream.write(buffer, 0, bytesRead);
                                         }
                        Profilepic= Base64.getEncoder().encodeToString(outputStream.toByteArray());
        }catch(Exception e){
            e.printStackTrace();
        }
        return Profilepic;
    }
     
     public int UpdateProfile(Bean b,String query){
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
       if(b.getBlob().length()==0){
           userDonateBlood obj=new userDonateBlood();
           String query1="SELECT * from user WHERE email='"+b.getEmail()+"'";
           ResultSet rs=obj.Retrieve(query1);
           if(rs.next()){
           b.setBlob(rs.getBlob("upload_image"));
           }
       }
       ps.setBlob(5, b.getBlob());
       rowCount=ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
       return rowCount;
    }
     
}
