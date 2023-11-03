package com.codebook.bean;
import java.sql.*;
public class Bean {
    private String age;
    private String name;
    private String email;
    private String mobile;
    private String password;
    private String address;
    private Blob image;
    private String temp;
    private String center;
    private String info;
    private String val;
    private String flat;
    private String temp2;
    private String temp3;
    
    public void setFlat(String flat){
        this.flat=flat;
    }
    public String getFlat(){
        return flat;
    }
    public void setVal(String val){
        this.val=val;
    }
    public String getVal(){
        return val;
    }
    public void setInfo(String info){
        this.info=info;
    }
    public String getInfo(){
        return info;
    }
    public void setCenter(String center){
        this.center=center;
    }
    public String getCenter(){
        return center;
    }
    public void setTemp3(String temp3){
        this.temp3=temp3;
    }
    public String getTemp3(){
        return temp3;
    }
    public void setTemp2(String temp2){
        this.temp2=temp2;
    }
    public String getTemp2(){
        return temp2;
    }
    public void setTemp(String temp){
        this.temp=temp;
    }
    public String getTemp(){
        return temp;
    }
    public void setAge(String age){
        this.age=age;
    }
    public String getAge(){
        return age;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }
    
    public void setEmail(String email){
        this.email=email;
    }
    public String getEmail(){
        return email;
    }
    
    public void setMobile(String mobile){
        this.mobile=mobile;
    }
    public String getMobile(){
        return mobile;
    }
    
    public void setPassword(String password){
        this.password=password;
    }
    public String getPassword(){
        return password;
    }
    
    public void setAddress(String address){
        this.address=address;
    }
    public String getAddress(){
        return address;
    }
    
    public void setBlob(Blob image){
        this.image=image;
    }
    public Blob getBlob(){
        return image;
    }
    
}
