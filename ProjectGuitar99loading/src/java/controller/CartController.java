/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Cart;
import model.GuitarFacade;
import model.Product;

/**
 *
 * @author tuan vu
 */
@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = (String) request.getAttribute("action");
        String controller = (String) request.getAttribute("controller");
        switch (action) {
            case "cart":
                break;
            case "delete":
                delete(request, response);
                break;
            case "buy":
                buy(request, response);
                break;
        }
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    protected void buy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // lay data session
        HttpSession ses = request.getSession();
        Cart cart = (Cart) ses.getAttribute("cartT");
        Account ac = (Account) ses.getAttribute("account");
        if (ac != null) {
            // lay data cart
            int idCart = Integer.parseInt(request.getParameter("idCart"));
            int numSelect = Integer.parseInt(request.getParameter("box"));
            long price = Long.valueOf(request.getParameter("price"));
            int idProduct = Integer.parseInt(request.getParameter("idProduct"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int idCustomer = ac.getIdCus();
            int idBill = 0;
            String success = "Buy Product Success";
            String delete = "Buy Product Fail";
            // save data vao customer
            if (numSelect == 1) {
                GuitarFacade gf = new GuitarFacade();
                if (gf.insertBill(idCustomer, idProduct)) {
                    idBill = gf.takeBillId(idCustomer, idProduct);
                    if (gf.insertBillDetails(idBill, quantity, price,idProduct)) {
                        cart.empty(idCart - 1);
                        request.setAttribute("success", success);
                        request.getRequestDispatcher("/cart/cart.do").forward(request, response);
                    }
                } else {
                    request.setAttribute("delete", delete);
                    request.getRequestDispatcher("/cart/cart.do").forward(request, response);
                }
            }
        } else {
            String delete = "Please Login Account To Order!!!";
            request.setAttribute("delete", delete);
            request.getRequestDispatcher("/cart/cart.do").forward(request, response);
        }
    }

    protected void delete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("box"));
        String delete = "Delete Product From The Cart Success!";
        HttpSession ses = request.getSession();
        Cart cart = (Cart) ses.getAttribute("cartT");
        if (num !=0) {
            cart.empty(num - 1);
        } else {
            cart.empty();
        }
        request.setAttribute("delete", delete);
        request.getRequestDispatcher("/cart/cart.do").forward(request, response);
    }

    protected void displayProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void event(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        processRequest(request, response);
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
