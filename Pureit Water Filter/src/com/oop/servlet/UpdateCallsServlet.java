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

@WebServlet("/UpdateCallsServlet")
public class UpdateCallsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Calls inq =  new Calls();
		
		inq.setCallID(request.getParameter("callid"));
		inq.setDate(request.getParameter("date"));
		inq.setStatus(request.getParameter("status"));
		inq.setProblemID(request.getParameter("problemid"));
		inq.setEmpID(request.getParameter("empid"));
		inq.setCustID(request.getParameter("custid"));
	
		ICallsService iCallsService = new CallsServiceImpl();
		iCallsService.updateCalls(inq);
		
		request.setAttribute("inq", inq);
		response.sendRedirect("calls.jsp");
		
		System.out.println(inq.getStatus());
		
	}
}
