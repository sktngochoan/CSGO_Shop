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
import java.util.ArrayList;
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
public class FilterServlet extends HttpServlet {

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
            out.println("<title>Servlet FilterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilterServlet at " + request.getContextPath() + "</h1>");
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
        if (request.getParameterValues("cid") == null && request.getParameter("max") == null && request.getParameter("min") == null && request.getParameter("sort") == null) {
            final int PAGE_SIZE = 8;
            int page = 1;
            String page_raw = request.getParameter("page");
            if (page_raw != null) {
                page = Integer.parseInt(page_raw);
            }
            HttpSession session = request.getSession();
            List<Skin> list = (ArrayList<Skin>) session.getAttribute("list");
            int totalPage = list.size() / PAGE_SIZE;
            if (list.size() % PAGE_SIZE != 0) {
                totalPage += 1;
            }
            int end = page * PAGE_SIZE;
            if (end > list.size()) {
                end = list.size();
            } else {
                end = page * PAGE_SIZE;
            }
            List<Category> listCate = (ArrayList<Category>) session.getAttribute("listCate");
            boolean[] cid_check = (boolean[]) session.getAttribute("cid_check");
            request.setAttribute("path", "filter");
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("listProduct", list.subList((page - 1) * PAGE_SIZE, end));
            request.setAttribute("check", cid_check);
            request.setAttribute("listCate", listCate);
            request.getRequestDispatcher("skin.jsp").forward(request, response);
        } else {
            final int PAGE_SIZE = 8;
            int page = 1;
            String page_raw = request.getParameter("page");
            if (page_raw != null) {
                page = Integer.parseInt(page_raw);
            }
            String[] cid_raw = request.getParameterValues("cid");

            int[] cid = null;
            if (cid_raw != null) {
                cid = new int[cid_raw.length];
                for (int i = 0; i < cid_raw.length; i++) {
                    cid[i] = Integer.parseInt(cid_raw[i]);
                }
            }
            List<Category> listCate = new CategoryDAO().getAllCategory();
            boolean[] cid_check = new boolean[listCate.size()];
            for (int i = 0; i < listCate.size(); i++) {
                if (check(cid, listCate.get(i).getCategoryId())) {
                    cid_check[i] = true;
                } else {
                    cid_check[i] = false;
                }
            }
            List<Skin> list = new ArrayList<>();
            if (request.getParameter("max") != "" && request.getParameter("min") != "" && request.getParameter("sort") != null) {
                double max = Double.parseDouble(request.getParameter("max"));
                double min = Double.parseDouble(request.getParameter("min"));
                String sort = request.getParameter("sort");
                String sortMess = "";
                if (sort.equals("priceHL")) {
                    sortMess = "Order by skin_price DESC";
                } else if (sort.equals("priceLH")) {
                    sortMess = "Order by skin_price ASC";
                } else if (sort.equals("nameLH")) {
                    sortMess = "Order by skin_name ASC";
                } else {
                    sortMess = "Order by skin_name DESC";
                }
                list = new ProductDAO().getAllSkinByFilter(cid, max, min, sortMess);
            } else if (request.getParameter("max") != "" && request.getParameter("min") != "" && request.getParameter("sort") == null) {
                double max = Double.parseDouble(request.getParameter("max"));
                double min = Double.parseDouble(request.getParameter("min"));
                list = new ProductDAO().getAllSkinByFilter(cid, max, min, "");
            } else if (request.getParameter("max") == "" && request.getParameter("min") == "" && request.getParameter("sort") != null) {
                String sort = request.getParameter("sort");
                String sortMess = "";
                if (sort.equals("priceHL")) {
                    sortMess = "Order by skin_price DESC";
                } else if (sort.equals("priceLH")) {
                    sortMess = "Order by skin_price ASC";
                } else if (sort.equals("nameLH")) {
                    sortMess = "Order by skin_name ASC";
                } else {
                    sortMess = "Order by skin_name DESC";
                }
                list = new ProductDAO().getAllSkinByFilter(cid, 0, 0, sortMess);
            } else {
                list = new ProductDAO().getAllSkinByFilter(cid, 0, 0, "");
            }
            int totalPage = list.size() / PAGE_SIZE;
            if (list.size() % PAGE_SIZE != 0) {
                totalPage += 1;
            }
            int end = page * PAGE_SIZE;
            if (end > list.size()) {
                end = list.size();
            } else {
                end = page * PAGE_SIZE;
            }
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            session.setAttribute("cid_check", cid_check);
            session.setAttribute("listCate", listCate);
            List<Skin> listsub = (ArrayList<Skin>) session.getAttribute("list");
            request.setAttribute("path", "filter");
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("listProduct", listsub.subList((page - 1) * PAGE_SIZE, end));
            request.setAttribute("check", cid_check);
            request.setAttribute("listCate", listCate);
            request.getRequestDispatcher("skin.jsp").forward(request, response);
        }
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

    private boolean check(int[] cid, int id) {
        if (cid == null) {
            return false;
        } else {
            for (int i = 0; i < cid.length; i++) {
                if (id == cid[i]) {
                    return true;
                }
            }
            return false;
        }
    }

}
