<%@page import = "java.util.*" %>

<!DOCTYPE html>
<html lang="en">
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
            <div class="header_inner_area_other">

                <!--navigator + logo area-->
                <div class="h_top">

                    <!--logo area-->
                    <a href="index.html"><div class="logo"></div></a>

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
                    Calls_
                </div>
            </div>
        </div>

        <!--content area-->
        <div class="content">

            <!--inner_content_1 area-->
            <div class="inner_content_1">
			
			
			
			 <form name="addcalls" method="post" action="AddCallsServlet">
                        <input type="text" name="status" placeholder="Status" class="input_style1"><br>
                        <input type="text" name="problemid" placeholder="Problem ID" class="input_style1"><br>
                        <input type="text" name="empid" placeholder="Employee ID" class="input_style1"><br>
                        <input type="text" name="custid" placeholder="Customer ID" class="input_style1"><br>
                        <input type="date" name="date" class="input_style1"><br>
                        

                        <div class="text-center content_area">

                        </div>
               	
               	<button type="submit" class="form_button">ADD</button>
               
               
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