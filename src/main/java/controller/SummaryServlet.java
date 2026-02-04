package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.FinanceDetailsDAO;
import model.FinanceDetails;

@WebServlet("/summary")
public class SummaryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        FinanceDetailsDAO dao = new FinanceDetailsDAO();
        FinanceDetails fd = dao.getLatestFinanceDetails(); // ✅ NOW EXISTS

        request.setAttribute("finance", fd);
        request.getRequestDispatcher("/jsp/summary.jsp")
               .forward(request, response);
    }
}