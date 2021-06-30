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

@WebServlet("/UpdateTech")
public class UpdateTech extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	  /**
	  * @see HttpServlet#HttpServlet()
	  */
	   public UpdateTech() {
	     super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
			
		}
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			try (PrintWriter out = response.getWriter()) {
	            /* TODO output your page here. You may use following sample code. */
	                    try{
	                 //   HttpSession session = request.getSession();
	                   // String id = session.getAttribute("id").toString();
	                  //  String nic = session.getAttribute("nic").toString();
	                    String emp_id = request.getParameter("emp_id");
	                    String first_name = request.getParameter("first_name");
	                    String last_name = request.getParameter("last_name");
	                    String phoneno = request.getParameter("phone_no");
	                    String nic = request.getParameter("nic");
	                    String email = request.getParameter("email");
	                    String birth_day = request.getParameter("birth_day");
	                    String Password = request.getParameter("pass");
	                    String address = request.getParameter("address");
	                   // session.setAttribute("nic", nic);
	                   // session.setAttribute("id", id);
	                    
	                      DBConnecter db = new DBConnecter();
	                    Connection con = db.getCon();
	                    Statement stm = con.createStatement();
	                    out.println(emp_id+" "+first_name);
	                    out.println("every things is fine date inserted... \n");
	                    stm.executeUpdate("UPDATE technician SET first_name = '"+first_name+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET last_name = '"+last_name+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET phoneno = '"+phoneno+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET nic = '"+nic+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET email = '"+email+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET birth_day = '"+birth_day+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET Password = '"+Password+"' WHERE emp_id = '"+emp_id+"'");
	                    stm.executeUpdate("UPDATE technician SET address = '"+address+"' WHERE emp_id = '"+emp_id+"'");
	                    out.println("every things is fine date inserted... \n");
	                    
	                    response.sendRedirect("viewTech.jsp");
	        } catch (Exception ex) {
                	System.out.println("Error : " + ex);
	            }
			}
		}

	}

