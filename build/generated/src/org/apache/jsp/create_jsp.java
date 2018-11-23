package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class create_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                    int userId(String uid)
                    {
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
              Statement st=con.createStatement(); 

              
              ResultSet rs=st.executeQuery("Select *from customer where uname='"+uid+"'");
              if(rs.next())
                  return 1;
                        }
                        catch(Exception e)
                        {
                        }
                        
                        return 0;
                    }
                
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>our website</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=wrapper>\n");
      out.write("            <header>\n");
      out.write("                \n");
      out.write("            </header>\n");
      out.write("            <nav>\n");
      out.write("                  <ul>  \n");
      out.write("                    <li><a href=\"homepagelayout.jsp\"> Home | </a></li>\n");
      out.write("                     <li><a href=\"aboutus.jsp\"> About Us | </a></li>\n");
      out.write("                      <li><a href=\"product.jsp\"> Products | </a>\n");
      out.write("                    \n");
      out.write("                      <ul>\n");
      out.write("                          \n");
      out.write("                          <li><a href=\"electronic.jsp\">electronic</a></li>\n");
      out.write("                          <li><a href=\"diagnostic.jsp\">diagnostic</a></li>\n");
      out.write("                          <li><a href=\"surgical.jsp\">surgical</a></li>\n");
      out.write("                          <li><a href=\"truma.jsp\">emergency and trauma</a></li>\n");
      out.write("                          <li><a href=\"transport.jsp\">storage and transport</a></li>      \n");
      out.write("                          \n");
      out.write("                      </ul>   \n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                       <li><a href=\"contact.jsp\"> Contact | </a></li>\n");
      out.write("                       <li><a href=\"signin.jsp\"> Sign In | </a></li>\n");
      out.write("                     \n");
      out.write("                </ul>         \n");
      out.write("            </nav>\n");
      out.write("            <article>\n");
      out.write("               \n");
      out.write("                    <form>\n");
      out.write("            <table align=\"left\">\n");
      out.write("                <tr><br></tr>\n");
      out.write("                <tr><td>First Name<br><br></td><td></td><td><input type=\"text\" name=\"fname\"><br><br></td></tr>\n");
      out.write("                <tr><td>Last Name<br><br></td><td></td><td><input type=\"text\" name=\"lname\"><br><br></td></tr>\n");
      out.write("                <tr><td>DOB<br><br></td><td></td><td><input type=\"text\" name=\"dob\"><br><br></td></tr>\n");
      out.write("                <tr><td>Username<br><br></td><td></td><td><input type=\"text\" name=\"uname\"><br><br></td></tr>\n");
      out.write("                <tr><td>Password<br><br></td><td></td><td><input type=\"password\" name=\"pass\"><br><br></td></tr>\n");
      out.write("                <tr><td>Email ID<br><br></td><td></td><td><input type=\"text\" name=\"emailid\"><br><br></td></tr>\n");
      out.write("                <tr><td><input type=\"submit\" name=\"submit\" value=\"submit\"></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("                ");
      out.write("\n");
      out.write("          \n");
      out.write("            ");
 String s=request.getParameter("submit"); 
                 
        try{
              String fn=request.getParameter("fname");
              String ln=request.getParameter("lname");
              String db=request.getParameter("dob");
              String us=request.getParameter("uname");
              String pas=request.getParameter("pass");
              String cp=request.getParameter("cpwd");
              String eid=request.getParameter("emailid");
              
             
           
           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
              Statement st=con.createStatement(); 
              ResultSet rs;
             
              String us1=us;
              String eid1=eid;   // these two variables are taken to check whether the entered username and email addrs are UNIQUE OR NOT..
              String usr;
              String eids; 
             if(s!=null)
             {
                 int n=userId(us1);
                 if (n==0)
                 {
                 st.executeUpdate("insert into customer value('"+us+"','"+pas+"','"+pas+"','"+fn+"','"+ln+"','"+db+"','"+eid+"')");                                            
                 }
                 
                 else
                 {
                     response.sendRedirect("exist.jsp");
                 }
              }
         }
       
        
   catch(Exception e)
              {
                 out.println(e);
              }
      out.write("\n");
      out.write("                \n");
      out.write("            </article>\n");
      out.write("            \n");
      out.write("            <div id=\"footer\">\n");
      out.write("                <h3>© 2014 Mediquick.com All Rights Reserved</h3>\n");
      out.write("            </div>\n");
      out.write("        </div>    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
