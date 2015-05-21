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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Maahi
 */
public class stock extends HttpServlet {

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
             int ready= Integer.parseInt(request.getParameter("proc"));
             int ready1= Integer.parseInt(request.getParameter("procad"));
             String rwname3=request.getParameter("rmtnm3");
             String rwname = request.getParameter("rmtnm");
             String rwname2 = request.getParameter("rmtnm2");
             int qty2=Integer.parseInt(request.getParameter("rmtqty2"));
             int qty=Integer.parseInt(request.getParameter("rmtqty"));
             int price = Integer.parseInt(request.getParameter("rmtprc"));
             int rused=0;
             int trns=0;
             double bal=0;
             double pric=0;
             
       try
            {
               
                Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Connected to the database");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");
            
            
               if(ready==0)
               {
                  if(ready1==10)
                  {
                PreparedStatement ps= con.prepareStatement("INSERT INTO fosms(rawm,rqty,rprice,rused) values(?,?,?,?)");
                
                
                ps.setString(1,rwname);
                 ps.setInt(2,qty);
                  ps.setInt(3,price);
                
                
                  ps.setInt(4,rused);
            //        ps.setInt(5,rremain);
                ps.executeUpdate();
                 Statement s = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                 ResultSet rs = s.executeQuery("select * from fostrns");
                if(rs.last())
                {
                   bal=rs.getDouble(4); 
                 trns=rs.getInt(1);
                // rs.close();
                
                }
                 double bbal= bal;
              int ttrns =trns;
               
            PreparedStatement ps1= con.prepareStatement("insert into fostrns(trnsid,credit,debit,balance) values(?,?,?,?)");
            {   
         
          
         
           ps1.setInt(1,ttrns+1);
          
           ps1.setDouble(2,0);
           ps1.setDouble(3,qty*price);
           ps1.setDouble(4,bbal-(qty*price));
           int r1=ps1.executeUpdate();
          // p++;
            }
                response.sendRedirect("stock.jsp");
    
                  }
               if(ready1==20)
               {
               
               PreparedStatement ps= con.prepareStatement("DELETE FROM fosms WHERE rawm= ?");
                
                
                ps.setString(1,rwname2);
                ps.executeUpdate();
                response.sendRedirect("stock.jsp");
               
               }
                   
               }
            if(ready==1)
            {
                if(ready1==11)
                {
                 PreparedStatement ps= con.prepareStatement("update fosms set rqty=rqty + ? WHERE rawm= ?");
                 {
                ps.setInt(1,qty2);
                ps.setString(2,rwname3);
                ps.executeUpdate();
                 }
                 Statement s = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                 ResultSet rs = s.executeQuery("select * from fostrns");
                if(rs.last())
                {
                   bal=rs.getDouble(4); 
                 trns=rs.getInt(1);
                // rs.close();
                
                }
                
                      
                 Statement s2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                 ResultSet rs2 = s2.executeQuery("SELECT rprice from fosms WHERE rawm ='"+rwname3+"'");
               //  rs2.setString(1,rwname3);
                while(rs2.next())
                {
                   pric=rs2.getDouble(1); 
               // rs2.setString(1,rwname3);
                //rs.close();
                
                }
                    s2.close();
                    
     
                double bbal1= bal;
              int ttrns1 =trns;
               double price1=pric; 
            PreparedStatement ps1= con.prepareStatement("insert into fostrns(trnsid,credit,debit,balance) values(?,?,?,?)");
            {   
         
          
         
           ps1.setInt(1,ttrns1+1);
          
           ps1.setDouble(2,0);
           ps1.setDouble(3,qty2*price1);
           ps1.setDouble(4,bbal1-(qty2*price1));
           int r1=ps1.executeUpdate();
          
            }
                response.sendRedirect("stock.jsp");
               
                
                }
                if(ready1==12)
                {
                 PreparedStatement ps= con.prepareStatement("update fosms set rqty=rqty-? ,rused=rused+? WHERE rawm= ?");
                
                ps.setInt(1,qty2);
                ps.setInt(2,qty2);
                ps.setString(3,rwname3);
                ps.executeUpdate();
                response.sendRedirect("stock.jsp");
               
                
                }
            }}
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
