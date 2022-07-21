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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import model.OrderDetail;
import model.View;

/**
 *
 * @author Administrator
 */
public class ChartDAO {

    public List<View> getAll() {
        List<View> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Statistic\n"
                    + "order by view_Date\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                View view = new View(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
                list.add(view);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public View getDate() {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select top 1 * from Statistic\n"
                    + "Order by view_Date\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                View view = new View(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
                return view;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<OrderDetail> getTop6() {
        List<OrderDetail> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select distinct top 6 order_detail.skin_name,SUM(order_detail.quantity) from [order_detail]\n"
                    + "Group by order_detail.skin_name\n"
                    + "Order by SUM(order_detail.quantity)\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail orderDetail = new OrderDetail(rs.getString(1), rs.getInt(2));
                list.add(orderDetail);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public boolean checkDate() {
        ChartDAO c = new ChartDAO();
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String date1 = dateFormat.format(date);
        if (date1.equals(c.getDate().getViewDate())) {
            return true;
        }
        return false;
    }

    public static void main(String[] args) {
        ChartDAO c = new ChartDAO();
        System.out.println(c.checkDate());
    }

    public void UpdateStatistic(int i) {
        ChartDAO c = new ChartDAO();
        String sql = "";
        if (c.checkDate() == true) {
            if (i == 1) {
                sql = "UPDATE [csshop].[dbo].[Statistic]\n"
                        + "SET [view_Login] = ((select view_Login from Statistic \n"
                        + "where (SELECT CONVERT(VARCHAR(10), view_Date, 104) AS date_time)\n"
                        + "= (SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time))+1)\n"
                        + "where (SELECT CONVERT(VARCHAR(10), view_Date, 104) AS date_time)\n"
                        + "=(SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time)";
            } else if (i == 2) {
                sql = "UPDATE [csshop].[dbo].[Statistic]\n"
                        + "SET [view_nonLogin] = ((select [view_nonLogin] from Statistic \n"
                        + "where (SELECT CONVERT(VARCHAR(10), view_Date, 104) AS date_time)\n"
                        + "= (SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time))+1)\n"
                        + "where (SELECT CONVERT(VARCHAR(10), view_Date, 104) AS date_time)\n"
                        + "=(SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time)";
            } else {
                sql = "UPDATE [csshop].[dbo].[Statistic]\n"
                        + "SET [order] = ((select [order] from Statistic \n"
                        + "where (SELECT CONVERT(VARCHAR(10), view_Date, 104) AS date_time)\n"
                        + "= (SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time))+1)\n"
                        + "where (SELECT CONVERT(VARCHAR(10), view_Date, 104) AS date_time)\n"
                        + "=(SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time)";
            }
        } else {
            sql = "INSERT INTO [csshop].[dbo].[Statistic]\n"
                    + "           ([view_Date]\n"
                    + "           ,[view_Login]\n"
                    + "           ,[view_nonLogin]\n"
                    + "           ,[order])\n"
                    + "     VALUES\n"
                    + "           (GETDATE(),0,0,(select COUNT(*) from [order]\n"
                    + "where (SELECT CONVERT(VARCHAR(10), [date], 104) AS date_time)\n"
                    + "=(SELECT CONVERT(VARCHAR(10), SYSDATETIME(), 104) AS date_time)))";
        }
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
