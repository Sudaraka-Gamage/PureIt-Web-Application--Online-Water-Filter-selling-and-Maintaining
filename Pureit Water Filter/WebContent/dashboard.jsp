<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Pureit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
		response.setHeader("Pragma", "no-cache"); //HTTP 1.0
		response.setHeader("Expires", "0"); //Proxies
	
		if(session.getAttribute("username") == null )
		{
			response.sendRedirect("sign_in.jsp;");
		}
	
	%>
    <!--body area-->
    <div>

        <!--header area-->
        <div class="header">

            <!--header inner area-->
            <div class="header_inner_area_home">

                <!--header image area-->
                <div class="header_image_home">
                </div>

                <!--navigator + logo area-->
                <div class="h_top">

                    <!--logo area-->
                    <a href="dashboard.jsp"><div class="logo"></div></a>

                    <!--Navigator area-->
                    <div class="navi">
                        <a href="dashboard.jsp"><button class="navi_button">Dashboard</button></a>
                        <a href="calls.jsp"><button class="navi_button">Calls</button></a>
                        <a href="inquiries.jsp"><button class="navi_button">Inquiries</button></a>
                        <a href="customers.jsp"><button class="navi_button">Customers</button></a>
                        <a href="viewTech.jsp"><button class="navi_button">Technicians</button></a>
                        <a href="feedbacks.jsp"><button class="navi_button">Feedback</button></a>                       
                    </div>

                    <div class="navi_p2">
                    	<form action="Logout" method="post">
                        	<button type="submit" class="navi_button">Sign Out</button>
                        </form>
                    </div>
                </div>

                <!--search area-->
                <div class="search_home">
                    <form >
                        <input class="input_search" type="text" name="search" placeholder="Search">
                    </form>
                </div>

                <!--Welcome area-->
                <!--<div class="h_welcome">
                    <a href="sign_up.html"><button class="header_button">Sign Up</button></a>
                </div>-->
            </div>
        </div>

        <!--content area-->
        <div class="content">

            <!--inner_content_1 area-->
            <div class="inner_content_1">
                <div class="text-center title1">
                    Welcome ${username}!
                </div>
                <div class="text-center" style="width: 600px; margin-left: auto; margin-right: auto">
                    Welcome to the website GymFIVE! We hope that you will appreciate our services and opportunities we offer our loyal and potential customers. Here are some of them:
                </div>
                <div style="width: auto; height: auto; float: left; padding-left: px">
                    <div class="content_box1" style="margin-right: 50px;">
                        <div class="text-center title2" style="margin-bottom: 15px;">
                            Qualified Coaches
                        </div>
                        <div class="text-center" style="font-size: 15px">
                            Our coaches have years of experience in various types of fitness and sports.
                        </div>
                    </div>

                    <div class="content_box1" style="margin-right: 50px;">
                        <div class="text-center title2" style="margin-bottom: 15px">
                            Individual Approach
                        </div>
                        <div class="text-center" style="font-size: 14px">
                            Every client of Intense has a personalized program of training and nutrition.
                        </div>
                    </div>

                    <div class="content_box1">
                        <div class="text-center title2" style="margin-bottom: 15px">
                            Modern Fitness Equipment
                        </div>
                        <div class="text-center" style="font-size: 14px">
                            We cooperate with leading fitness equipment suppliers to give you the superior results.
                        </div>
                    </div>
                </div>
            </div>

            <!--inner_content_2 area-->
            <div class="inner_content_2">

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