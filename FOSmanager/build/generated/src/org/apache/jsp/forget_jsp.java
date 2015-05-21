package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class forget_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html >\n");
      out.write("    <head>\n");
      out.write("        <title>Get Your Password</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"managercss.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        \n");
      out.write("        <style> \n");
      out.write("            .blocks{\n");
      out.write("                float: none;\n");
      out.write("                margin: auto;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                \n");
      out.write("                margin:auto;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("<body bgcolor=\"#CCFF66\" >\n");
      out.write("\n");
      out.write("<h1>Fast Order Service </h1>\n");
      out.write("        <h2>Get Your Password.</h2>\n");
      out.write("<form action=\"forget.jsp\" method=\"post\">\n");
      out.write("    <div class=\"blocks\">\n");
      out.write("        <h3>Choose your question and answer  </h3>\n");
      out.write("Username <input type=text name=uname size=20>\n");
      out.write("<br/><br/>\n");
      out.write("Security question: <select name=\"squestion\">\n");
      out.write("                 \n");
      out.write("                                     <option >What is your pet name?</option>\n");
      out.write("                                       <option >What is your college name?</option>\n");
      out.write("                                         <option >What is your friend's nickname?</option>\n");
      out.write("                                         <option >Where is your hometown?</option>\n");
      out.write(" </select><br/><br/>\n");
      out.write(" Your answer <input type=text name=answer size=20>\n");
      out.write("<br/><br/>\n");
      out.write("<input type=submit value=\"Submit\"><br/>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("</form>\n");
      out.write("\n");

            String u=(String)request.getParameter("uname");
            String p=(String)request.getParameter("squestion");
            String a =(String)request.getParameter("answer");
            String tm1,tm2,tm3,pass;
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","bitnami"); 
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
                   
      out.write(" \n");
      out.write("                   <div class='msg'><img src='icons/check_box.png' style='background:none;' s/> Your password is <i>");
      out.print(pass);
      out.write("</i></div>  \n");
      out.write("                    <div class='msg'><a href=\"login.jsp\" style=\"color:white;font-size: 20px; font-style: italic;\"> Click here to go to login page</a></div>  \n");
      out.write("                ");
          


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
            
            
      out.write("\n");
      out.write("            <style>\n");
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
      out.write("    window.history.back();\n");
      out.write("}\n");
      out.write("   </script>     \n");
      out.write("    <div><img src=\"icons/back.png\" class=\"backb\" onclick=\"goBack()\" id=\"backb\"/></div>  \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
