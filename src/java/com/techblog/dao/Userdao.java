/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techblog.dao;

import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;
import java.sql.*;

/**
 *
 * @author mdabu
 */
public class Userdao {

    private Connection con;

    public Userdao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean entered=false;
//        this method saves User to User table in mysql
        try {
            String query = "insert into User(name,email,password,gender,about) values (?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.executeUpdate();
            entered=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return entered;

    }
    //get user email and password
    public User getUserByEmailAndPassword(String email,String password){
    User user= null;
        try{
           String query= "select * from user where email=? and password=?";
           PreparedStatement pstmt= this.con.prepareStatement(query);
           pstmt.setString(1, email);
           pstmt.setString(2,password);
           ResultSet set=pstmt.executeQuery();
           if(set.next()){
               user= new User();
               //data from database
               String name= set.getString("name");
               //data saved to user object
               user.setName(name);
               user.setId(set.getInt("id"));
               user.setEmail(set.getString("email"));
               user.setPassword(set.getString("password"));
               user.setGender(set.getString("gender"));
               user.setAbout(set.getString("about"));
               user.setDateTime(set.getTimestamp("rdate"));
               user.setProfile(set.getString("profile"));
               
           }
        }
        catch(Exception e){
            e.printStackTrace();
        }
      
        
        return user;  
    }
}
