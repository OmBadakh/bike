package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.FinanceDetailsDAO;
import model.FinanceDetails;

@WebServlet("/finance")
public class FinanceServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ DEBUG LINE (FIRST LINE)
        System.out.println("🔥 FinanceServlet HIT");

        FinanceDetails fd = new FinanceDetails();

        fd.setExShowroomPrice(
            Double.parseDouble(request.getParameter("exShowroomPrice"))
        );

        fd.setProcessingFee(
            Double.parseDouble(request.getParameter("processingFee"))
        );

        fd.setDownPayment(
            Double.parseDouble(request.getParameter("downPayment"))
        );

        fd.setLoanTenure(
            Integer.parseInt(request.getParameter("loanTenure"))
        );

        fd.setFinancingProvider(
            request.getParameter("financingProvider")
        );

        fd.setMonthlyEmi(
            Double.parseDouble(request.getParameter("monthlyEmi"))
        );

        fd.setGstRate(
            Double.parseDouble(request.getParameter("gstRate"))
        );

        fd.setInterestRate(
            Double.parseDouble(request.getParameter("interestRate"))
        );

        FinanceDetailsDAO dao = new FinanceDetailsDAO();

        boolean saved = dao.saveFinanceDetails(fd);

        request.setAttribute("finance", fd);
        request.setAttribute("saved", saved);

        request.getRequestDispatcher("/jsp/summary.jsp")
               .forward(request, response);
    }
}
