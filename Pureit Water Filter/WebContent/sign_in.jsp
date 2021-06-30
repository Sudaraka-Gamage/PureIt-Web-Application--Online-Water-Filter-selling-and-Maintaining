<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Pureit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <style>
    
    tr{
    	color: blue;
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
                    <a href="index.html"><div class="logo"></div></a>

                </div>
                
                <!--Navigator area-->
                    <div class="navi">
                        <a href="index.html"><button class="navi_button">Home</button></a>
                    </div>

                <!--header image area-->
                <div class="header_image_other">
                    Sign In_
                </div>
            </div>
        </div>

        <!--content area-->
        <div class="content">

            <!--inner_content_1 area-->
            <div class="inner_content_1">

                <div class="text-center content_area">Please enter your username and password:</div>

                <div class="text-center" style="margin-top: 30px">
                    <form name="signin" method="post" action="Login">
                        <input type="text" name="username" placeholder="Username" class="input_style1"><br>
                        <input type="password" name="password" placeholder="Password" class="input_style1"><br>

                        <div class="text-center content_area">

                        </div>

                        <button type="submit" class="form_button">Sign In</button>
                    </form>
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