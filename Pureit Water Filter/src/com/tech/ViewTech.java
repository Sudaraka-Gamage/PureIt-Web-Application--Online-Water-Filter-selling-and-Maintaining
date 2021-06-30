package com.tech;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ViewTech")
public class ViewTech extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public ViewTech() {
	     super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			try (PrintWriter out = response.getWriter()) {
	            try{
	                    
	             //      session.setAttribute("emp_id", emp_id);
	                    String id = request.getParameter("id");
	                    String update = request.getParameter("update");
	                    String remove = request.getParameter("remove");
	                    
	                    HttpSession session = request.getSession();
	                   
	                    String continueb = request.getParameter("continueb");
	                    DBConnecter db = new DBConnecter();
	                    Connection con = db.getCon();
	                    Statement stm = con.createStatement();
	                    if("1".equals(update)){
	                        session.setAttribute("emp_id", id);
	                        response.sendRedirect("updateTech.jsp");
	                    }
	                    else if("2".equals(remove)){
	                    String SQL = "DELETE FROM technician WHERE emp_id = '"+id+"'";
	                    stm.executeUpdate(SQL);
	                    out.println("every things is fine date deleted...");
	                    response.sendRedirect("viewTech.jsp");
	                    }
	                    else if("Add a new Technician".equals(continueb)){
	                        response.sendRedirect("addTech.jsp");
	                    }
	            } catch (Exception ex) {
                	System.out.println("Error : " + ex);
	            }
			}
		}
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
		}

	}

