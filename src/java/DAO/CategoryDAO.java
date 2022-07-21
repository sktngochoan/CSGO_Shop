/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author Administrator
 */
public class CategoryDAO {

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from category";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Category getCategoryById(int categoryId) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from category\n"
                    + "where category_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(1), rs.getString(2));
                return c;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        CategoryDAO c =new CategoryDAO();
        System.out.println(c.getCategoryById(6).getCategoryName());
        System.out.println(java.time.LocalDate.now());
    }
}
