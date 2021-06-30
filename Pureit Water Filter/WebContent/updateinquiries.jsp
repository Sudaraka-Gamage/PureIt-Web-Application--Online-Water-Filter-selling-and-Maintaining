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
                    Inquiries_
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
				
				<h2> Update Inquiry Details</h2>
				
				<br>
				<br>
				<br>
				


				<form method="post" action="UpdateInquiriesServlet">
					<table>				
						<%
						try {
							
							Class.forName("com.mysql.jdbc.Driver");
							Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
							
							PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM inquiry where inquiryid = '" + in_ID + "' ");
							
							ResultSet rs = myStmt.executeQuery();
							
							while( rs.next() ) {

						%>
									<tr>
										<td>Inquiry ID :</td>
										<td> <input type = "text" name="inquiryid" class="input_style1" value ="<%=rs.getString("inquiryid")%>" readonly style="background-color: #b8b8b8;" > 
										<input type = "hidden" name = "hid_IDp2" value = "<%=rs.getString("inquiryid") %>"></td>
									</tr>
									<tr>
										<td>Status :</td>
										<td> <input type = "text" name="status" class="input_style1" value = "<%=rs.getString("status")%>" > </td>
									</tr>
									<tr>
										<td>Contact Number :</td>
										<td> <input type = "text" name="contactnumber" class="input_style1" value = "<%=rs.getString("contactnumber") %>"> </td>
									</tr>
									<tr>
										<td>Problem Description :</td>
										<td><input type = "text" name="problemdescription" class="input_style1" value = "<%=rs.getString("problemdescription") %>"> </td>
									</tr>
									<tr>
										<td>Priority :</td>
										<td><input type = "text" name="priority" class="input_style1" value = "<%=rs.getString("priority") %>"> </td>
									<tr>
										<td>Assigned Technician :</td>
										<td><input type = "text" name="empid" class="input_style1" value = "<%=rs.getString("empid") %>"> </td>
									</tr>
									<tr>
										<td>Call ID :</td>
										<td><input type = "text" name="callid" class="input_style1" value = "<%=rs.getString("callid") %>" readonly style="background-color: #b8b8b8;" > </td>
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
				
				<form method=post action="DeleteInquiriesServlet">
					<table>				
						<%
						try {
							
							Class.forName("com.mysql.jdbc.Driver");
							Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
							
							PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM inquiry where inquiryid = '" + in_ID + "' ");
							
							ResultSet rs = myStmt.executeQuery();
							
							while( rs.next() ) {

							%>
									<tr>
										<td> <input type = "hidden" name="inquiryid" class="input_style1" value ="<%=rs.getString("inquiryid")%>" readonly style="background-color: #b8b8b8;" > 
										<input type = "hidden" name = "hid_IDp2" value = "<%=rs.getString("inquiryid") %>"></td>
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