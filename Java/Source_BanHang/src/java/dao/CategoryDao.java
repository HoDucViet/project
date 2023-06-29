/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.dao;

import com.poly.models.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class CategoryDao extends ConnectDao{
    public CategoryDao() {
    }
    public String getCategoryById(int id){
        String name ="";
        try {
            String newSQL = "select name from CATEGORIES where id="+id;
           PreparedStatement ps = connection.prepareStatement(newSQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                name = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  name;
    }
    public ArrayList<Category> fillAllCategories(){
        ArrayList<Category> ds = new ArrayList<>();
        try {
            String newSQL = "select * from CATEGORIES";
           PreparedStatement ps = connection.prepareStatement(newSQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String note = rs.getString(3);
                Category cate = new Category(id, name, note);
                ds.add(cate);
            }
        } catch (SQLException e) {
        }
        return ds;
    }
}
