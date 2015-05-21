<%-- 
    Document   : forget
    Created on : Apr 13, 2015, 3:08:35 PM
    Author     : akshaygupta
--%>

<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html >
    <head>
        <title>Get Your Password</title>
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
<body bgcolor="#CCFF66" >

<h1>Fast Order Service </h1>
        <h2>Get Your Password.</h2>
<form action="forget.jsp" method="post">
    <div class="blocks">
        <h3>Choose your question and answer  </h3>
Username <input type=text name=uname size=20>
<br/><br/>
Security question: <select name="squestion">
                 
                                     <option >What is your pet name?</option>
                                       <option >What is your college name?</option>
                                         <option >What is your friend's nickname?</option>
                                         <option >Where is your hometown?</option>
 </select><br/><br/>
 Your answer <input type=text name=answer size=20>
<br/><br/>
<input type=submit value="Submit"><br/>


    </div>
    
</form>

<%
            String u=(String)request.getParameter("uname");
            String p=(String)request.getParameter("squestion");
            String a =(String)request.getParameter("answer");
            String tm1,tm2,tm3,pass;
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root"); 
                //Statement s = con.createStatement();
                //ResultSet rs;
                  //rs = s.executeQuery("select *from fosusers");
               // while(rs.next())
                //{
                  //tm1= rs.getString(1);
                   //tm2=rs.getString(8);
                   //tm3=rs.getString(9);
                   //if(u.equals(tm1) && p.equals(tm2) && a.equals(tm3))
                   //{
                         Statement s2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                 ResultSet rs2 = s2.executeQuery("SELECT password from fosusers WHERE username ='"+u+"' and securityq='"+p+"' and answer='"+a+"' ");
               //  rs2.setString(1,rwname3);
               
                 while(rs2.next())
                {
                   pass=rs2.getString(1); 
               // rs2.setString(1,rwname3);
                //rs.close();
                   %> 
                   <div class='msg'><img src='icons/check_box.png' style='background:none;' s/> Your password is <i><%=pass%></i></div>  
                    <div class='msg'><a href="login.jsp" style="color:white;font-size: 20px; font-style: italic;"> Click here to go to login page</a></div>  
                <%          


                    }



             //} 
                    s2.close();
                  
                      // response.sendRedirect("index.html");
                      
                //   }//else{out.println("Wrong password");}
                   
                        
                   
                  
               // } 
                 
   
                       
                        con.close();
                                    }
            catch(Exception e)
            {
                System.out.println(e);
            }
                    
           session.setAttribute("username",u);
            
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
