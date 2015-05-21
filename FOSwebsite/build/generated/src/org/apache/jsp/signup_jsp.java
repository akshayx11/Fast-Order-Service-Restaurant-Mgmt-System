package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <title>Registration</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body> \n");
      out.write("        <form method=\"post\" action=\"signup.jsp\">\n");
      out.write("            <table width=\"40%\" align=\"center\" border=\"1\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                        <h2 align=\"center\"> FOS Registration</h2>\n");
      out.write("                    \n");
      out.write("         <tr><td width=\"10%\"> Username:</td><td> <input type=\"text\" name=\"username\">  </td></tr>       \n");
      out.write("         \n");
      out.write("         <tr><td width=\"10%\"> First Name:</td><td> <input type=\"text\" name=\"fname\">  </td></tr>\n");
      out.write("         \n");
      out.write("         <tr><td width=\"10%\"> Last Name:</td><td> <input type=\"text\" name=\"lname\">  </td></tr>\n");
      out.write("         \n");
      out.write("         <tr><td>Gender:</td><td><input type=\"radio\" name=\"gender\" value=\"male\" checked>Male\n");
      out.write("         <input type=\"radio\" name=\"gender\" value=\"Female\">Female</td></tr>\n");
      out.write("         \n");
      out.write("         <tr><td width=\"10%\">Password:</td><td>  <input type=\"password\" name=\"password\"></td></tr>\n");
      out.write("         \n");
      out.write("         <tr> <td width=\"10%\">Confirm password:</td><td> <input type=\"password\" name=\"p2\"></td></tr>\n");
      out.write("         \n");
      out.write("         <tr> <td width=\"10%\">Email: </td><td> <input type=\"text\" name=\"email\"></td></tr>\n");
      out.write("         \n");
      out.write("         <tr> <td width=\"10%\">address:</td><br/> <td> <textarea cols=\"50\" rows=\"8\" name=\"address\"></textarea></td></tr>\n");
      out.write("              <tr><td>City:</td><td><select name=\"city\">\n");
      out.write("                 \n");
      out.write("                                     <option >Dehradun</option>\n");
      out.write("                                       <option >Jaipur</option>\n");
      out.write("                                         <option >Delhi</option>\n");
      out.write("                                         <option >Haridwar</option>\n");
      out.write("                     </select></td></tr>\n");
      out.write("          \n");
      out.write("         <tr> <td width=\"10%\">Mobile no.: </td><td> <input type=\"text\" name=\"mobile\"></td></tr>\n");
      out.write("                        \n");
      out.write("             <tr><td>Security question:</td><td><select name=\"squestion\">\n");
      out.write("                 \n");
      out.write("                                     <option >What is your pet name?</option>\n");
      out.write("                                       <option >What is your college name?</option>\n");
      out.write("                                         <option >What is your friend's nickname?</option>\n");
      out.write("                                         <option >Where is your hometown?</option>\n");
      out.write("                     </select></td></tr>\n");
      out.write("             <tr><td>Security answer:</td><td><input type='text' name=\"sanswer\"></td></tr>\n");
      out.write("             <input type=\"text\" value=\"user\" name=\"designation\" hidden />\n");
      out.write("            <tr><td></td><td width=\"10%\"><input type=\"submit\" value=\"Register\"></td></tr>\n");
      out.write("            \n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            </form>\n");
      out.write("       \n");
      out.write("\n");
      out.write("  ");
      

    
   Connection con;
    


    try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","bitnami");
            
             
              
              String username =request.getParameter("username");
              String fname= request.getParameter("fname");
              String lname= request.getParameter("lname");
              String password = request.getParameter("password");
              double mobile = Double.parseDouble(request.getParameter("mobile"));
              String address = request.getParameter("address");
              String squestion= request.getParameter("squestion");
              String sanswer = request.getParameter("sanswer");
              String gender = request.getParameter("gender");
              String designation = "user";
              String email = request.getParameter("email");
              String city = request.getParameter("city");
              
                PreparedStatement ps= con.prepareStatement("insert into fosusers(username,password,fname,lname,email,mobile,address,squestion,sanswer,gender,designation,city) values(?,?,?,?,?,?,?,?,?,?,?,?)");
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
        
         
    
        
      
      out.write("  \n");
      out.write("      <style>\n");
      out.write("      .backb{\n");
      out.write("position: fixed;\n");
      out.write("top: 20px;  \n");
      out.write("left: 4px;\n");
      out.write("width: 46px;\n");
      out.write("height: 46px;\n");
      out.write("\n");
      out.write("}\n");
      out.write("      </style>    \n");
      out.write("      <script> function goBack() {\n");
      out.write("    window.history.back()\n");
      out.write("}\n");
      out.write("   </script>     \n");
      out.write("    <div><img src=\"icons/back.png\" class=\"backb\" onclick=\"goBack()\" id=\"backb\"/></div>   \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("     \n");
      out.write("    \n");
      out.write("   \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
