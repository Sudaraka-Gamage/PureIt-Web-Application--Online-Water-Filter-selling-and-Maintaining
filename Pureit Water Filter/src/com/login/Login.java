package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginDao dao = new LoginDao();
		
		if(dao.check(username, password))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("dashboard.jsp");
		}
		else
		{
			response.sendRedirect("sign_in_unsuccessful.jsp");
		}
	}

}
