/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Maahi
 */
public class employee extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
                             HttpSession sess=request.getSession(false);
             
                if(sess.getAttribute("username")==null)
                {
                    response.sendRedirect("login.jsp");
                }
            
                
                else{

            /* TODO output your page here. You may use following sample code. */
  //          int ready2=0,ready3=0,ready4=0,ready5=0,ready6=0 ,ready7=0;
             int ready= Integer.parseInt(request.getParameter("proc"));
             int ready1= Integer.parseInt(request.getParameter("procad"));
        /*    ready2 =Integer.parseInt(request.getParameter("c0"));
            ready3=Integer.parseInt(request.getParameter("c1"));
             ready4=Integer.parseInt(request.getParameter("c2"));
             ready5=Integer.parseInt(request.getParameter("c3"));
             ready6=Integer.parseInt(request.getParameter("c4"));
              ready7=Integer.parseInt(request.getParameter("c5"));
*/             String empid=request.getParameter("empid");
             String empid2=request.getParameter("empid2");
             String empid3=request.getParameter("empid3");
             String empname = request.getParameter("empnm");
             String empname2=request.getParameter("empnm2");
             String empgen = request.getParameter("gender");
             String empdesg = request.getParameter("empdesg");
            String empdesg2 = request.getParameter("empdesg2");
             double empsal=Double.parseDouble(request.getParameter("empsal"));
             String empsal2=request.getParameter("empsal2");
             double empmo=Double.parseDouble(request.getParameter("empmo"));
            String empmo2=request.getParameter("empmo2");
             String empemail = request.getParameter("empemail");
             String empemail2 = request.getParameter("empemail2");
             String empadrs = request.getParameter("empadrs");
            String empadrs2 = request.getParameter("empadrs2");
       /*   if(ready2!=11)
             {
                 ready2=0;
             }
             if(ready3!=12)
             {
                 ready3=0;
             }
             if(ready4!=13)
             {
                 ready4=0;
             }
             if(ready5!=14)
             {
                 ready5=0;
             }
             if(ready6!=15)
             {
                 ready6=0;
             }
             if(ready7!=16)
             {
                 ready2=0;
             }
      */ try
            {
               
                Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Connected to the database");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
            
            
               if(ready==0)
               {
                  if(ready1==10)
                  {
                PreparedStatement ps= con.prepareStatement("INSERT INTO fosemp(empid,empname,empgen,empdesg,empsal,empmo,empemail,empadrs) values(?,?,?,?,?,?,?,?)");
                
                
                ps.setString(1,empid);
                 ps.setString(2,empname);
                  ps.setString(3,empgen);
                  ps.setString(4,empdesg);
                  ps.setDouble(5,empsal);
                  ps.setDouble(6,empmo);
                  ps.setString(7,empemail);
                  ps.setString(8,empadrs);
           
                ps.executeUpdate();
                response.sendRedirect("employee.jsp");
    
                  }
               if(ready1==20)
               {
               
               PreparedStatement ps= con.prepareStatement("DELETE FROM fosemp WHERE empid= ?");
                
                
                ps.setString(1,empid2);
                ps.executeUpdate();
                response.sendRedirect("employee.jsp");
               
               }
                   
               }
          if(ready==1)
            {
                if(!empname2.equals("enter text"))
                {
                 PreparedStatement ps1= con.prepareStatement("UPDATE fosemp set empname=? WHERE empid= ?");
                
                ps1.setString(1,empname2);
                ps1.setString(2,empid3);
                ps1.executeUpdate();
                //response.sendRedirect("index.html");
               
                
                }
                         if(!empsal2.equals("enter text"))
                { 
                 PreparedStatement ps2= con.prepareStatement("update fosemp set empsal=? WHERE empid= ?");
                
                ps2.setDouble(1,Double.parseDouble(empsal2));
                ps2.setString(2,empid3);
               
                ps2.executeUpdate();
               }
                 if(!empdesg2.equals("enter text"))
                {
                 PreparedStatement ps3= con.prepareStatement("update fosemp set empdesg=? WHERE empid= ?");
                
                ps3.setString(1,empdesg2);
                ps3.setString(2,empid3);
               
                ps3.executeUpdate();
               }
                 if(!empmo2.equals("enter text"))
                {
                 PreparedStatement ps4= con.prepareStatement("update fosemp set empmo=? WHERE empid= ?");
                
                ps4.setDouble(1,Double.parseDouble(empmo2));
                ps4.setString(2,empid3);
               
                ps4.executeUpdate();
               }
                 if(!empemail2.equals("example@example.com"))
                {
                 PreparedStatement ps5= con.prepareStatement("update fosemp set empemail=? WHERE empid= ?");
                
                ps5.setString(1,empemail2);
                ps5.setString(2,empid3);
               
                ps5.executeUpdate();
               }
                
               if(!empadrs2.equals("enter text"))
                {
                 PreparedStatement ps6= con.prepareStatement("update fosemp set empadrs=? WHERE empid= ?");
                
                ps6.setString(1,empadrs2);
                ps6.setString(2,empid3);
               
                ps6.executeUpdate();
               }
                 
              response.sendRedirect("employee.jsp");   
            }
               } 
       catch(Exception e)
       {
           out.print(e);
       }
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
