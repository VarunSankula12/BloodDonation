package com.codebook.Connection;
import com.codebook.bean.Bean;
import java.sql.*;
public interface Query {
    int Register(Bean b,String query);
    ResultSet Retrieve(String query);
}
