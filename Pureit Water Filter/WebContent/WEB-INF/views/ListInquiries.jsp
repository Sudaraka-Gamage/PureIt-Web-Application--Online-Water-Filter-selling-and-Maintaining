<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import = "com.oop.model.Inquiries" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "com.oop.service.InquiriesServiceImpl" %>
<%@page import = "com.oop.service.IInquiriesService"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Pureit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

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
                        <a href="dashboard.jsp"><button class="navi_button">Dashboard</button></a>
                        <a href="customers.html"><button class="navi_button">Customers</button></a>
                        <a href="technicians.html"><button class="navi_button">Technicians</button></a>
                        <a href="inquiries.html"><button class="navi_button">Inquiries</button></a>
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

				<table border = "1">
					<tr>
						<th> Inquiry ID </th>
						<th> callid </th>
						<th> status </th>
						<th> contactnumber </th>
						<th> problemdescription </th>
						<th> priority </th>
						<th> empid </th>
					</tr>
					
					<%
						IInquiriesService iinquiriesService = new InquiriesServiceImpl();
						ArrayList<Inquiries>  arrayList = iinquiriesService.getInquiries();
						
						for( Inquiries inq : arrayList ){
					%>
					
					<tr>
						<td> <%= inq.getInquiryID() %></td>
						<td> <%= inq.getCallID() %></td>
						<td> <%= inq.getStatus() %> </td>
						<td> <%= inq.getContactNumber() %> </td>
						<td> <%= inq.getProblemDescription() %> </td>
						<td> <%= inq.getPriority() %> </td>
						<td> <%= inq.getTechnician() %> </td>
					</tr>
					<%
						}
					%>
				</table>

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