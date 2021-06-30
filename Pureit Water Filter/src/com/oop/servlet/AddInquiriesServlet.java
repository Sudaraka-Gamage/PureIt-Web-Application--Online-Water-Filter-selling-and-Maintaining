package com.oop.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Inquiries;
import com.oop.service.InquiriesServiceImpl;
import com.oop.service.IInquiriesService;

@WebServlet("/AddInquiriesServlet")
public class AddInquiriesServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Inquiries inq =  new Inquiries();
		
		inq.setContactNumber(request.getParameter("contactnumber"));
		inq.setProblemDescription(request.getParameter("problemdescription"));
		inq.setPriority(request.getParameter("priority"));
		inq.setTechnician(request.getParameter("empid"));
		
	
		IInquiriesService iInquiriesService = new InquiriesServiceImpl();
		iInquiriesService.addInquiries(inq);
		
		request.setAttribute("inq", inq);
		response.sendRedirect("inquiries.jsp");
	
	}

}
