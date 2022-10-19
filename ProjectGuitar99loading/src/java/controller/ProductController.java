/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.GuitarFacade;
import model.Product;

/**
 *
 * @author tuan vu
 */
@WebServlet(name = "ProductController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    List<Product> list = null;

    @Override
    public void init() throws ServletException {
        super.init();
        GuitarFacade gf = new GuitarFacade();
        list = gf.select();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = (String) request.getAttribute("action");
        String controller = (String) request.getAttribute("controller");
        switch (action) {
            case "takamine-gd15ce":
                listTakamine(request, response);
                break;
            case "fender-cd-60s":
                listFender(request, response);
                break;
            case "cordoba-55FCE":
                listCor55(request, response);
                break;
            case "cordoba-45LTD":
                listCor45(request, response);
                break;
            case "addCart":
                init();
                addCart(request, response);
                break;
            case "fender-player":
                listFenderPlayer(request, response);
                break;
            case "squier-affinity":
                listSquier(request, response);
                break;
            case "roland-g-5":
                listRoland(request, response);
                break;
            case "fender-venice":
                listFenderVenice(request, response);
                break;
            case "Tanglewood-Dreadnought":
                listTanglewood(request, response);
                break;
            case "Takamine-TH90":
                listTaka90(request, response);
                break;
            case "Squier-Affinity-Series":
                listSquierAS(request, response);
                break;
            case "Squier-Affinity-J":
                listSquierAJ(request, response);
                break;
        }
        request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
    }

    protected void addCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int proId = Integer.parseInt(request.getParameter("proId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int num = Integer.parseInt(request.getParameter("numDB"));
        String url = request.getParameter("page");
        if (quantity <= num) {
            Product pr = list.get(proId - 1);
            pr.setQuantity(quantity);
            Cart cart = (Cart) session.getAttribute("cartT");
            if (cart == null) {
                cart = new Cart();
            }
            cart.add(pr);
            session.setAttribute("cartT", cart);
            request.setAttribute("quantity", quantity);
            request.getRequestDispatcher(url).forward(request, response);
        } else {
            String rs = "Please Buy Quantity <=";
            request.setAttribute("result", rs);
            request.setAttribute("num", num);
            request.setAttribute("quantity", quantity);
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    protected void listTakamine(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product takemine = list.get(0);
        request.setAttribute("list", takemine);
    }

    protected void listFender(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product fender = list.get(1);
        request.setAttribute("list", fender);
    }

    protected void listFenderVenice(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product fenderV = list.get(6);
        request.setAttribute("list", fenderV);
    }

    protected void listCor55(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product cor55 = list.get(2);
        request.setAttribute("list", cor55);
    }

    protected void listCor45(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product cor45 = list.get(3);
        request.setAttribute("list", cor45);
    }

    protected void listSquier(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product squier = list.get(5);
        request.setAttribute("list", squier);
    }

    protected void listFenderPlayer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product fenderP = list.get(4);
        request.setAttribute("list", fenderP);
    }

    protected void listRoland(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product roland = list.get(7);
        request.setAttribute("list", roland);
    }

    protected void listTanglewood(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product tl = list.get(8);
        request.setAttribute("list", tl);
    }

    protected void listTaka90(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product t90 = list.get(9);
        request.setAttribute("list", t90);
    }

    protected void listSquierAS(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product t90 = list.get(10);
        request.setAttribute("list", t90);
    }

    protected void listSquierAJ(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product t90 = list.get(11);
        request.setAttribute("list", t90);
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
