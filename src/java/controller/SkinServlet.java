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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;
import model.Skin;

/**
 *
 * @author Administrator
 */
public class SkinServlet extends HttpServlet {

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
            out.println("<title>Servlet SkinServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SkinServlet at " + request.getContextPath() + "</h1>");
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
        final int PAGE_SIZE = 8;
        ProductDAO p = new ProductDAO();
        int totalProduct = p.getTotalProduct();
        int page = 1;
        String page_raw = request.getParameter("page");
        if(page_raw != null){
            page = Integer.parseInt(page_raw);
        }
        int totalPage = totalProduct/PAGE_SIZE;
        if(totalProduct%PAGE_SIZE != 0){
            totalPage += 1;
        }
        int end = page*PAGE_SIZE;
        if(end > totalProduct){
            end = totalProduct;
        }
        else{
            end = page*PAGE_SIZE;
        }
        List<Category> listCategory = new CategoryDAO().getAllCategory();
        List<Skin> listSkin = p.getAllSkin();
        HttpSession session = request.getSession();
        request.setAttribute("path", "skin");
        request.setAttribute("page", page);
        session.setAttribute("listCate", listCategory);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("listProduct", listSkin.subList((page-1)*PAGE_SIZE, end));
        request.getRequestDispatcher("skin.jsp").forward(request, response);
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
        processRequest(request, response);
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
