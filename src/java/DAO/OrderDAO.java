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
import model.Order;
import model.Skin;

/**
 *
 * @author Administrator
 */
public class OrderDAO {

    public int createReturnId(Order order) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [csshop].[dbo].[order]\n"
                    + "           ([user_id]\n"
                    + "           ,[price]\n"
                    + "           ,[note]\n"
                    + "           )\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getUserId());
            ps.setDouble(2, order.getPrice());
            ps.setString(3, order.getNote());
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Order> getAll() {
        List<Order> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [order]";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getString(4), rs.getString(5));
                list.add(order);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Order getOrder() {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [order] \n"
                    + "order by order_id\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getString(4), rs.getString(5));
                return order;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Order> getSumOrderByDate() {
        List<Order> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select top 7 SUM(od.quantity),SUM(o.price),o.date from order_detail od\n"
                    + "join [order] o \n"
                    + "on od.order_id = o.order_id\n"
                    + "group by o.date\n"
                    + "order by o.date";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getDouble(2), rs.getInt(1), rs.getString(3));
                list.add(order);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        System.out.println(o.getSumOrderByDate().get(0).getPrice());
    }

    public List<Order> getOrderBycId(int id) {
        List<Order> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [order]\n"
                    + "where [user_id] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getString(4), rs.getString(5));
                list.add(order);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

}
