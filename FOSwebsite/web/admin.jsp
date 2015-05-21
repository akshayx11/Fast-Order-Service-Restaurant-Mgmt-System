<%-- 
    Document   : admin
    Created on : 18 Apr, 2015, 7:07:27 PM
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
       <title>Welcome  <%=session.getAttribute("username")%> !!</title>
       
        <link rel="stylesheet" href="managercss.css"/>
        
    </head>
    <body>
       
        <h1><img src="icons/administrator.png"/><br/> Welcome <%=session.getAttribute("username")%> !!</h1>
        <h2>Place your orders</h2>
         <div class="container">
        <div class="blocks">
        <h3>Edit your profile</h3>
        <h4><a href="user.jsp">User</a><br/></h4>
        <hr> 
        </div>
        <div class="blocks">
        <h3>view current orders</h3>
        <h4><a href="currentorder.jsp">Current orders</a><br/></h4>
        <hr> 
        </div>
        <div class="blocks">
        <h3>Give new order</h3>
        <h4><a href="index.html">Menu</a><br/></h4>
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