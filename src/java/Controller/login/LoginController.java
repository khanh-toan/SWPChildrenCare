/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.login;

import DAO.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.user;

/**
 *
 * @author admin
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // trường hợp đã lưu remember me thì lần tới đăng nhập nó sẽ không yêu cầu đăng nhập thêm
        // processRequest(request, response);
        // kiem tra cookie
        Cookie[] cookies = request.getCookies(); // lay cookies
        String user_email = null;
        String password = null;
        // lay usename va password do voa xem no co hop le khong
        for (Cookie cooky : cookies) {
            if (cooky.getName().equals("user_email")) { //neu bang thi luu vao username
                user_email = cooky.getValue();
            }
            if (cooky.getName().equals("password")) { //neu bang thi luu vao username
                password = cooky.getValue();
            }
            if (user_email != null && password != null) {
                break;
            }
        }
        //kiem tra da co trong trinh duyet, neu co thi mang di login
        //co the co trong trinh duyet nhung da doi mat khau
        if (user_email != null && password != null) {
            user account = new UserDAO().login(user_email, password);
            if (account != null) { // cookies hop le thi cho no dang nhap
                request.getSession().setAttribute("account", account);
            }
        }
        // con khong hop le thi cho ve trang login
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user_email = request.getParameter("user_email");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        //check usename vaf password
        user account = new UserDAO().login(user_email, password);

        if (account != null) {
            if (remember != null) {
                Cookie user_emailCookie = new Cookie("user_email", user_email);
                user_emailCookie.setMaxAge(60 * 60 * 24);
                Cookie passwordCookie = new Cookie("password", password);
                passwordCookie.setMaxAge(60 * 60 * 24);
                response.addCookie(user_emailCookie);
                response.addCookie(passwordCookie);
            } 
            if (account.getUser_role() != 1) {
                request.getSession().setAttribute("account", account); // luu len session
                response.sendRedirect("home");
            } else if (account.getUser_role() == 1) {
                request.getSession().setAttribute("admin", account); // luu len session
                response.sendRedirect("home");
            }//Auth for Docter
            else if (account.getUser_role() == 2) {
                request.getSession().setAttribute("doctor", account); // luu len session
                response.sendRedirect("staff");
            } //Auth for Nurse
            else if (account.getUser_role() == 3) {
                request.getSession().setAttribute("nurse", account); // luu len session
                response.sendRedirect("staff");
            } //Auth for Customer
            else if (account.getUser_role() == 4) {
                request.getSession().setAttribute("customer", account); // luu len session
                response.sendRedirect("home");
            } //Auth for Users
            else if (account.getUser_role() == 5) {
                request.getSession().setAttribute("manager", account); // luu len session
                response.sendRedirect("home");
            }
        } else {         // khong hop le => tra ve loi
            request.setAttribute("error", "Username or password incorrect!. Please try again!");
            request.setAttribute("user_email", user_email);
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
