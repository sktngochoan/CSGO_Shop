/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ChartDAO;
import DAO.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Order;
import model.OrderDetail;
import model.View;

/**
 *
 * @author Administrator
 */
public class ChartServlet extends HttpServlet {

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
            out.println("<title>Servlet ChartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChartServlet at " + request.getContextPath() + "</h1>");
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
        //Statistic view
        List<View> listView = new ChartDAO().getAll();
        //Statistic Order
        List<OrderDetail> listOrderDetails = new ChartDAO().getTop6();
        //Statistic Profit
        int totalOrder = 0;
        double totalProfit = 0;
        int totalVistor = 0;
        List<Order> listOrder = new OrderDAO().getSumOrderByDate();
        for(int i = 0;i<listOrder.size();i++){
            totalOrder+= listOrder.get(i).getCountOrder();
            double price = Double.parseDouble(String.format("%.0f", listOrder.get(i).getPrice()));
            totalProfit += price;
            listOrder.get(i).setPrice(price);
        }
        for(int i = 0;i<listOrderDetails.size();i++){
            totalVistor += listView.get(i).getViewLogin()+listView.get(i).getViewnonLogin();
        }
        request.setAttribute("listOrderDetail", listOrderDetails);
        request.setAttribute("list", listView.subList(0, 5));
        request.setAttribute("listOrderchart", listOrder);
        request.setAttribute("totalProfit", totalProfit);
        request.setAttribute("totalVistor", totalVistor);
        request.setAttribute("totalOrder", totalOrder);
        request.getRequestDispatcher("chart.jsp").forward(request, response);
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
