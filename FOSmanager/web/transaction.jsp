<%-- 
    Document   : transtion
    Created on : 17 Mar, 2015, 3:44:39 PM
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
Transaction 
</title>
<script type="text/javascript">

</script>
<link rel="stylesheet" href="style.css">
</head>

<body bgcolor="CCFF66">

   
    <form action="stock">
    
<table width="100%" height="488" border="1">
  <tr>
    <th width="10%" height="65" scope="col" bgcolor="FFCC66" background="images/cof.jpeg" ></th>
    
    <th width="80%" scope="col">
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
      <td width="25%" align='center' ><b>Transaction Id</b></td>
      <td width="25%" align='center'><b>Credit</b></td>
      <td width="25%" align='center'><b>Debit</b></td>
      <td width="25%" align='center'><b>Balance</b></td>
     
      
      </tr>
      <table width="100%" height="490" border="1">
      <tr>
      <td width="25%" align="center">
         <%int a,c,d;
            String b;
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
            
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("select * from fostrns");
                while(rs.next())
                {
                  a=rs.getInt(2); 
                 b=rs.getString(1);
                 c=rs.getInt(3);
                 d=rs.getInt(4);
                
                  %>
                  <table width="100%" border="3"> 
                  
                      <tr>
                          <td width="25%" align="center">
                              <b><%=b%></b>
                         </td>
                          <td width="25%">
                              <b><%=+a%></b>
                         </td>
                          <td width="25%">
                              <b><%=+c%></b>
                         </td>
                      <td width="25%">
                          <b><%=+d%></b>
                          </td>
                           
                      </tr>
                      
                  
                 
                  <%
                }
                  
                
            }
            catch(Exception e)
        {
            System.out.println(e);
        }
          
          
         
         
          
          %>
            
         
          </table>  
      </td>
      
          
      </tr>
      
      
     
      </table>
          
          <td bgcolor="FFFFCC"> <a href="logout" ><input type="button" value="logout"/></a>   </td>
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
