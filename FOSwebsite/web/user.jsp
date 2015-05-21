<%-- 
    Document   : user
    Created on : 18 Apr, 2015, 7:22:03 PM
    Author     : Maahi
--%>

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
<!DOCTYPE html>


<html>
<head>
<title>
User Details
</title>
<script type="text/javascript">

</script>
   <link rel="stylesheet" href="Regcss.css" />
        <link rel="stylesheet" href="style.css" />

</head>

<body bgcolor="CCFF66">

   
    <form action="user.jsp" method="POST">
    
<table width="100%" height="488" border="1">
  <tr>
    <th width="10%" height="65" scope="col" bgcolor="FFCC66" background="images/cof.jpeg" ></th>
    
    <th width="80%" scope="col" bgcolor="#ccff66">
        <table width="100%">
            <tr>
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
    <td width="10%" scope="col" bgcolor="FFCC66">
        <img src="images/DIT.png" height="100" width="100%"></br>
        <b><u>Project By:</u></b><br>
        >Akshay Gupta(TL)<br>
        >Anchal Tomar<br>
        
        >Archie<br>
        >Mahendra Bhama<br>
            <b>Branch:</b>IT(A) 4th yr</br>
            
        </td>
  </tr>
  <tr>
    <td height="200" bgcolor="FFFFCC" >
       
            
            <marquee  behavior="scroll" direction="up" scrollamount="3" height="500">
            <b>Tips for a healthy cooking</b><br/><br/>
                <b> *</b> Keep clean everywhere. <br/><br/>
                <b> *</b> Do not eat customer's food.<br /><br/>
                <b> *</b> Go fast as you can do. <br/><br/>
                <b> *</b> Make food with happiness.<br/><br/>
                <b> *</b>Say yes to orders everyday.<br/><br/>
                <img src="images/scr.png"></img>
                        
                        
            </marquee></td>
    <td>
    
      <table width="100%" height="490" border="1">
      <tr>
      <td width="25%" align="center"> 
         <% 
            String a,b,c,d,e,f,g,h,i,j;
            //session=request.getSession(false); 
           
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
             String username=(String)session.getAttribute("username");
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("select * from fosusers where username='" +username+ "'");
                while(rs.next())
                {a=rs.getString(2);
                 b=rs.getString(3);
                 
                 c=rs.getString(4);
                 d=rs.getString(5);
                  e=rs.getString(6);
                   f=rs.getString(7);
                    g=rs.getString(9);
                
                  %>
                  <table width="100%" border="3"> 
                     <table width="50%" align="center" border="1">
                
                
                        <h2 align="center">User details</h2>
                    
                
         
         <tr><td width="10%"> First Name:</td><td> <input type="text" name="fname"  value="<%=b%>">  </td></tr>
         
         <tr><td width="10%"> Last Name:</td><td> <input type="text" name="lname"  value="<%=c%>">  </td></tr>
         
         <tr><td width="10%">Password:</td><td>  <input type="password" name="password"  value="<%=a%>"></td></tr>
       
         
         <tr> <td width="10%">Email: </td><td> <input type="text" name="email"  value="<%=d%>"></td></tr>
         
         <tr> <td width="10%">address:</td><br/> <td> <textarea cols="50" rows="8" name="address" ><%=f%></textarea></td></tr>
             
          
         <tr> <td width="10%">Mobile no.: </td><td> <input type="text" name="mobile" value="<%=e%>"></td></tr>
                        
             <tr><td>Security question:</td><td><select name="squestion">
                 
                                     <option >What is your pet name?</option>
                                       <option >What is your college name?</option>
                                         <option >What is your friend's nickname?</option>
                                         <option >Where is your hometown?</option>
                     </select></td></tr>
             <tr><td>Security answer:</td><td><input type='text' name="sanswer"value="<%=g%>"></td></tr>
            
            <tr><td></td><td width="10%"><input type="submit" value="save"></td></tr>
            
            </table>
                        
                           
                  
                 
                  <%
                }
                String password=request.getParameter("password");
                String firstname=request.getParameter("fname");
                String lastname=request.getParameter("lname");
                String email=request.getParameter("email");
                String address=request.getParameter("address");
                String mobile=request.getParameter("mobile");
                String squestion=request.getParameter("squestion");
                String sanswer=request.getParameter("sanswer");
                
               PreparedStatement ps6= con.prepareStatement("update fosusers set password=?,firstname=?,lastname=?,email=?,mobile=?,address=?,securityq=?,answer=? WHERE username= ?");
                
                ps6.setString(9,username);
                ps6.setString(1,password);
                ps6.setString(2,firstname);
                 ps6.setString(3,lastname);
                  ps6.setString(4,email);
                   ps6.setString(5,mobile);
                    ps6.setString(6,address);
                     ps6.setString(7,squestion);
                      ps6.setString(8,sanswer);
                  
                ps6.executeUpdate();   
                
            }
            catch(Exception ei)
        {
            System.out.println(ei);
        }
          
          
         
         
          
          %>
           </td> 
         </tr>
          </table>  
          <a href="logout" ><input type="button" value="logout"/></a>
      </td>
      
          
      </tr>
      
      
    
      </table>
    <td>     </td>
  </tr>
  <tr>
    <td>Action :- 
    
    </td>
    <td>
    
    <td></td>
  </tr>
</table>
</form>
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
