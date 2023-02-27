/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.admin;

import DAO.CategoryDAO;
import DAO.ReservationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.category;
import model.reservation_counts;
import model.user;

/**
 *
 * @author admin
 */
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        user user1 = (user) request.getSession().getAttribute("admin");
        if (user1 == null) {
            PrintWriter out = response.getWriter();
            out.println("Access denied");
        } else {
            //1. Reservations Success
            ReservationDAO reserDAO = new ReservationDAO();
            int countReserSuccess = reserDAO.CountReservationByStatus(1);
            request.setAttribute("countReserSuccess", countReserSuccess);
            //2. Reservation Cancelled
            int countReserCencelled = reserDAO.CountReservationByStatus(2);
            request.setAttribute("countReserCencelled", countReserCencelled);
            //3. Reservation Submited 
            int countReserSubmited = reserDAO.CountReservationByStatus(3);
            request.setAttribute("countReserSubmited", countReserSubmited);
            //4. Revenues All
            float RevenuesAll = reserDAO.RevenuesAll();
            request.setAttribute("RevenuesAll", RevenuesAll);
            //5. Revenues By Category

            CategoryDAO cateDAO = new CategoryDAO();
            List<category> cateList = cateDAO.getAllCategory();
            List<Float> revenuesOfCate = reserDAO.RevenuesByCategoryID();
            request.setAttribute("cateList", cateList);
            request.setAttribute("revenuesOfCate", revenuesOfCate);

            //6. The trend of reservation counts (success, all) by day for the last 7 days 
            List<reservation_counts> listSuccessRes = reserDAO.getAllReservationSuccess7days();
            List<reservation_counts> listAllRes = reserDAO.getAllReservationSuccess7days();
            request.setAttribute("listSuccessRes", listSuccessRes);
            request.setAttribute("listAllRes", listAllRes);

            request.getRequestDispatcher("AdminDashBoard.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
