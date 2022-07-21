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
import model.Skin;
import model.User;

/**
 *
 * @author Administrator
 */
public class UserDAO {

    public static void editUser(User edit) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE [csshop].[dbo].[user]\n"
                    + "   SET [user_name] = ?\n"
                    + "      ,[user_password] = ?\n"
                    + "      ,[user_email] = ?\n"
                    + "      ,[user_phone] = ?\n"
                    + "      ,[user_linkSteam] = ?\n"
                    + "      ,[user_role] = ?\n"
                    + " WHERE [user_id] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, edit.getUser_Name());
            ps.setString(2, edit.getUser_Password());
            ps.setString(3, edit.getUser_Email());
            ps.setString(4, edit.getUser_Phone());
            ps.setString(5, edit.getUser_LinkSteam());
            ps.setBoolean(6, edit.isUser_Role());
            ps.setInt(7, edit.getUser_Id());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void createAccount(User u) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [csshop].[dbo].[user]\n"
                    + "           ([user_name]\n"
                    + "           ,[user_password]\n"
                    + "           ,[user_email]\n"
                    + "           ,[user_phone]\n"
                    + "           ,[user_linkSteam]\n"
                    + "           ,[user_role])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUser_Name());
            ps.setString(2, u.getUser_Password());
            ps.setString(3, u.getUser_Email());
            ps.setString(4, u.getUser_Phone());
            ps.setString(5, u.getUser_LinkSteam());
            ps.setBoolean(6, u.isUser_Role());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public User check(String name, String pass) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [user]\n"
                    + "where [user_name] = ? \n"
                    + "and [user_password] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
                return user;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        System.out.println(u.check("sktngochoan", "ngochoan").getUser_Name());
    }

    public User getUserById(int id) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [user]\n"
                    + "where [user_id] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
                return user;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void changePass(int id, String Npass) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE [csshop].[dbo].[user]\n"
                    + "   SET \n"
                    + "      [user_password] = ?\n"
                    + " WHERE [user_id] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Npass);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<User> getAll() {
        List<User> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [user]";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
                list.add(user);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}
