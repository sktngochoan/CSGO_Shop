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

/**
 *
 * @author Administrator
 */
public class ProductDAO {

    public List<Skin> getAllSkin() {
        List<Skin> list = new ArrayList<>();
        CategoryDAO c = new CategoryDAO();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from skin order by skin_created_date";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = c.getCategoryById(rs.getInt(2));
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9), category);
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Skin> getAllSkinByName(String nameSkin) {
        List<Skin> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from skin\n"
                    + "where skin_name like ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + nameSkin + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Skin> getAllSkinByCategory(int categoryId) {
        List<Skin> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from skin\n"
                    + "where category_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
    public Skin getSkinByName(String name) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from skin where skin_name = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9));
                return s;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int getTotalProduct() {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select COUNT(*) from skin";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Skin> getNewestSkin() {
        List<Skin> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from skin\n"
                    + "where skin_created_date in \n"
                    + "(select top 4(skin_created_date) from skin order by skin_created_date DESC)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Skin getSkinById(int skinId) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from skin\n"
                    + "where skin_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, skinId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9));
                return s;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        int[] i = null;
        System.out.println(p.getAllSkinByFilter(i, 0, 0, " Order by skin_name ASC").get(2).getSkinName());
    }

    public void add(Skin sk) {
        String query = "INSERT INTO [csshop].[dbo].[skin]\n"
                + "           ([category_id]\n"
                + "           ,[skin_name]\n"
                + "           ,[skin_status]\n"
                + "           ,[skin_float]\n"
                + "           ,[skin_stattrack]\n"
                + "           ,[skin_image]\n"
                + "           ,[skin_quantity]\n"
                + "           ,[skin_created_date]\n"
                + "           ,[skin_price])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?)";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, sk.getCategoryId());
            ps.setString(2, sk.getSkinName());
            ps.setString(3, sk.getSkinStatus());
            ps.setDouble(4, sk.getSkinFloat());
            ps.setBoolean(5, sk.isSkinStattrack());
            ps.setString(6, sk.getSkinImg());
            ps.setInt(7, sk.getSkinQuantity());
            ps.setString(8, sk.getCreatedDate());
            ps.setDouble(9, sk.getSkinPrice());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(Skin sk) {
        String query = "UPDATE [csshop].[dbo].[skin]\n"
                + "   SET [category_id] = ?\n"
                + "      ,[skin_name] = ?\n"
                + "      ,[skin_status] = ?\n"
                + "      ,[skin_float] = ?\n"
                + "      ,[skin_stattrack] = ?\n"
                + "      ,[skin_image] = ?\n"
                + "      ,[skin_quantity] = ?\n"
                + "      ,[skin_created_date] = ?\n"
                + "      ,[skin_price] = ?\n"
                + " WHERE skin_id = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, sk.getCategoryId());
            ps.setString(2, sk.getSkinName());
            ps.setString(3, sk.getSkinStatus());
            ps.setDouble(4, sk.getSkinFloat());
            ps.setBoolean(5, sk.isSkinStattrack());
            ps.setString(6, sk.getSkinImg());
            ps.setInt(7, sk.getSkinQuantity());
            ps.setString(8, sk.getCreatedDate());
            ps.setDouble(9, sk.getSkinPrice());
            ps.setInt(10, sk.getSkinId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteSkinById(int id) {
        String query = "DELETE FROM [csshop].[dbo].[skin]\n"
                + "      WHERE skin_id = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Skin> getListTop3Skin() {
        List<Skin> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select distinct top 3 skin_name,SUM(quantity)  from order_detail\n"
                    + "group by skin_name\n"
                    + "order by SUM(quantity)\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString(1);
                Skin skin = new ProductDAO().getSkinByName(name);
                list.add(skin);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Skin> getAllSkinByFilter(int[] cid, double min, double max, String sort) {
        List<Skin> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "";
            if (cid != null) {
                sql = "select * from skin\n"
                        + "where ";
                sql += "category_id in (?";
                for (int i = 0; i < cid.length; i++) {
                    if (i == cid.length - 1) {
                        sql += ")";
                    } else {
                        sql += ",?";
                    }
                }
                if (max != 0 && min != 0) {
                    sql += "and skin_price between ? and ?";
                }
                if (sort != "") {
                    sql += sort;
                }
            } else if (cid == null && max != 0) {
                sql = "select * from skin\n"
                        + "where ";
                sql += "skin_price between ? and ?";
                if (sort != "") {
                    sql += sort;
                }
            } else {
                sql = "select * from skin ";
                sql += sort;
            }

            PreparedStatement ps = conn.prepareStatement(sql);
            if (cid != null) {
                for (int i = 0; i < cid.length; i++) {
                    ps.setInt(i + 1, cid[i]);
                }
                if (max != 0 && min != 0 && cid != null) {
                    ps.setDouble(cid.length + 1, min);
                    ps.setDouble(cid.length + 2, max);
                }
            } else if (cid == null && max != 0) {
                ps.setDouble(1, min);
                ps.setDouble(2, max);
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getInt(8), rs.getDouble(10), rs.getString(9));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}
