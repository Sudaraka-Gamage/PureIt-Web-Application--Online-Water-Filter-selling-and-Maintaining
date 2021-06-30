<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import = "com.oop.model.Inquiries" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "com.oop.service.InquiriesServiceImpl" %>
<%@page import = "com.oop.service.IInquiriesService"  %>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.*" %>

<%
	String in_ID = request.getParameter("hid_ID");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Pureit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<h3><%=in_ID%></h3> 
    <!--body area-->
    <div>

        <!--header area-->
        <div class="header">

            <!--header inner area-->
            <div class="header_inner_area_other">

                <!--navigator + logo area-->
                <div class="h_top">

                    <!--logo area-->
                    <a href="dashboard.jsp"><div class="logo"></div></a>

                    <!--Navigator area-->
                    <div class="navi">
                        <div class="navi">
                        <a href="dashboard.jsp"><button class="navi_button">Dashboard</button></a>
                        <a href="calls.jsp"><button class="navi_button">Calls</button></a>
                        <a href="inquiries.jsp"><button class="navi_button">Inquiries</button></a>
                        <a href="customers.jsp"><button class="navi_button">Customers</button></a>
                        <a href="viewTech.jsp"><button class="navi_button">Technicians</button></a>
                        <a href="feedbacks.jsp"><button class="navi_button">Feedback</button></a>                       
                    </div>
                    </div>

                    <div class="navi_p2">
                        <form action="Logout" method="post">
                        	<button type="submit" class="navi_button">Sign Out</button>
                        </form>
                    </div>
                </div>

                <!--search area-->
                <div class="search_other">
                    <form >
                        <input class="input_search" type="text" name="search" placeholder="Search" formaction="">
                    </form>
                </div>

                <!--header image area-->
                <div class="header_image_other">
                    Feedbacks_
                </div>
            </div>
        </div>

        <!--content area-->
        <div class="content">

            <!--inner_content_1 area-->
            <div class="inner_content_1">
			
				<br>
				<br>
				<br>
				
				<h2> Update Feedback Details</h2>
				
				<br>
				<br>
				<br>

				<% %>
				<form method="post" action="UpdateFeedbackServlet">
					<table>				
						<%
						try {
							
							Class.forName("com.mysql.jdbc.Driver");
							Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
							
							PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM feedback where feedbackid = '" + in_ID + "' ");
							
							ResultSet rs = myStmt.executeQuery();
							
							while( rs.next() ) {			
						
								%>
									<tr>
										<td>Feedback ID :</td>
										<td> <input type = "text" name="feedbackid" class="input_style1" value = "<%=rs.getString("feedbackid")%>" readonly style="background-color: #b8b8b8;" > 
										<input type = "hidden" name = "hid_IDp2" value = "<%=rs.getString("feedbackid") %>"></td>
									</tr>
									<tr>
										<td>No of Stars :</td>
										<td> <input type = "text" name="noofstars" class="input_style1" value = "<%=rs.getString("noofstars")%>" > </td>
									</tr>
									<tr>
										<td>Description :</td>
										<td><input type = "text" name="description" class="input_style1" value = "<%=rs.getString("description") %>"> </td>
									</tr>
									<tr>
										<td>Inquiry ID :</td>
										<td><input type = "text" name="inquiryid" class="input_style1" value = "<%=rs.getString("inquiryid") %>"> </td>
									<tr>
										<td>Customer ID :</td>
										<td><input type = "text" name="custid" class="input_style1" value = "<%=rs.getString("custid") %>"> </td>
									</tr>
									
								<%
							}
									
							}catch(Exception  e) {
								System.out.println("Exception : " + e );
							}
							%>
					</table>
					
					<input type="submit" class="form_button" value="Update"> 				
				</form>
				
				<form method=post action="DeleteFeedbackServlet">
					<table>				
						<%
						try {
							
							Class.forName("com.mysql.jdbc.Driver");
							Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
							
							PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM feedback where feedbackid = '" + in_ID + "' ");
							
							ResultSet rs = myStmt.executeQuery();
							
							while( rs.next() ) {

							%>
									<tr>
										<td> <input type = "hidden" name="feedbackid" class="input_style1" value ="<%=rs.getString("feedbackid")%>" readonly style="background-color: #b8b8b8;" > 
										<input type = "hidden" name = "hid_IDp2" value = "<%=rs.getString("feedbackid") %>"></td>
									</tr>
							<%
							}
									
							}catch(Exception  e) {
								System.out.println("Exception : " + e );
							}
							%>
					</table>
					<input type="submit" class="form_button" value="Delete Record">
				</form>
				 
            </div>
        </div>

        <!--footer area-->
        <div class="footer">

            <!--footer inner area-->
            <div class="footer_inner_area">

                <!-- footer row 2 -->
                <div class="footer_row">
                    <!-- footer column -->
                    <div class="r2_c">
                        © Infinartz 2018<br>
                        All rights reserved
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>