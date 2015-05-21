<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html >
    <head>
        <title>Customer Login</title>
         <link rel="stylesheet" href="managercss.css">
        <link rel="stylesheet" href="style.css">
        <style> 
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
    <table width="100%" height="488" border="1">
  <tr>
   
    <th width="80%" scope="col">
        <table width="100%">
            <tr>
            <td width="20%">
                <embed src="images/1.jpg" width="100%" height="100%" loop="true">  </embed>
             </td>
                <td width="20%">
                    <embed src="images/2.jpeg" width="100%" height="100%" loop="true"></embed>
                </td>
                <td width="20%">
                    <embed src="images/3.jpeg" width="100%" height="100%" loop="true"></embed>
                </td>
                <td width="20%">
                    <embed src="images/4.jpeg" width="100%" height="100%" loop="true"></embed>
                </td>
                <td width="20%">
                    <embed src="images/5.jpeg" width="100%" height="100%" loop="true"></embed>
                </td>
            </tr>
    </th>
            
        </table>
<h1>Fast Order Service </h1>
        <h2>Login to account for placing orders from home or office.</h2>

        
<form action="login.jsp" method="POST">
    <div class="blocks">   
    <h3>Customer Login </h3>
Username

<input type=text name=uname size=20>
<br/>
<br/>
Password

<input type=password name=pwd size=20>
<p>
    <input type="text" value="manager" name="designation" hidden />
    <input type=submit value="Submit" ><br>

    <a href="forget.jsp" style="font-size: 14px; font-style: italic;">forget password?</a>
</div>
   <h2>  <a href="signup.jsp">Don't have account? Register now!</a></h2> 
</form>

<%
            String u=(String)request.getParameter("uname");
            String p=(String)request.getParameter("pwd");
            String tm1,tm2;
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
                   if(u.equals(tm1) && p.equals(tm2))
                   {
                       response.sendRedirect("admin.jsp");
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
            
           //session.setAttribute("username",u);
            
            %>
            
</body>
</html>
