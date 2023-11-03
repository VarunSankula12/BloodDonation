package com.codebook.user;
import com.codebook.Connection.DBConnection;
import java.sql.*;
import com.codebook.Connection.Query;
import com.codebook.bean.Bean;

public class userRegisteration implements Query{
    
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
        }finally{
                DBConnection.closeConnection();
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
    
}
