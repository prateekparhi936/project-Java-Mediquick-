package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class ecg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>our website</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"diagnosticproducts.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div id=wrapper>\n");
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
      out.write("                           <li><a href=\"electronic.jsp\">electronic</a></li>\n");
      out.write("                          <li><a href=\"diagnostic.jsp\">diagnostic</a></li>\n");
      out.write("                          <li><a href=\"surgical.jsp\">surgical</a></li>\n");
      out.write("                          <li><a href=\"truma.jsp\">emergency and trauma</a></li>\n");
      out.write("                          <li><a href=\"transport.jsp\">storage and transport</a></li>      \n");
      out.write("                      </ul>   \n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                       <li><a href=\"contact.jsp\"> Contact | </a></li>\n");
      out.write("                       <li>");
 
                       HttpSession h = request.getSession();
                       String n = (String)h.getAttribute("n");                     
                       if(n!=null)
                       {
        
      out.write("\n");
      out.write("        welcome &nbsp;&nbsp;");
      out.print( n);
      out.write("\n");
      out.write("                      <ul>\n");
      out.write("                          <li><a href=\"update.jsp\">edit profile</a></li>\n");
      out.write("                          <li><a href=\"logout.jsp\">sign out</a></li>\n");
      out.write("                          \n");
      out.write("                          \n");
      out.write("                       </ul></li>\n");
      out.write("                         <li><a href=\"cart1.jsp\"> | MY Cart</a></li>\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("        ");

        }
       else{

      out.write("              <li><a href=\"signin.jsp\"> Sign In | </a></li>\n");
      out.write("         \n");
      out.write("          ");

       }
      out.write("          \n");
      out.write("                </ul>         \n");
      out.write("            </nav>\n");
      out.write("            <article>\n");
      out.write("                    ");
 try{ 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
        Statement st=con.createStatement(); 
         ResultSet rs;
         String s1="",s2="",s4="",s="ECG Machine";
         int s3=0;
          rs=st.executeQuery("select *from products where Name='"+s+"'");
                        while(rs.next())
                        {
                           s1=rs.getString(1);
                             s2=rs.getString(2);
                            s3=Integer.parseInt(rs.getString(3));
                            s4=rs.getString(5);
                
                        }
         
      out.write("\n");
      out.write("                \n");
      out.write("                <img src=\"ecg.jpg\"  width=\"300\" height=\"300\" align=\"center\"><br>\n");
      out.write("                <b>Name :</b> ");
 out.print(s1); 
      out.write("<br>\n");
      out.write("                <b>Type :</b> ");
 out.print(s2); 
      out.write("<br>\n");
      out.write("                <b>Price :</b> ");
 out.print(s3); 
      out.write("<br>\n");
      out.write("                <b>About :</b><br> ");
 out.print(s4); 
      out.write("<br>\n");
      out.write("                ");
 
                        h = request.getSession();
                        n = (String)h.getAttribute("n");                     
                       if(n!=null)
                       {
        
      out.write("  \n");
      out.write("                <a href=\"cart.jsp?t=ECG Machine\"><input type=\"submit\"  value=\"Add to Cart\"></a>\n");
      out.write("      \n");
      out.write("                  ");

        }
       else{

      out.write("              \n");
      out.write("<b>Sign In to buy!</b>\n");
      out.write("          ");

       }
      out.write('\n');

                 
              }
                    catch(Exception e)
                    {
                    out.println(e);
                    }

      out.write("\n");
      out.write("            </article>\n");
      out.write("            \n");
      out.write("            <div id=\"footer\">\n");
      out.write("                <h3>© 2014 Mediquick.com All Rights Reserved</h3>\n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("    </body>\n");
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
