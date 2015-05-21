<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%
            
           session=request.getSession(false);  
            if(session.getAttribute("username")== null){
              
            response.sendRedirect("login.jsp");
            
            }
                 
            else{
        
        %>
<html>

    <head>
        <title>Registration</title>
        <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet" href="managercss.css"/>
    </head>
    
    
    <body class="formPage"> 
        <form method="post" action="signup.jsp">
            <table width="40%" align="center" border="1">
                
                
                        <h2 align="center"> FOS Registration</h2>
                    
         <tr><td width="10%"> Username:</td><td> <input type="text" name="username">  </td></tr>       
         
         <tr><td width="10%"> First Name:</td><td> <input type="text" name="fname">  </td></tr>
         
         <tr><td width="10%"> Last Name:</td><td> <input type="text" name="lname">  </td></tr>
         
         <tr><td>Gender:</td><td><input type="radio" name="gender" value="male" checked>Male
         <input type="radio" name="gender" value="Female">Female</td></tr>
         
         <tr><td width="10%">Password:</td><td>  <input type="password" name="password"></td></tr>
         
         <tr> <td width="10%">Confirm password:</td><td> <input type="password" name="p2"></td></tr>
         
         <tr> <td width="10%">Email: </td><td> <input type="email" name="email" "></td></tr>
         
         <tr> <td width="10%">address:</td><br/> <td> <textarea cols="50" rows="8" name="address"></textarea></td></tr>
            <tr><td>City:</td><td><select name="city">
                 
                                     <option >Dehradun</option>
                                       <option >Jaipur</option>
                                         <option >Delhi</option>
                                         <option >Haridwar</option>
                     </select></td></tr>
         
         <tr> <td width="10%">Mobile no.: </td><td> <input type="text" name="mobile"></td></tr>
                        
             <tr><td>Security question:</td><td><select name="squestion">
                 
                                     <option >What is your pet name?</option>
                                       <option >What is your college name?</option>
                                         <option >What is your friend's nickname?</option>
                                         <option >Where is your hometown?</option>
                     </select></td></tr>
             <tr><td>Security answer:</td><td><input type='text' name="sanswer"></td></tr>
           <tr><td>Designation:</td><td><select name="designation">
                 
                                     <option>manager</option>
                                       <option >user</option>
                     </select></td></tr>
            <tr><td></td><td width="10%"><input type="submit" value="Register"></td></tr>
            
            </table>
            
            </form>
       

  <%      

    
   Connection con;
    


    try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
            
             
              
              String username =request.getParameter("username");
              String fname= request.getParameter("fname");
              String lname= request.getParameter("lname");
              String password = request.getParameter("password");
              double mobile = Double.parseDouble(request.getParameter("mobile"));
              String address = request.getParameter("address");
              String squestion= request.getParameter("squestion");
              String sanswer = request.getParameter("sanswer");
              String gender = request.getParameter("gender");
              String designation = request.getParameter("designation");
              String email = request.getParameter("email");
              String city= request.getParameter("city");
              
                PreparedStatement ps= con.prepareStatement("insert into fosusers(username,password,firstname,lastname,email,mobile,address,securityq,answer,gender,designation,city) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,fname);
           ps.setString(4,lname);
            ps.setString(5, email);
            ps.setDouble(6,mobile);
            ps.setString(7,address);
            ps.setString(8,squestion);
           ps.setString(9,sanswer);
            ps.setString(10, gender);
            ps.setString(11,designation);
            ps.setString(12, city);
           
                        
            int r=ps.executeUpdate();
            
            RequestDispatcher rd = request.getRequestDispatcher("thankyou.jsp");
          
          rd.forward(request, response);
        }
          catch(Exception e)
        {
            System.out.println(e);
        }
        
         
    
        
      %>  
    <style>
      .backb{
position: fixed;
top: 20px;  
left: 4px;
width: 46px;
height: 46px;

}
      </style>    
      <script> function goBack() {
    window.history.back();
}
   </script>     
    <div><img src="icons/back.png" class="backb" onclick="goBack()" id="backb"/></div> 
</body>
</html>
 <%
            }
           
    %>    
    
   
