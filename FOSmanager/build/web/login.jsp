<%@page import="java.sql.*;" %>

<!DOCTYPE html>
<html >

    <head>
        <title>Manager Login</title>
        <link rel="stylesheet" href="managercss.css">
        <link rel="stylesheet" href="style.css">
        <style type="text/css">
            .blocks{
                float: none;
                margin: auto;
                
                
            }
            
            body{
                
                margin:auto;
                text-align: center;
            }
            
        </style> 
        
    </head>
    
    
    
<body  >
<h1><img src="icons/administrator.png"/><br/> Manager Control Panel</h1>
        <h2>Login to view  Employees, stocks and transaction details.</h2>

        
<form action="login.jsp" method="POST">
    <div class="blocks">   
    <h3>Manager Login </h3>
Username

<input type=text name=uname size=20>
<br/>
<br/>
Password

<input type=password name=pwd size=20>
<p>
    <input type="text" value="manager" name="designation" hidden />
<input type=submit value="Submit" ><br/>
<a href="forget.jsp" style="font-size: 14px; font-style: italic;">forget password?</a>
</div>
</form>


<%
            String u=(String)request.getParameter("uname");
            String p=(String)request.getParameter("pwd");
            String m=(String)request.getParameter("designation");
            String tm1,tm2,tm3;
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root"); 
                Statement s = con.createStatement();
                ResultSet rs;
                  rs = s.executeQuery("select *from fosusers");
                while(rs.next())
                {
                  tm1= rs.getString(1);
                   tm2=rs.getString(2);
                   tm3=rs.getString(11);
                   if((u.equals(tm1) && p.equals(tm2)) && m.equals(tm3))
                   {
                        response.sendRedirect("admin");
                        session=request.getSession();        
                        session.setAttribute("username",u);
                       
                   }
                  
                   
                }
                 out.println("<div class='msg'><img src='icons/error.png' style='background:none;' s/> Invalid username or password</div>");
                      
                        con.close();
                                    }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            %>
            
</body>
</html>
