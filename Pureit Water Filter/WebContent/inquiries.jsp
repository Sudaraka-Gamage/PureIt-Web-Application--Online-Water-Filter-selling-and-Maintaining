<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import = "com.oop.model.Inquiries" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "com.oop.service.InquiriesServiceImpl" %>
<%@page import = "com.oop.service.IInquiriesService"  %>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Pureit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <style>
		table {
    	font-family: arial, sans-serif;
    	border-collapse: collapse;
    	width: 100%;
		}

		td, th {
    	border: 1px solid #a7a7a7;
    	text-align: left;
    	padding: 8px;
		}

		tr:nth-child(even) {
    	background-color: #dddddd;
		}
    
    </style>

</head>
<body>

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
			
				<table border = "1">
					<tr>
						<th> Inquiry ID </th>
						<th> Call ID </th>
						<th> Status </th>
						<th> Contact Number </th>
						<th> Problem Description </th>
						<th> Priority </th>
						<th> Technician </th>
					</tr>
					
					<%
					try {
						
						Class.forName("com.mysql.jdbc.Driver");
						Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
						
						PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM inquiry");
						
						ResultSet rs = myStmt.executeQuery();
						
						while( rs.next() ) {
							
						
					
					%>
					<form action="updateinquiries.jsp" method="post">
					<tr>
						<td> <%=rs.getString("inquiryid") %><input type = "hidden" name = "hid_ID" value = "<%=rs.getString("inquiryid") %>"></td>
						<td> <%=rs.getString("callid") %></td>
						<td> <%=rs.getString("status") %></td>
						<td> <%=rs.getString("contactnumber") %></td>
						<td> <%=rs.getString("problemdescription") %></td>
						<td> <%=rs.getString("priority") %></td>
						<td> <%=rs.getString("empid") %></td>
						<td> <button type="submit">Update / Delete</button> </td>
					</tr>
					
					</form>
					<%
						}
						
					}catch(Exception  e) {
						System.out.println("Exception : " + e );
					}
					%>
					
				</table>
				
				<br>
				
				<form method=post action="addinquiries.jsp">
				
					<input type="submit" class="form_button" value="Add Inquiry">
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