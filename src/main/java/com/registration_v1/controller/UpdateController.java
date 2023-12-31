package com.registration_v1.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.registration_v1.model.DAOService;
import com.registration_v1.model.DAOServiceImpl;

@WebServlet("/update")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			HttpSession session= request.getSession(false);
			if(session.getAttribute("email") !=null) {
			
			
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");

			request.setAttribute("email", email);
			request.setAttribute("mobile", mobile);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/update_registration.jsp");
			rd.forward(request, response);
		
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request,response);
			}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		try {
			
			HttpSession session= request.getSession(false);
			if(session.getAttribute("email") !=null) {
				
			
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			System.out.println("read data : " + email + " , " + mobile);

			DAOService service = new DAOServiceImpl();
			service.connectDB();
			service.updateReg(email, mobile);

			ResultSet result = service.getAllReg();

			request.setAttribute("res", result);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/list_registration.jsp");
			rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request,response);
			}

			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		  
	}

}
