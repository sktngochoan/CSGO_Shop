/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Skin;

/**
 *
 * @author Administrator
 */
public class UpdateSkinServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateSkinServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateSkinServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        int skinId = Integer.parseInt(request.getParameter("skinId"));
        List<Category> list = new CategoryDAO().getAllCategory();
        ProductDAO p = new ProductDAO();
        request.setAttribute("skin", p.getSkinById(skinId));
        request.setAttribute("date", strDate);
        request.setAttribute("category", list);
        request.getRequestDispatcher("updateSkin.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("skinId"));
        int cid = Integer.parseInt(request.getParameter("category"));
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        double float1 = Double.parseDouble(request.getParameter("float"));
        int st = Integer.parseInt(request.getParameter("stattrack"));
        String img = request.getParameter("img");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String date = request.getParameter("date");
        double price = Double.parseDouble(request.getParameter("price"));
        
        boolean stattrack = true;
        if(st == 0){
            stattrack = false;
        }
        
        Skin s = new Skin(id, cid, name, status, float1, stattrack, img, quantity, price, date);
        System.out.println(s.getSkinId());
        ProductDAO p = new ProductDAO();
        p.update(s);
        response.sendRedirect("admin");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
