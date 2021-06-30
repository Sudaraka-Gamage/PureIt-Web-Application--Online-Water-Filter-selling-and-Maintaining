
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view technicians</title>
<link rel="stylesheet" type="text/css" href="css/table_css.css">
 <style>#t1 tr:hover {background-color: #85a3e0;}
</style>


 <link rel="stylesheet" type="text/css" href="style.css">


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
    <input type="text" name="id1"  size="22" style="margin-left: 70px;  border-radius: 6px; border-style: none;   border-radius: 6px; height: 30px; font-size:20px; text-align :left ">

<form name="myForm4"  action="ViewTech" >
    
    <input type="text" name="id" id="search_box" size="22" placeholder="Enter the Employee ID" style="  border-radius: 6px; border-style: none; border:solid rgb(38, 38, 38); border-color: rgb(38, 38, 38);  border-radius: 6px;border-color:black; height: 30px; font-size:20px; text-align :left ">
        
        
 <table id = "t1" style="width:95%" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" valign="top">
                    
                    
		<tr>
            <th> Emp ID</th>
			<th> First name</th>
			<th> Last name</th>
			<th> Gender </th>
			<th> Phoneno</th>
			<th> NIC</th>
			<th> Email</th>
			<th> Birthday </th>
			<th> Password</th>
			<th> Address</th>
		</tr>
           
            <%
            try{
                //String emp_id = session.getAttribute("emp_id").toString();
                //session.setAttribute("emp_id", emp_id);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit", "root", "");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from technician ";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
                <tr>
                   <td><%=rs.getString("emp_id")%></td>
				   <td><%= rs.getString("first_name")%></td>
                   <td><%= rs.getString("last_name")%></td>
                   <td><%= rs.getString("gender")%></td>
                   <td><%=rs.getString("phoneno")%></td>
				   <td><%= rs.getString("nic")%></td>
                   <td><%= rs.getString("email")%></td>
                   <td><%= rs.getString("birth_day")%></td>
                   <td><%=rs.getString("Password")%></td>
			       <td><%= rs.getString("address")%></td>  
                </tr>        
		 <% 
                     }
                }
                    catch(ClassNotFoundException ex){ 
                        out.println("Error : "+ ex);
                    }catch(SQLException ex){
                        out.println("Error : "+ ex);
                    }
                %>
		 </table>
        
        <br><br>
          
      <div class="btn">  
        <button type="submit" onclick="return validateForm()" name="update" value="1" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: #2A3278; font-size:25px; text-align: center; margin: 4px 85px; border-radius: 8px; height: 40px; width: 270px;">Update Technician </button>
        
        <button type="submit" onclick="return validateForm()" name="remove" value="2"  style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: #2A3278; font-size:25px; text-align: center; margin: 4px 45px; border-radius: 8px; height: 40px; width: 270px;">Remove Technician</button>
       
        </form>
            
            <form action="addTech.jsp" method="POST">
            	<button class="navi_button" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: #2A3278; font-size:25px; text-align: center; margin: 4px 85px; border-radius: 8px; height: 40px; width: 270px"> Add a new Thechnician</button>
            </form>
        
  </div><!-- btn -->
  
  
    <script>
    function validateForm() {
        var id = document.forms["myForm4"]["id"].value;
        if (id == "")
        {
            alert("Please Enter Employee ID .. ");
            return false;
        }
        else
        {
            return true;
        }
    }
    </script>

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
              
                
    </body>
</html>