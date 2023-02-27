/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.login;

import DAO.UserDAO;
import SendEmail.SendEmailRegister;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.UserRegister;
import model.user;
/**
 *
 * @author admin
 */
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        Boolean gender = Boolean.valueOf("gender");
        String address = request.getParameter("address");
        String useremail = request.getParameter("useremail");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String repeatpassword = request.getParameter("repeatpassword");

        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        session.setAttribute("gender", gender);
        session.setAttribute("address", address);
        session.setAttribute("useremail", useremail);
        session.setAttribute("phone", phone);
        session.setAttribute("password", password);
        session.setAttribute("repeatpassword", repeatpassword);

        String regex = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";

        UserDAO accountDao = new UserDAO();
        user account = accountDao.checkAccountExit(useremail);

        if (account != null) {
            request.setAttribute("error", "acount have exist!");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else if (!phone.matches(regex)) {
            request.setAttribute("error", "Invalid phone number!!!");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else {
            if (!password.equals(repeatpassword)) {
                request.setAttribute("error", "Pass not equal Repeatpassword!");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            } else {
                 //create instance object of the SendEmail Class
                SendEmailRegister sm = new SendEmailRegister();
                //get the 6-digit code
                String code = sm.getRandom();

                //craete new user using all information
                UserRegister user = new UserRegister(username, useremail, code);
                String text = "Hello " + user.getName() + ". You have successfully registered. Your code is: " + user.getCode()
                        + ". Please use this code to authenticate to our website!";
                //call the send email method
                boolean test = sm.sendEmail(user, text);
                

                //check if the email send successfully
                if (test) {
                    session.setAttribute("authcode", user);
                    response.sendRedirect("VerifyRegister.jsp");
                } else {
                    System.out.println("Failed to send verification email!");
                }
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
