package com.registration_v1.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.registration_v1.model.DAOService;
import com.registration_v1.model.DAOServiceImpl;

@WebServlet("/saveReg")
public class NewRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NewRegistrationController() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
     System.out.println(session.getAttribute("email"));
        if (session.getAttribute("email") != null) {
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/new_registration.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession(false);
            
            if ( session.getAttribute("email") != null) {
                String name = request.getParameter("name");
                String age = request.getParameter("age");
                String weight = request.getParameter("weight");
                String city = request.getParameter("city");
                String email = request.getParameter("email");
                String mobile = request.getParameter("mobile");
                String bloodgroup = request.getParameter("bloodgroup");

                DAOService service = new DAOServiceImpl();
                service.connectDB();
                service.saveReg(name, age, weight, city, email, mobile, bloodgroup);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/new_registration.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }


}
