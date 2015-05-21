<%-- 
    Document   : employee
    Created on : 29 Jan, 2015, 3:25:06 PM
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
Employee
</title>
<script type="text/javascript">

</script>
<link rel="stylesheet" href="style.css">


</head>

<body bgcolor="CCFF66">

   
    <form action="employee">
    
<table width="100%" height="488" border="1">
  <tr>
    <th width="10%" height="65" scope="col" bgcolor="FFCC66" background="images/cof.jpeg" ></th>
    
    <th width="80%" scope="col" bgcolor="#ccff66">
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
      <td width="12%" align='center' ><b>Employee ID</b></td>
      <td width="12%" align='center'><b>Name</b></td>
      <td width="12%" align='center'><b>Gender</b></td>
      <td width="12%" align='center'><b>Designation</b></td>
      <td width="12%" align='center'><b>Salary</b></td>
      <td width="12%" align='center'><b>Mobile No</b></td>
      <td width="12%" align='center'><b>Email</b></td>
      <td width="16%" align='center'><b>Address</b></td>
      </tr>
      <table width="100%" height="490" border="1">
      <tr>
      <td width="25%" align="center">
         <% double a;
            String c,d,e,f,g,h,b;
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
            
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("select * from fosemp");
                while(rs.next())
                {
                  a=rs.getDouble(5); 
                 b=rs.getString(6);
                 c=rs.getString(1);
                 d=rs.getString(2);
                  e=rs.getString(3);
                   f=rs.getString(4);
                    g=rs.getString(7);
                 h=rs.getString(8);
                  %>
                  <table width="100%" border="3"> 
                  
                      <tr>
                          <td width="12%" align="center">
                              <b><%=c%></b>
                         </td>
                          <td width="12%">
                              <b><%=d%></b>
                         </td>
                          <td width="12%">
                              <b><%=e%></b>
                         </td>
                      <td width="12%">
                          <b><%=f%></b>
                          </td>
                       <td width="12%">
                          <b><%=+a%></b>
                          </td>   
                          <td width="12%">
                          <b><%=b%></b>
                          </td>
                          <td width="12%">
                          <b><%=g%></b>
                          </td>
                          <td width="16%">
                          <b><%=h%></b>
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
    <td>    </td>
  </tr>
  <tr>
    <td>Action :- 
    
    </td>
    <td>
    <table border="1" width="100%" align="center">
        <tr>
            <td>
        <input type ="radio" name ="proc" id="proc" value ="0" checked/></td>
      <td>  <input type ="radio" name ="procad" id="procad" value ="10" checked/>
         
          <b>ADD </b><div class="tab">ID:<input  type="text" name="empid" size="2" id="empid" value="0" /></div>
       <div class="tab"> NAME:<input class="tab" type="text" name="empnm" size="2" id="empnm" value="0" /></div>
       <div class="tab"> GENDER: <input type ="radio" name ="gender" id="gender" value ="male" checked/>MALE
               <input type ="radio" name ="gender" id="gender" value ="female"/>FEMALE</div>
      <div class="tab"> DESIGNATION :<input type="text" name="empdesg" size="2" id="empdesg" value="0" /></div>
        
        <div class="tab">SALARY:<input type="text" name="empsal" size="2" id="empsal" value="0"  /></div>
       <div class="tab"> MOBILE NO.:<input type="text" name="empmo" size="2" id="empmo" value="0" /></div>
       <div class="tab"> EMAIL:<input type="email" name="empemail" size="2" id="empemail" value="example@example.com"/></div>
      <div class="tab">  ADDRESS:<textarea cols="10" rows="5" name="empadrs" id="empadrs" value="0"></textarea></div>
        <input type="submit" value="ADD">
        
        <hr>
        
        <input type ="radio" name ="procad" id="procad" value ="20"/>
        <b>DELETE</b>Employee ID:<input type="text" name="empid2" size="2" id="BTN4" value="0" /><br/>
         <input type="submit" value="DELETE">
         
     <tr> <td>  <input type="radio" name="proc" id="proc" value="1" /></td>
      <td>  <b>UPDATE</b> Employee ID:<input type="text" name="empid3" size="2" id="BTN5" value="0" /><br/>         
          <div class="tab"><input type="checkbox" name="c0" id="c0" value="11"/>NAME:<input type="text" name="empnm2" onclick="f1()"size="2" id="BTN51"  value="enter text" /></div>
        <div class="tab"><input type="checkbox" name="c1" id="c1" value="12"/>SALARY:<input type="text" name="empsal2" onclick="f2()" size="2" id="BTN52" value="enter text" /></div>
       <div class="tab"> <input type="checkbox" name="c2" id="c2" value="13"/>DESIGNATION:<input type="text" name="empdesg2" onclick="f3()"  size="2" id="BTN53" value="enter text" /></div>
      <div class="tab"> <input type="checkbox" name="c3" id="c3" value="14"/>MOBILE:<input type="text" name="empmo2" size="2" onclick="f4()"  id="BTN54" value="enter text" /></div>
      <div class="tab"> <input type="checkbox" name="c4" id="c4" value="15"/>EMAIL:<input type="email" name="empemail2" size="2" onclick="f5()"  id="BTN55" value="example@example.com" /></div>
      <div class="tab"> <input type="checkbox" name="c5" id="c5" value="16"/>ADDRESS:<textarea cols="10" rows="5" name="empadrs2"  onclick="f6()" id="empadrs2" value="enter text"></textarea></div>
          <div class="tab"> <input type="submit" value="Update"></div>
    </td></tr></table>
    <td><a href="logout" ><input type="button" value="logout"/></a></td>
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
<script type="text/javascript">
 function f1(){
     document.getElementById("BTN51").value="";
     }   
function f2(){
     document.getElementById("BTN52").value="";
     }   
  function f3(){
     document.getElementById("BTN53").value="";
     }   
     function f4(){
     document.getElementById("BTN54").value="";
     }   
     function f5(){
     document.getElementById("BTN55").value="";
     } 
     function f6(){
     document.getElementById("empadrs2").value="";
     } 
</script>
</html>
<%
            }
           
    %>