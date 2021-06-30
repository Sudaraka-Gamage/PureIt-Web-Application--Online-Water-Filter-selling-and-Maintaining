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

@WebServlet("/AddTechnician")
public class AddTechnician extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	
		String newPassword;
	
	   public AddTechnician() {
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
	            try {
				//doGet(request, response);
				//session
				 //HttpSession session = request.getSession();
	             //
	                    System.out.println("every things is fine date inserted... \n");
	                    String emp_id = request.getParameter("emp_id");
	                    String first_name = request.getParameter("first_name");
	                    String last_name = request.getParameter("last_name");
	                    String gender = request.getParameter("gender");
	                    String phoneno = request.getParameter("phone_no");
	                    String nic = request.getParameter("nic");
	                    String email = request.getParameter("email");
	                    String birth_day = request.getParameter("birth_day");
	                    String Password = request.getParameter("pass");
	                    String Cpass = request.getParameter("con-pass");
	                    String address = request.getParameter("address");
	                    
	                    
	                    if(Password.equals(Cpass)) {
	                    	newPassword = Password;
	                    }
	                 
	                    DBConnecter db = new DBConnecter();
	                    Connection con1 = db.getCon();
	                    System.out.println("every things is fine date inserted... \n");
	                    Statement stm = con1.createStatement();
	                    stm.executeUpdate("insert into technician (emp_id,first_name,last_name,gender,phoneno,nic,email,birth_day,Password,address) values ('"+emp_id+"','"+first_name+"','"+last_name+"','"+gender+"','"+phoneno+"','"+nic+"','"+email+"','"+birth_day+"','"+Password+"','"+address+"')" );
	                    System.out.println("every things is fine date inserted... \n");
	                    response.sendRedirect("viewTech.jsp");
	            
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
			try (PrintWriter out = response.getWriter()) {
	            try {
				//doGet(request, response);
				//session
				 //HttpSession session = request.getSession();
	             //
	                    System.out.println("every things is fine date inserted... \n");
	                    String emp_id = request.getParameter("emp_id");
	                    String first_name = request.getParameter("first_name");
	                    String last_name = request.getParameter("last_name");
	                    String gender = request.getParameter("gender");
	                    String phoneno = request.getParameter("phone_no");
	                    String nic = request.getParameter("nic");
	                    String email = request.getParameter("email");
	                    String birth_day = request.getParameter("birth_day");
	                    String Password = request.getParameter("pass");
	                    String address = request.getParameter("address");
	                    DBConnecter db = new DBConnecter();
	                    Connection con1 = db.getCon();
	                    System.out.println("every things is fine date inserted... \n");
	                    Statement stm = con1.createStatement();
	                    stm.executeUpdate("insert into technician (emp_id,first_name,last_name,gender,phoneno,nic,email,birth_day,Password,address) values ('"+emp_id+"','"+first_name+"','"+last_name+"','"+gender+"','"+phoneno+"','"+nic+"','"+email+"','"+birth_day+"','"+Password+"','"+address+"')" );
	                    System.out.println("every things is fine date inserted... \n");
	                    response.sendRedirect("viewTech.jsp");
	            
	        } catch (Exception ex) {
                	System.out.println("Error : " + ex);
	            }
			}
		}

	}


