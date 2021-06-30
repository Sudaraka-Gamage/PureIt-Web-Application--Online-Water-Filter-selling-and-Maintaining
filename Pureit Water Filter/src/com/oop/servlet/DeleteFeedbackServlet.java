package com.oop.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Feedback;
import com.oop.service.FeedbackServiceImpl;
import com.oop.service.IFeedbackService;

@WebServlet("/DeleteFeedbackServlet")
public class DeleteFeedbackServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Feedback inq =  new Feedback();
		
		inq.setFeedbackID(request.getParameter("feedbackid"));
	
		IFeedbackService iFeedbackService = new FeedbackServiceImpl();
		iFeedbackService.deleteFeedback(inq);
		
		request.setAttribute("inq", inq);
		response.sendRedirect("feedbacks.jsp");
	}
}
