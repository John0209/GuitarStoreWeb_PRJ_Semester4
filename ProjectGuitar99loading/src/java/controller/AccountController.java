package controller;

/*
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import config.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Customer;
import model.GuitarFacade;
import model.Order;
import model.Product;

/**
 *
 * @author tuan vu
 */
@WebServlet(name = "AccountController", urlPatterns = {"/account"})
public class AccountController extends HttpServlet {

    List<Customer> list = null;
    List<Order> listOrder = null;

    @Override
    public void init() throws ServletException {
        super.init();
        GuitarFacade gf = new GuitarFacade();
        list = gf.selectAccount();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        response.setContentType("text/html;charset=UTF-8");
        String action = (String) request.getAttribute("action");
        String controller = (String) request.getAttribute("controller");
        switch (action) {
            case "login":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "regester":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "Create_Account":
                Create_Account(request, response);
                break;
            case "loginAccount":
                init();
                LoginAccount(request, response);
                break;
            case "loginWeb":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "order":
                order(request, response);
                break;
            case "orderList":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        HttpSession hsa = request.getSession();
        hsa.invalidate();
        request.getRequestDispatcher("/home/index.do").forward(request, response);
    }

    protected void order(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        Account ac = (Account) ses.getAttribute("account");
        int idCustomer = ac.getIdCus();
        GuitarFacade gf = new GuitarFacade();
        listOrder = gf.selectOrder(idCustomer);
        ses.setAttribute("listOrder", listOrder);
        request.getRequestDispatcher("/account/orderList.do").forward(request, response);
    }

    protected void LoginAccount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        //request information
        String id = request.getParameter("account");
        String pass = request.getParameter("password");
        boolean test = true;
        int idCus = 0;
        idCus = customerID(idCus, id);
        //take date check 
        String passR = "";
        request.setAttribute("ac", id);
        request.setAttribute("pa", pass);
        //save account
        if (testAccount(id, pass, passR, request, response)) {
            HttpSession hs = request.getSession();
            Account acSession = (Account) hs.getAttribute("account");
            if (acSession == null) {
                acSession = new Account();
            }
            acSession = new Account(id, pass, test, idCus);
            hs.setAttribute("account", acSession);
            request.getRequestDispatcher("/home/index.do").forward(request, response);
        } else {
            request.getRequestDispatcher("/account/loginWeb.do").forward(request, response);
        }
    }

    protected int customerID(int idcus, String id) {
        for (Customer ac : list) {
            if (ac.getAccountID().toLowerCase().compareTo(id.toLowerCase()) == 0) {
                idcus = ac.getCustomerID();
            }
        }
        return idcus;
    }

    protected boolean testAccount(String id, String pass, String passR, HttpServletRequest request, HttpServletResponse response) throws NoSuchAlgorithmException {
        for (Customer ac : list) {
            if (ac.getAccountID().toLowerCase().compareTo(id.toLowerCase()) == 0) {
                passR = ac.getPassword();
                if (checkPassword(pass, passR)) {
                    return true;
                } else {
                    request.setAttribute("result", "Password Is Error!!!");
                    return false;
                }
            }
        }
        request.setAttribute("result", "Account Is Error!!!");
        return false;
    }

    public boolean checkPassword(String pass, String passR) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        //chuyen sang kieu du lieu array byte
        byte[] hashByte = md.digest(pass.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : hashByte) {
            //in theo hex String format,<2 se in số 0 bên phải
            sb.append(String.format("%02x", b));
        }
        if (sb.toString().equals(passR)) {
            return true;
        } else {
            return false;
        }
    }

    public boolean checkAccount(String id) {
        for (Customer ac : list) {
            if (ac.getAccountID().toLowerCase().compareTo(id.toLowerCase()) == 0) {
                return false;
            }
        }
        return true;
    }

    protected void Create_Account(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            String id = request.getParameter("account");
            String pass = request.getParameter("password");
            String name = request.getParameter("nameCustomer");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            int phone = Integer.parseInt(request.getParameter("phone"));
            Customer ac = new Customer();
            String hash = HashingPass(pass);
            ac.setAccountID(id);
            ac.setPassword(hash);
            ac.setNameCus(name);
            ac.setAddress(address);
            ac.setEmail(email);
            ac.setPhone(phone);
            GuitarFacade gf = new GuitarFacade();
            request.setAttribute("ac", ac);
            if (checkAccount(id)) {
                if ((pass != "" && name != "" && address != "") && gf.CreateAccount(ac)) {
                    request.getRequestDispatcher("/home/index.do").forward(request, response);
                    return;
                } else {
                    request.setAttribute("result", "Can't Create Account!!");
                }
            } else {
                request.setAttribute("result", "Account Is Exist!!!");
                request.getRequestDispatcher("/account/regester.do").forward(request, response);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        request.getRequestDispatcher("/account/regester.do").forward(request, response);
    }

    protected String HashingPass(String pass) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashByte = md.digest(pass.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : hashByte) {
            //in theo hex String format,<2 se in số 0 bên phải
            sb.append(String.format("%02x", b));
        }
        pass = sb.toString();
        return pass;
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
