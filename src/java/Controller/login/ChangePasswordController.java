/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.login;

import DAO.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.user;

/**
 *
 * @author admin
 */
public class ChangePasswordController extends HttpServlet {

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
        request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //HttpSession sessionchangepass = request.getSession();
        String user_email = request.getParameter("user_email");
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String repeatnewpassword = request.getParameter("repeatpassword");
        
        UserDAO userDao = new UserDAO();
        user account = userDao.checkAccountExit(user_email);

        if (account == null) {
                request.setAttribute("c", "The account doesn't exist yet!");
                request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
            } else if (newpassword.equals(oldpassword)) {
                request.setAttribute("c", "The new password must not be the same as the old password!");
                request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
            } else if(!newpassword.equals(repeatnewpassword)){
                request.setAttribute("c", "The repeat new password must be the same as the new password!");
                request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
            }else{
                userDao.changePasword(user_email, newpassword);
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
