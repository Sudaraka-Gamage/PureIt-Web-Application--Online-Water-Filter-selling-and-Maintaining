<%-- 
    Document   : updateTech
    Created on : May 11, 2018, 6:51:37 PM
    Author     : Asus-PC
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <ul>Use the form below to update a technician</ul>
 </header><!--header-->
</nav>
    <form action="UpdateTech" id="new_user_form" method="POST">
        <table id="new_user_table">


                <%
                    try{
                        String emp_id = session.getAttribute("emp_id").toString();
                      //  session.setAttribute("emp_id", emp_id); 
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit", "root", "");
                        Statement stm = (Statement) con.createStatement();
                        String SQL = "select * from technician where emp_id = '"+emp_id+"' ";
                        ResultSet rs = stm.executeQuery(SQL);
                        while(rs.next()){ 
                %>

            <tr>
                <td>Employee ID :</td>
                <td><input type="text" id="emp-id" name="emp_id" placeholder="Employee ID" value = "<%=rs.getString("emp_id")%>"></td>
            </tr>

            <tr>
                <td>First Name :</td>
                <td><input type="text" id ="first_name" name ="first_name" placeholder="First Name" value = "<%=rs.getString("first_name")%>"></td>
            </tr>

            <tr>
                <td>Last Name :</td>
                <td><input type="text" id ="last_name" name ="last_name" placeholder="last Name" value = "<%=rs.getString("last_name")%>"></td>
            </tr>

            <tr>
                <td>Phone No :</td>
                <td><input type="number" id="phone_no" name="phone_no" placeholder="Telephone Number" value = "<%=rs.getString("phoneno")%>"></td>
            </tr>

            <tr>
                <td>NIC :</td>
                <td><input type="text" id ="nic" name ="nic" placeholder="National Identity Number" value = "<%=rs.getString("nic")%>"></td>
            </tr>

            <tr>
                <td>E-mail :</td>
                <td><input type="email" id ="email" name ="email" placeholder="E-mail Address" value = "<%=rs.getString("email")%>"></td>
            </tr>

            <tr>
                <td>Birth Day :</td>
                <td><input type="date" id="birth_day" name="birth_day" placeholder="DD/MM/YYYY" value = "<%=rs.getString("birth_day")%>"></td>
            </tr>
        
            <tr>
                <td>Password :</td>
                <td><input type="password" id="pass" name="pass" placeholder="password" value = "<%=rs.getString("Password")%>"></td>
            </tr>

            <tr>
                <td>Address :</td>
                <td><input type="text" name="address" id="address" cols="30" rows="6" value = "<%=rs.getString("address")%>"></textarea></td>
            </tr>
            
            
            <%
                        }
                    }catch(Exception ex){
                        System.out.println("Error : "+ ex);
                    }
            %>
               

             <tr>
                 
                 <td><input type="submit" id="add_btn" name="add_btn" value="Update" style="margin-left: 10px"></td>
                
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
