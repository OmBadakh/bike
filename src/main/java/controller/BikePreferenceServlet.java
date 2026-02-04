package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.BikePreferenceDAO;
import model.BikePreference;

@WebServlet("/bikePreference")
public class BikePreferenceServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("🔥 BikePreferenceServlet HIT");

        // Read values from JSP
        String budget = request.getParameter("budget");
        String mileage = request.getParameter("mileage");
        String bikeName = request.getParameter("bikeName");
        String state = request.getParameter("state");
        String brand = request.getParameter("brand");
        String bikeCc = request.getParameter("bikeCc");
        String fuel = request.getParameter("fuel");

        // Store in Model
        BikePreference bp = new BikePreference();
        bp.setBudgetRange(budget);
        bp.setMileage(mileage);
        bp.setRecommendedBike(bikeName);
        bp.setState(state);
        bp.setBrand(brand);
        bp.setEngineCc(bikeCc);
        bp.setFuelType(fuel);

        // Save using DAO
        BikePreferenceDAO dao = new BikePreferenceDAO();
        boolean status = dao.saveBikePreference(bp);

        if (status) {
            System.out.println("✅ Bike Preference Saved");
            response.sendRedirect("jsp/finance.jsp");
        } else {
            System.out.println("❌ Bike Preference Save Failed");
            response.sendRedirect("jsp/bike.jsp");
        }
    }
}
