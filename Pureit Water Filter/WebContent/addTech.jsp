 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Pureit</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="technicians.css">

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
                <div class="search_other">
                    <form >
                        <input class="input_search" type="text" name="search" placeholder="Search" formaction="">
                    </form>
                </div>

                <!--header image area-->
                <div class="header_image_other">
                    Technicians_
                </div>
            </div>
        </div>

        <!--content area-->
        <div class="content">



<nav>
    <ul>Use the form below to add a new technician</ul>
 </header><!--header-->
</nav>
    <form action="AddTechnician" id="new_user_form" method="POST">
        <table id="new_user_table">
            <tr>
  
            </tr>

            <tr>
                <td>Employee ID :</td>
                <td><input type="text" id="emp-id" name="emp_id" placeholder="Employee ID" required></td>
            </tr>

            <tr>
                <td>First Name :</td>
                <td><input type="text" id ="first_name" name ="first_name" placeholder="First Name" required></td>
            </tr>

            <tr>
                <td>Last Name :</td>
                <td><input type="text" id ="last_name" name ="last_name" placeholder="last Name"required></td>
            </tr>

            <tr>
                <td>Gender :</td>
                <td><input type="radio" id ="gender" name = "gender" value="Male" required>&nbsp;Male
                    <input type="radio" id ="gender" name = "gender" value="Female" required>&nbsp;Female
                </td>
            </tr>

            <tr>
                <td>Phone No :</td>
                <td><input type="number" id="phone_no" name="phone_no" placeholder="Telephone Number" required></td>
            </tr>

            <tr>
                <td>NIC :</td>
                <td><input type="text" id ="nic" name ="nic" placeholder="National Identity Number" required></td>
            </tr>

            <tr>
                <td>E-mail :</td>
                <td><input type="email" id ="email" name ="email" placeholder="E-mail Address" required></td>
            </tr>

            <tr>
                <td>Birth Day :</td>
                <td><input type="date" id="birth_day" name="birth_day" placeholder="DD/MM/YYYY" required></td>
            </tr>
        
            <tr>
                <td>Password :</td>
                <td><input type="password" id="pass" name="pass" placeholder="password" required></td>
            </tr>

            <tr>
                <td>Confirm Password :</td>
                <td><input type="password" id="con-pass" name="con-pass" placeholder="Confirm Password" required></td>    
            </tr>

            <tr>
                <td>Address :</td>
                <td><textarea name="address" id="address" name="address" cols="30" rows="6" required></textarea></td>
            </tr>
     

             <tr>
                 <td><input type="reset"  id="add_btn" name="add_btn" value="Reset"></td>
                 <td><input type="submit" id="add_btn" name="add_btn" value="ADD"></td>
                
            </tr>
        </table>
    </form><!--new_user-->






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