<%-- 
    Document   : admin
    Created on : 14 Apr, 2015, 4:33:25 PM
    Author     : Maahi
--%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="javax.servlet.http.HttpSession"%>


<%
            
           session=request.getSession(false);  
            if(session.getAttribute("username")== null){
              
            response.sendRedirect("login.jsp");
            
            }
                 
            else{
        
        %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Manager Control Panel</title>
       
        <link rel="stylesheet" href="managercss.css"/>
        
    </head>
    <body>
       
             <h1><img src="icons/administrator.png"/><br/> Manager Control Panel</h1>
        <h2>Manage Employees, stocks and transaction details.</h2>
         <div class="container">
        <div class="blocks">
        <h3>View Employee details</h3>
        <h4><a href="employee.jsp">employees</a><br/></h4>
        <hr> 
        </div>
        <div class="blocks">
        <h3>View transaction details</h3>
        <h4><a href="transaction.jsp">Transaction</a><br/></h4>
        <hr> 
        </div>
        <div class="blocks">
        <h3>View stock details</h3>
        <h4><a href="stock.jsp">Stock</a><br/></h4>
        <hr> 
        </div>
         <div class="blocks">
        <h3>View online orders</h3>
        <h4><a href="onlineorder.jsp">Online Orders</a><br/></h4>
        <hr> 
        </div>
         <div class="blocks">
        <h3>Add new user</h3>
        <h4><a href="signup.jsp">Add User</a><br/></h4>
        <hr> 
        </div>
        <div class="elements" >
            <img src="icons/control_power_blue.png"/> <a href="logout" >Logout</a>
        </div>
        
        
       
    </div>
    </body>
    
</html>
<%
            }
           
    %>