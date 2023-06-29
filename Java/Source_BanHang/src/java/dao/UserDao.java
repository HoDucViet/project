/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.dao;

import com.poly.models.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class UserDao extends ConnectDao{
    public UserDao() {
    }

    public ArrayList<User> fillAll() {
        ArrayList<User> ds = new ArrayList<>();
        try {
            String newSQL = "select * from USERS";
           PreparedStatement ps = connection.prepareStatement(newSQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int id =rs.getInt(1);
                String username = rs.getString(2);
                String password = rs.getString(3);
                String fullname = rs.getString(4);
                String email = rs.getString(5);
                String phone = rs.getString(6);
                int role = rs.getInt(7);
                User user = new User(id, username, password, fullname, email, phone, role);
                ds.add(user);
            }
    
        } catch (SQLException e) {
           System.out.println(""+ e.toString());
        }
        return ds;
    }
    public boolean deleteUser(int id){
        boolean result = false;
        try {
           
           PreparedStatement ps = connection.prepareStatement("delete USERS where id=?");
           ps.setInt(1, id);
           if(ps.executeUpdate()>0){
               result = true;
           }
        } catch (SQLException e) {
            System.out.println("loi "+e.toString());
        }
        return  result;
    }
    public boolean insertUser(User user){
         boolean result = false;
        try {
           
           PreparedStatement ps = connection.prepareStatement("insert into USERS(username, password, fullname, email, phone, role) values(?,?,?,?,?,?)");
           ps.setString(1, user.getUsername());
           ps.setString(2, user.getPassword());
           ps.setString(3, user.getFullname());
           ps.setString(4, user.getEmail());
           ps.setString(5, user.getPhone());
           ps.setInt(6, user.getRole());
           if(ps.executeUpdate()>0){
               result = true;
           }
        } catch (SQLException e) {
            System.out.println("loi "+e.toString());
        }
        return  result;
        
    }
    public User findById(int id){
        User user = null;
        try {
           String newSQL = "select * from USERS where id=?";
           PreparedStatement ps = connection.prepareStatement(newSQL);
           ps.setInt(1, id);
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){
                int id_user = rs.getInt(1);
                String username = rs.getString(2);
                String password = rs.getString(3);
                String fullname = rs.getString(4);
                String email = rs.getString(5);
                String phone = rs.getString(6);
                int role = rs.getInt(7);
                user = new User(id_user, username, password, fullname, email, phone, role);
            }
        } catch (SQLException e) {
        }
        return user;
    }
    public boolean updateUser(User user){
        boolean result = false;
        try {
           
           PreparedStatement ps = connection.prepareStatement("update USERS set username=?, password=?, fullname=?, email=?, phone=?, role=? where id=?");
            ps.setString(1, user.getUsername());
           ps.setString(2, user.getPassword());
           ps.setString(3, user.getFullname());
           ps.setString(4, user.getEmail());
           ps.setString(5, user.getPhone());
           ps.setInt(6, user.getRole());
           ps.setInt(7, user.getId());
           if(ps.executeUpdate()>0){
               result = true;
           }
        } catch (SQLException e) {
            System.out.println("loi "+e.toString());
        }
        return  result;
    }
    public User checkLogin(String u, String p){
        User user = null;
        try {
           String newSQL = "select * from USERS where username='"+u+"' and password='"+p+"'";
           PreparedStatement ps = connection.prepareStatement(newSQL);
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){
                int id_user = rs.getInt(1);
                String username = rs.getString(2);
                String password = rs.getString(3);
                String fullname = rs.getString(4);
                String email = rs.getString(5);
                String phone = rs.getString(6);
                int role = rs.getInt(7);
                user = new User(id_user, username, password, fullname, email, phone, role);
            }
        } catch (SQLException e) {
        }
        return user;
    }
}
