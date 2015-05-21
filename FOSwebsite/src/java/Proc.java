

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class Proc extends HttpServlet {
    double pay;
    int i,ttime=2;
   double bal;
    int trns;
    int[] qty = new int[99];
    String[] itemname=new String[99];
    int[] time=new int[99];
   Connection con;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {  
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           HttpSession sess=request.getSession(false);
             
                if(sess.getAttribute("username")==null)
                {
                    response.sendRedirect("login.jsp");
                }
            
                
                else{
         
            try{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Connected to the database");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dit","root","root");



//String username= request.getParameter("ctableno");

String username= (String) sess.getAttribute("username");
qty[0]=Integer.parseInt(request.getParameter("lmn"));
itemname[0]= request.getParameter("LMN");
time[0]=Integer.parseInt(request.getParameter("lmnt"));

qty[1]=Integer.parseInt(request.getParameter("apl"));
itemname[1]= request.getParameter("APL");
time[1]=Integer.parseInt(request.getParameter("aplt"));

qty[2]=Integer.parseInt(request.getParameter("bby"));
itemname[2]= request.getParameter("BBY");
time[2]=Integer.parseInt(request.getParameter("bbyt"));

qty[3]=Integer.parseInt(request.getParameter("mgo"));
itemname[3]= request.getParameter("MGO");
time[3]=Integer.parseInt(request.getParameter("mgot"));

qty[4]=Integer.parseInt(request.getParameter("bna"));
itemname[4]= request.getParameter("BNA");
time[4]=Integer.parseInt(request.getParameter("bnat"));

qty[5]=Integer.parseInt(request.getParameter("ong"));
itemname[5]= request.getParameter("ONG");
time[5]=Integer.parseInt(request.getParameter("ongt"));

//coffee

qty[6]=Integer.parseInt(request.getParameter("cfe"));
itemname[6]= request.getParameter("CFE");
time[6]=Integer.parseInt(request.getParameter("cfet"));

qty[7]=Integer.parseInt(request.getParameter("bfe"));
itemname[7]= request.getParameter("BFE");
time[7]=Integer.parseInt(request.getParameter("bfet"));

qty[8]=Integer.parseInt(request.getParameter("hfe"));
itemname[8]= request.getParameter("HFE");
time[8]=Integer.parseInt(request.getParameter("hfet"));

//tea
qty[9]=Integer.parseInt(request.getParameter("bkt"));
itemname[9]= request.getParameter("BKT");
time[9]=Integer.parseInt(request.getParameter("bktt"));

qty[10]=Integer.parseInt(request.getParameter("grt"));
itemname[10]= request.getParameter("GRT");
time[10]=Integer.parseInt(request.getParameter("grtt"));

qty[11]=Integer.parseInt(request.getParameter("lmt"));
itemname[11]= request.getParameter("LMT");
time[11]=Integer.parseInt(request.getParameter("lmtt"));

qty[12]=Integer.parseInt(request.getParameter("cdt"));
itemname[12]= request.getParameter("CDT");
time[12]=Integer.parseInt(request.getParameter("cdtt"));

//burger

qty[13]=Integer.parseInt(request.getParameter("vgb"));
itemname[13]= request.getParameter("VGB");
time[13]=Integer.parseInt(request.getParameter("vgbt"));

qty[14]=Integer.parseInt(request.getParameter("ceb"));
itemname[14]= request.getParameter("CEB");
time[14]=Integer.parseInt(request.getParameter("cebt"));

qty[15]=Integer.parseInt(request.getParameter("chb"));
itemname[15]= request.getParameter("CHB");
time[15]=Integer.parseInt(request.getParameter("chbt"));

qty[16]=Integer.parseInt(request.getParameter("hab"));
itemname[16]= request.getParameter("HAB");
time[16]=Integer.parseInt(request.getParameter("habt"));

//pizza

qty[17]=Integer.parseInt(request.getParameter("grp"));
itemname[17]= request.getParameter("GRP");
time[17]=Integer.parseInt(request.getParameter("grpt"));

qty[18]=Integer.parseInt(request.getParameter("dfp"));
itemname[18]= request.getParameter("DFP");
time[18]=Integer.parseInt(request.getParameter("dfpt"));

qty[19]=Integer.parseInt(request.getParameter("map"));
itemname[19]= request.getParameter("MAP");
time[19]=Integer.parseInt(request.getParameter("mapt"));

qty[20]=Integer.parseInt(request.getParameter("fcp"));
itemname[20]= request.getParameter("FCP");
time[20]=Integer.parseInt(request.getParameter("fcpt"));

qty[21]=Integer.parseInt(request.getParameter("scp"));
itemname[21]= request.getParameter("SCP");
time[21]=Integer.parseInt(request.getParameter("scpt"));




pay=Double.parseDouble(request.getParameter("total"));


/*if(qty[i]!=0)
{
    ttime= time[i]+ttime;
    ttime1= time[1]+time[2]+time[3]+time[4]+time[5]+time[6]+time[7]+time[8]+time[9]+time[10]+time[11]+time[12];
      ttime1= time[12]+time[14]+time[15]+time[16]+time[17]+time[18]+time[19]+time[20]+time[21];
}*/
    

      

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Thank You</title>"); 
            out.println("<link rel=\"stylesheet\" href=\"stylecust.css\">");
            out.println("</head>");
            out.println("<body bgcolor='CCFF66' onLoad='timer()' onUnload='unload()'>");
            
            out.println("<table width='100%' height='488' border='1'>");
            out.println("<tr>");
            out.println("<th width='10%' height='65' scope='col' bgcolor='FFCC66' background='images/cof.jpeg' ></th>");
            out.println("<th width='80%' scope='col' bgcolor='000000'>");
            out.println("<table width='100%'>");
            out.println("<tr>");
            out.println("<td width='20%'>");
            out.println("<embed src='images/1.jpg' width='100%' height='100%' loop='true'>  </embed>");
            out.println("</td>");
            out.println(" <td width='20%'>");
            out.println("<embed src='images/2.jpeg' width='100%' height='100%' loop='true'></embed>");
            out.println("</td>");
            out.println("<td width='20%'>");
            out.println("<embed src='images/3.jpeg' width='100%' height='100%' loop='true'></embed>");
            out.println(" </td>");
            out.println("<td width='20%'>");
            out.println(" <embed src='images/4.jpeg' width='100%' height='100%' loop='true'></embed>");
            out.println(" </td>");
            out.println(" <td width='20%'>");
            out.println("   <embed src='images/5.jpeg' width='100%' height='100%' loop='true'></embed>");
            out.println("</td>");
            out.println("</tr>");
            out.println("</th>");
            
            out.println(" </table>");
            
        
            out.println(" <td width='10%' scope='col' bgcolor='FFCC66'>");
            out.println(" <img src='images/DIT.png' height='100' width='100%'></br>");
            out.println(" <b><u>Project By:</u></b><br>");
            out.println(" >Akshay Gupta(TL)<br>");
            out.println(" >Anchal Tomar<br>");
            out.println(" >Mahendra Bhama<br>");
            out.println(" >Archie<br>");
            out.println(" <b>Branch:</b>IT(A) 4th yr</br>");
            
            out.println(" </td>");
            out.println(" </tr>");
            out.println(" <tr>");
            out.println(" <td height='283' bgcolor='FFFFCC' >");
            
            
            out.println(" <marquee  behavior='scroll' direction='up' scrollamount='3' height='500'>");
            out.println(" <b>Tips for a healthy Living</b><br/><br/>");
            out.println(" <b> *</b> Enjoy big glass of water first thing in the morning.<br/><br/>");
            out.println(" <b> *</b> Grab  few fresh fruit on your way out.<br /><br/>");
            out.println(" <b> *</b>Exercise on the go. <br/><br/>");
            out.println("<b> *</b> Eat a handful of nuts.<br/><br/>");
            out.println("<b> *</b>Say yes to juice everyday.<br/><br/>");
            out.println("<img src='images/scr.png'></img>");
                        
                        
            out.println("</marquee>");
               
            out.println("</td>");
            out.println("<td ><table width='100%'  border='1'><p align='center'><img src='images/chef.png' >");
            out.println("<h3 align='center'>Your order is successfully placed</h3></p></tr>");
            out.println("<tr>");
            out.println("<td width='50%'  bgcolor='FFCC66' align='center'><b>Item Name / Quantity</b></td>");
            out.println("<td width='50%'  bgcolor='FFCC66' align='center'><b>Approx Time</b></td>");
            
            out.print("</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td width='20%' bgcolor='FFCC66' align='center'>");
            for(i=0;i<=qty.length-1;i++){
   
    
            for(i=0;i<=itemname.length-1;i++){
    
        
            for(i=0;i<=time.length-1;i++){
        
            
            if(qty[i]!=0 && itemname[i]!="null" && time[i]!=0){
    

            PreparedStatement ps= con.prepareStatement("insert into fosweb(username,itemname,qty,total) values(?,?,?,?)");
            {
           // ttime=time[i]+ttime;
                ttime=30;
     
            ps.setString(1,username);
            ps.setString(2,itemname[i]);
            ps.setInt(3,qty[i]);
            //ps.setInt(4,time[i]);
            ps.setDouble(4, pay);
            int r=ps.executeUpdate();

            
            out.print(itemname[i]+" / "+qty[i]+"<br>");
            }
             PreparedStatement ps2= con.prepareStatement("insert into foschefo(username,itemname,qty) values(?,?,?)");
               {    
            ps2.setString(1,username);
            ps2.setString(2,itemname[i]);
            ps2.setInt(3,qty[i]);
           int r2=ps2.executeUpdate();
          
                
               }
           
            }
            }
            }
            }
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
               Double pay1= Double.parseDouble(request.getParameter("total")); 
            PreparedStatement ps1= con.prepareStatement("insert into fostrns(trnsid,credit,debit,balance) values(?,?,?,?)");
            {   
         // int p=77;
           //String ts= "order"+p; 
         
           ps1.setInt(1,ttrns+1);
          
           ps1.setDouble(2,pay1);
           ps1.setDouble(3,0);
           ps1.setDouble(4,bbal+pay1);
           int r1=ps1.executeUpdate();
          // p++;
            }
               
         /*  
          */  
            
            
            }
            
            
            catch(Exception e)
            {
            out.print(e);

            }   
            finally
            {
                con.close();
                
            }
            
            out.print("</td>");
            
           
              
            out.println("<td bgcolor='FFCC66'>");
            out.println("<div id='timer' align='center'><font size='10'><b>0:00</b></font></div><script type='text/javascript'>");
            out.println("function countdown(minutes) {");
            out.println("var seconds = 60;");
            out.println("var mins = minutes;");
            out.println("function tick() {");
            out.println(" var counter = document.getElementById('timer');");
            out.println("var current_minutes = mins-1");
            out.println("seconds--;");
            out.println("counter.innerHTML = ");
            out.println("current_minutes.toString() + ':' + (seconds < 10 ? '0' : '') + String(seconds);");
            out.println("if( seconds > 0 ) {");
            out.println("setTimeout(tick, 1000);");
            out.println("} else {");

            out.println("if(mins > 1){");
            out.println("setTimeout(function () { countdown(mins - 1); }, 1000);");
            out.println("     }}} tick();}");  
            out.println("countdown("+ttime+");");
            out.println(" </script>");
            out.print("</td></tr>");
            out.print("</table>");
    
            out.println(" </td>");
            out.println("<td>");
            out.println("<p align='center'><b><u>Feedback:</u></b><br></p>");
            out.println("<p align='center'><i>If you liked our services please rate <br><b>5 star</b>.</i><br><p>");
            out.println("<input type='radio' name='fdk' id='1' value='1' />1 Star<br><br><br>");
            out.println("<input type='radio' name='fdk' id='2' value='2' />2 Star<br><br><br>");
            out.println("<input type='radio' name='fdk' id='3' value='3'  />3 Star<br><br><br>");
            out.println("<input type='radio' name='fdk' id='4' value='4' />4 Star<br><br><br>");
            out.println("<input type='radio' name='fdk' id='5' value='5'  checked />5 Star<br><br><br>");
            
    
            out.println("</td>");
            out.println("</tr>");
            out.println("<tr><td bgcolor='FFCC66'></td>");
            out.println("<td bgcolor='FFCC66' align='center'>");
            out.print("<br><b>Total Payment :</b> Rs."+pay+"<br>");
            out.print("</td>");
            out.println("<td><a href=\"logout\" ><input type=\"button\" value=\"logout\" style=\"vertical-align: bottom;\"/></a>");
            out.println("<a href=\"admin.jsp\" ><input type=\"button\" value=\"Home\" style=\"vertical-align: bottom;\"/></a></td>");
            out.println(" </table></form></body></html>");

            
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        
        }   
    
    }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Proc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Proc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
