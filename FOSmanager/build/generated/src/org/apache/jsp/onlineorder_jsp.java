package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import java.sql.*;;

public final class onlineorder_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");

            
           session=request.getSession(false);  
            if(session.getAttribute("username")== null){
              
            response.sendRedirect("login.jsp");
            
            }
                 
            else{
        
        
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>\n");
      out.write("Transaction \n");
      out.write("</title>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body bgcolor=\"CCFF66\">\n");
      out.write("\n");
      out.write("   \n");
      out.write("    <form action=\"onlineorder\">\n");
      out.write("    \n");
      out.write("<table width=\"100%\" height=\"488\" border=\"1\">\n");
      out.write("  <tr>\n");
      out.write("    <th width=\"10%\" height=\"65\" scope=\"col\" bgcolor=\"FFCC66\" background=\"images/cof.jpeg\" ></th>\n");
      out.write("    \n");
      out.write("    <th width=\"80%\" scope=\"col\" bgcolor=\"000000\">\n");
      out.write("        <table width=\"100%\">\n");
      out.write("            <tr>\n");
      out.write("            <td width=\"20%\">\n");
      out.write("                <embed src=\"images/1.jpg\" width=\"100%\" height=\"100%\" loop=\"true\">  </embed>\n");
      out.write("             </td>\n");
      out.write("                <td width=\"20%\">\n");
      out.write("                    <embed src=\"images/2.jpeg\" width=\"100%\" height=\"100%\" loop=\"true\"></embed>\n");
      out.write("                </td>\n");
      out.write("                <td width=\"20%\">\n");
      out.write("                    <embed src=\"images/3.jpeg\" width=\"100%\" height=\"100%\" loop=\"true\"></embed>\n");
      out.write("                </td>\n");
      out.write("                <td width=\"20%\">\n");
      out.write("                    <embed src=\"images/4.jpeg\" width=\"100%\" height=\"100%\" loop=\"true\"></embed>\n");
      out.write("                </td>\n");
      out.write("                <td width=\"20%\">\n");
      out.write("                    <embed src=\"images/5.jpeg\" width=\"100%\" height=\"100%\" loop=\"true\"></embed>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("    </th>\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("    <td width=\"10%\" scope=\"col\" bgcolor=\"FFCC66\">\n");
      out.write("        <img src=\"images/DIT.png\" height=\"100\" width=\"100%\"></br>\n");
      out.write("        <b><u>Project By:</u></b><br>\n");
      out.write("        >Akshay Gupta(TL)<br>\n");
      out.write("        >Anchal Tomar<br>\n");
      out.write("        \n");
      out.write("        >Archie<br>\n");
      out.write("        >Mahendra Bhama<br>\n");
      out.write("            <b>Branch:</b>IT(A) 4th yr</br>\n");
      out.write("            \n");
      out.write("        </td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"200\" bgcolor=\"FFFFCC\" >\n");
      out.write("       \n");
      out.write("            \n");
      out.write("            <marquee  behavior=\"scroll\" direction=\"up\" scrollamount=\"3\" height=\"500\">\n");
      out.write("            <b>Tips for a healthy cooking</b><br/><br/>\n");
      out.write("                <b> *</b> Keep clean everywhere. <br/><br/>\n");
      out.write("                <b> *</b> Do not eat customer's food.<br /><br/>\n");
      out.write("                <b> *</b> Go fast as you can do. <br/><br/>\n");
      out.write("                <b> *</b> Make food with happiness.<br/><br/>\n");
      out.write("                <b> *</b>Say yes to orders everyday.<br/><br/>\n");
      out.write("                <img src=\"images/scr.png\"></img>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("            </marquee></td>\n");
      out.write("    <td>\n");
      out.write("      <table width=\"100%\" height=\"10\" border=\"1\">\n");
      out.write("      <tr>\n");
      out.write("      <td width=\"25%\" align='center' ><b>Transaction Id</b></td>\n");
      out.write("      <td width=\"25%\" align='center'><b>Credit</b></td>\n");
      out.write("      <td width=\"25%\" align='center'><b>Debit</b></td>\n");
      out.write("      <td width=\"25%\" align='center'><b>Balance</b></td>\n");
      out.write("     \n");
      out.write("      \n");
      out.write("      </tr>\n");
      out.write("      <table width=\"100%\" height=\"490\" border=\"1\">\n");
      out.write("      <tr>\n");
      out.write("      <td width=\"25%\" align=\"center\">\n");
      out.write("       ");
      out.write("\n");
      out.write("          </table>  \n");
      out.write("      </td>\n");
      out.write("      \n");
      out.write("          \n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("     \n");
      out.write("      </table>\n");
      out.write("          <a href=\"logout\" >logout</a>\n");
      out.write("    <td bgcolor=\"FFFFCC\">    </td>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>\n");

            }
           
    
      out.write('\n');
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
