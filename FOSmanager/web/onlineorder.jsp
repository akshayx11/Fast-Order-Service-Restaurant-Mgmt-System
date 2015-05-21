<%-- 
    Document   : onlineorder
    Created on : 16 Apr, 2015, 10:14:15 PM
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
Online Order
</title>
<script type="text/javascript">

</script>
<link rel="stylesheet" href="style.css">
</head>

<body bgcolor="CCFF66">

   
    <form action="onlineorder1" method="POST">
    
<table width="100%" height="488" border="1">
  <tr>
    <th width="10%" height="65" scope="col" bgcolor="FFCC66" background="images/cof.jpeg" ></th>
    
    <th width="80%" scope="col" >
        <table width="100%">
            <tr>
            <td width="100%">
                <embed src="images/banner.png" width="100%" height="70%" loop="true">  </embed>
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
      <table width="100%" height="10" border="1">
      <tr>
      <td width="10%" align='center' ><b>Userid</b></td>
      <td width="10%" align='center'><b>first name</b></td>
      <td width="10%" align='center'><b>last name</b></td>
      <td width="10%" align='center'><b>mobile no</b></td>
     <td width="20%" align='center'><b>address</b></td>
      <td width="10%" align='center'><b>city</b></td>
      <td width="10%" align='center'><b>Item name</b></td>
      <td width="5%" align='center'><b>Quantity </b></td>
      <td width="15%" align='center'><b>Date Time</b></td>
      </tr>
      <table width="100%" height="490" border="1">
      <tr>
      <td width="25%" align="center">
         <%
            String a,b,c,e,f,g,i,d;
            
            int h;
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
            
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("SELECT fosusers.username, fosusers.firstname,fosusers.lastname,fosusers.mobile,fosusers.address,fosusers.city,fosweb.itemname,fosweb.qty,fosweb.datetime FROM fosweb INNER JOIN fosusers ON fosweb.username=fosusers.username;");
                while(rs.next())
                {
                  a=rs.getString(1); 
                 b=rs.getString(2);
                 c=rs.getString(3);
                 d=rs.getString(4);
                 e=rs.getString(5);
                 f=rs.getString(6);
                 g=rs.getString(7);
                 h=rs.getInt(8);
                 i=rs.getString(9);
                
                  %>
                  <table width="100%" border="3"> 
                  
                      <tr>
                          <td width="10%" align="center">
                              <b><%=a%></b>
                         </td>
                          <td width="10%">
                              <b><%=b%></b>
                         </td>
                          <td width="10%">
                              <b><%=c%></b>
                         </td>
                      <td width="10%">
                          <b><%=d%></b>
                          </td>
                        <td width="20%">
                          <b><%=e%></b>
                          </td>   
                          <td width="10%">
                              <b><%=f%></b>
                          </td>
                          <td width="10%">
                          <b><%=g%></b>
                          </td>
                          <td width="5%">
                          <b><%=+h%></b>
                          </td>
                          <td width="15%">
                          <b><%=i%></b>
                          </td>
                      </tr>
                      
                  
                 
                  <%
                }
                  
                
            }
            catch(Exception ei)
        {
            System.out.println(ei);
        }
          
          
         
         
          
          %>
            
         
          </table>  
      </td>
      
          
      </tr>
      
      
     
      </table>
         
    <td bgcolor="FFFFCC">    </td>
  </tr>
  
  <tr>
    <td bgcolor="#ccff66">Action :-
    </td>
    <td>
    <p align="center">
        <b>User Name</b><input type="text" name="bytableno"  id="BTN"  />
    <input type="submit" value="Finished">
    </p></td>
    <td bgcolor="#ccff66">&nbsp;
    <a href="logout" ><input type="button" value="logout" style="vertical-align: bottom;"/></a></td>
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
