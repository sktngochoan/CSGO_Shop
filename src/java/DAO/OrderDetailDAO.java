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
import java.util.Map;
import model.Cart;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Administrator
 */
public class OrderDetailDAO {

    public void saveCard(int orderId, Map<Integer, Cart> carts) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [csshop].[dbo].[order_detail]\n"
                    + "           ([order_id]\n"
                    + "           ,[skin_name]\n"
                    + "           ,[skin_image]\n"
                    + "           ,[skin_price]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setString(2, cart.getSkin().getSkinName());
                ps.setString(3, cart.getSkin().getSkinImg());
                ps.setDouble(4, cart.getSkin().getSkinPrice());
                ps.setInt(5, cart.getQuantity());
                ps.executeUpdate();
            }

        } catch (Exception e) {
        }
    }

    public List<OrderDetail> getAll() {
        List<OrderDetail> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from order_detail";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail orderDetail = new OrderDetail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6));
                list.add(orderDetail);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<OrderDetail> getOrder(int orderId) {
        List<OrderDetail> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from order_detail\n"
                    + "where order_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail orderDetail = new OrderDetail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6));
                list.add(orderDetail);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        OrderDetailDAO o = new OrderDetailDAO();
        System.out.println(o.getByCId(2, 3).get(0).getSkinName());
    }

    public List<OrderDetail> getByCId(int id,int cid) {
        List<OrderDetail> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select d.* from order_detail d\n"
                    + "join [order] o\n"
                    + "on d.order_id = o.order_id\n"
                    + "where o.user_id = ? ";
            if(cid != 0){
                sql += "and o.order_id = ?";
            }
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            if(cid != 0){
                ps.setInt(2, cid);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail orderDetail = new OrderDetail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6));
                list.add(orderDetail);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}
