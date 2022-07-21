/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Feedback;

/**
 *
 * @author Administrator
 */
public class FeedbackDAO {

    public void insert(Feedback f) {
        String query = "INSERT INTO [csshop].[dbo].[feedback]\n"
                + "           ([feedback_name]\n"
                + "           ,[feedback_content])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, f.getName());
            ps.setString(2, f.getContent());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
