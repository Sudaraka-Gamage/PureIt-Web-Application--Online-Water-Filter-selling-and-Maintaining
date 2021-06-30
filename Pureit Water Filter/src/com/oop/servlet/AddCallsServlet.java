package com.oop.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Calls;
import com.oop.service.CallsServiceImpl;
import com.oop.service.ICallsService;

@WebServlet("/AddCallsServlet")
public class AddCallsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Calls inq =  new Calls();
		
		inq.setStatus(request.getParameter("status"));
		inq.setProblemID(request.getParameter("problemid"));
		inq.setEmpID(request.getParameter("empid"));
		inq.setCustID(request.getParameter("custid"));
		inq.setDate(request.getParameter("date"));
		
	
		ICallsService iCallsService = new CallsServiceImpl();
		iCallsService.addCalls(inq);
		
		request.setAttribute("inq", inq);
		response.sendRedirect("calls.jsp");
	
	}

}
