package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hardcoded login check
        if ("Om".equals(username) && "1234".equals(password)) {

            HttpSession session = request.getSession();
            session.setAttribute("loggedInUser", username);

            // Redirect to Personal Details page
            response.sendRedirect(request.getContextPath() + "/jsp/personal.jsp");
        } else {
            // Redirect back to login with error
            response.sendRedirect("login.jsp?error=true");
        }
    }
}