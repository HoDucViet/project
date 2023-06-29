/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.dao;

import com.poly.models.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class ProductDao extends ConnectDao{
    public ProductDao() {
    }
    public ArrayList<Product> fillAll() {
        ArrayList<Product> ds = new ArrayList<>();
        try {
            String newSQL = "select * from PRODUCTS";
           PreparedStatement ps = connection.prepareStatement(newSQL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int id =rs.getInt(1);
                String name = rs.getString(2);
                int price = rs.getInt(3);
                String note = rs.getString(4);
                String image = rs.getString(5);
                int category_id = rs.getInt(6);
                Product product = new Product(id, name, price, note, image, category_id);
                ds.add(product);
            }
    
        } catch (SQLException e) {
           System.out.println(""+ e.toString());
        }
        return ds;
    }
    public boolean insertProduct(Product product){
         boolean result = false;
        try {
           
           PreparedStatement ps = connection.prepareStatement("insert into PRODUCTS(name, price, note, image, category_id) values(?,?,?,?,?)");
           ps.setString(1, product.getName());
           ps.setInt(2, product.getPrice());
           ps.setString(3, product.getNote());
           ps.setString(4, product.getImage());
           ps.setInt(5, product.getCategory_id());
           if(ps.executeUpdate()>0){
               result = true;
           }
        } catch (SQLException e) {
            System.out.println("loi "+e.toString());
        }
        return  result;
        
    }
    public boolean deleteProduct(int id){
        boolean result = false;
        try {
           
           PreparedStatement ps = connection.prepareStatement("delete PRODUCTS where id=?");
           ps.setInt(1, id);
           if(ps.executeUpdate()>0){
               result = true;
           }
        } catch (SQLException e) {
            System.out.println("loi "+e.toString());
        }
        return  result;
    }
    public Product findById(int id){
        Product Product = null;
        try {
           String newSQL = "select * from PRODUCTS where id=?";
           PreparedStatement ps = connection.prepareStatement(newSQL);
           ps.setInt(1, id);
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){
                int id_product = rs.getInt(1);
                String name = rs.getString(2);
                int price = rs.getInt(3);
                String note = rs.getString(4);
                String image = rs.getString(5);
                int category_id = rs.getInt(6);
                Product = new Product(id, name, price, note, image, category_id);
            }
        } catch (SQLException e) {
        }
        return Product;
    }
    public boolean updateProduct(Product Product){
        boolean result = false;
        try {
           
           PreparedStatement ps = connection.prepareStatement("update PRODUCTS set name=?, price=?, note=?, image=?, category_id=?  where id=?");
           ps.setString(1, Product.getName());
           ps.setInt(2, Product.getPrice());
           ps.setString(3, Product.getNote());
           ps.setString(4, Product.getImage());
           ps.setInt(5, Product.getCategory_id());
           ps.setInt(6, Product.getId());
           if(ps.executeUpdate()>0){
               result = true;
           }
        } catch (SQLException e) {
            System.out.println("loi "+e.toString());
        }
        return  result;
    }
}
