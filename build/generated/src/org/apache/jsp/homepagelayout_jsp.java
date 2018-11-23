package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class homepagelayout_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>our website</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("         <script type=\"text/javascript\">\r\n");
      out.write("            var image1=new Image();\r\n");
      out.write("            image1.src=\"surgical.jpg\";\r\n");
      out.write("            var image2=new Image();\r\n");
      out.write("            image2.src=\"truma.jpg\";\r\n");
      out.write("            var image3=new Image();\r\n");
      out.write("            image3.src=\"storage.jpg\";\r\n");
      out.write("            var image4=new Image();\r\n");
      out.write("            image4.src=\"diagnostic.jpg\";\r\n");
      out.write("            var image5=new Image();\r\n");
      out.write("            image5.src=\"electronic.jpg\";\r\n");
      out.write("        </script>\r\n");
      out.write("        <link href=\"style1.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=wrapper>\r\n");
      out.write("            <header>\r\n");
      out.write("                \r\n");
      out.write("            </header>\r\n");
      out.write("            <nav>\r\n");
      out.write("                <ul>  \r\n");
      out.write("                    <li><a href=\"homepagelayout.jsp\"> Home | </a></li>\r\n");
      out.write("                     <li><a href=\"aboutus.jsp\"> About Us | </a></li>\r\n");
      out.write("                      <li><a href=\"product.jsp\"> Products | </a>\r\n");
      out.write("                    \r\n");
      out.write("                      <ul>\r\n");
      out.write("                          \r\n");
      out.write("                         <li><a href=\"electronic.jsp\">electronic</a></li>\r\n");
      out.write("                          <li><a href=\"diagnostic.jsp\">diagnostic</a></li>\r\n");
      out.write("                          <li><a href=\"surgical.jsp\">surgical</a></li>\r\n");
      out.write("                          <li><a href=\"truma.jsp\">emergency and trauma</a></li>\r\n");
      out.write("                          <li><a href=\"transport.jsp\">storage and transport</a></li>      \r\n");
      out.write("                      </ul>   \r\n");
      out.write("                    </li>\r\n");
      out.write("                    \r\n");
      out.write("                       <li><a href=\"contact.jsp\"> Contact | </a></li>\r\n");
      out.write("                       <li>");
 
                       HttpSession h = request.getSession();
                       String n = (String)h.getAttribute("n");                     
                       if(n!=null)
                       {
        
      out.write("\r\n");
      out.write("        welcome &nbsp;&nbsp;");
      out.print( n);
      out.write("\r\n");
      out.write("                      <ul>\r\n");
      out.write("                          <li><a href=\"update.jsp\">edit profile</a></li>\r\n");
      out.write("                          <li><a href=\"logout.jsp\">sign out</a></li>\r\n");
      out.write("                          \r\n");
      out.write("                          \r\n");
      out.write("                       </ul></li>\r\n");
      out.write("                         <li><a href=\"cart1.jsp\"> | MY Cart</a></li>\r\n");
      out.write("                         \r\n");
      out.write("                         \r\n");
      out.write("        ");

        }
       else{

      out.write("              <li><a href=\"signin.jsp\"> Sign In | </a></li>\r\n");
      out.write("         \r\n");
      out.write("          ");

       }
      out.write("          \r\n");
      out.write("                </ul>         \r\n");
      out.write("            </nav>\r\n");
      out.write("                     \r\n");
      out.write("             \r\n");
      out.write("            <article> \r\n");
      out.write("                <br>\r\n");
      out.write("               \r\n");
      out.write("                <p>\r\n");
      out.write("                   \r\n");
      out.write("                    <a href=\"product.jsp\"><img src=\"surgical.jpg\" name=\"slide\" align=\"center\" width=\"800\" height=\"250\" /></a>\r\n");
      out.write("                 <script type=\"text/javascript\">\r\n");
      out.write("            var step=1;\r\n");
      out.write("            function slideit()\r\n");
      out.write("            {\r\n");
      out.write("                \r\n");
      out.write("                if(step<7)\r\n");
      out.write("                {\r\n");
      out.write("                    document.images.slide.src=eval(\"image\"+step+\".src\");\r\n");
      out.write("                    \r\n");
      out.write("                }\r\n");
      out.write("                step++;\r\n");
      out.write("                if(step==6)\r\n");
      out.write("                   step=1;\r\n");
      out.write("               \r\n");
      out.write("                  setTimeout(\"slideit()\",1500);\r\n");
      out.write("            }\r\n");
      out.write("            slideit();\r\n");
      out.write("            </script>\r\n");
      out.write("               \r\n");
      out.write("                </p>\r\n");
      out.write("                <section class=\"image\">\r\n");
      out.write("                    <img src=\"happydoctor.jpg\" width=\"100\" height=\"200\"  /> \r\n");
      out.write("                </section>\r\n");
      out.write("                \r\n");
      out.write("                 \r\n");
      out.write("                 <section class=\"write\">\r\n");
      out.write("                     \r\n");
      out.write("                     <b>WELCOME TO MEDIQUICK</b><br><br>\r\n");
      out.write("                     Mediquick is one stop online store for healthy people, patients, doctors, nursing homes and hospitals.\r\n");
      out.write("                    We offer personal health care products, medical equipments and surgical instruments for home and hospitals.\r\n");
      out.write("                 </section>\r\n");
      out.write("                <section class=\"image2\">\r\n");
      out.write("                    <img src=\"home.jpg\" width=\"432\" height=\"200\"  /> \r\n");
      out.write("                </section>\r\n");
      out.write("                 \r\n");
      out.write("                <section class=\"write2\">\r\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>PRODUCT CATEGORIES</b><br><br>\r\n");
      out.write("                     <div class=\"productimg\">\r\n");
      out.write("                  <a href=\"electronic.jsp\"><img src=\"electronic.jpg\" alt=\"electronics\" width=\"200\" height=\"200\"></a>\r\n");
      out.write(" <div class=\"desc\">ELECTRONIC</div> \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"productimg\">\r\n");
      out.write("                     <a href=\"diagnostic.jsp\"><img src=\"diagnostic.jpg\" alt=\"electronics\" width=\"200\" height=\"200\"></a>\r\n");
      out.write(" <div class=\"desc\">DIAGNOSTIC</div>\r\n");
      out.write("                </div>\r\n");
      out.write("    <div class=\"productimg\">\r\n");
      out.write("        <a href=\"surgical.jsp\"><img src=\"surgical.jpg\" alt=\"electronics\" width=\"200\" height=\"200\"></a>\r\n");
      out.write(" <div class=\"desc\">SURGICAL</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("   <div class=\"productimg\">\r\n");
      out.write("                     <a href=\"truma.jsp\"><img src=\"truma.jpg\" alt=\"electronics\" width=\"200\" height=\"200\"></a>\r\n");
      out.write(" <div class=\"desc\">EMERGENCY AND TRAUMA</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("    <div class=\"productimg\">\r\n");
      out.write("                     <a href=\"storage.jsp\"><img src=\"storage.jpg\" alt=\"electronics\" width=\"200\" height=\"200\"></a>\r\n");
      out.write(" <div class=\"desc\">STORAGE AND TRANSPORT</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                </section>\r\n");
      out.write("            </article>\r\n");
      out.write("            \r\n");
      out.write("            <section class=\"side\">\r\n");
      out.write("                <b>REVIEWS</b><br>\r\n");
      out.write("                <table border=\"1\">\r\n");
      out.write("                    <tr><td>\r\n");
      out.write("                ");

        try
        {
           String s=request.getParameter("name");
           String sc=request.getParameter("commentcontent");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
           Statement st=con.createStatement(); 
           ResultSet rs;
     
           String sc2;
           String sc1;
           rs=st.executeQuery("select *from comment");
           while(rs.next())
                        {
                             sc1=rs.getString(1);                            
                             sc2=rs.getString(2);
                         
                       
      out.write("     \r\n");
      out.write("                    \r\n");
      out.write("                       <b>By:</b> ");
 out.println(sc1);
      out.write("<br>\r\n");
      out.write("                               ");
 out.println(sc2);
      out.write("<br>\r\n");
      out.write("                               \r\n");
      out.write("              \r\n");
      out.write("                     ");
  }
      out.write("\r\n");
      out.write("                     </td>  </tr>  </table>\r\n");

        
        }
        catch(Exception e)
           {
             out.println(e);
           }
      out.write("\r\n");
      out.write("                  <form action=\"comment.jsp\" method=\"post\">\r\n");
      out.write("                      Name:<br><input type=\"text\" name=\"name\"><br/>\r\n");
      out.write("                         Comments:<br><textarea name=\"commentcontent\"></textarea><br>\r\n");
      out.write("                 <input type=\"submit\" name=\"Submit\" value=\"submit\"><br> \r\n");
      out.write("                 </form>\r\n");
      out.write("                \r\n");
      out.write("            </section>\r\n");
      out.write("            <div id=\"footer\">\r\n");
      out.write("                <h3>© 2014 Mediquick.com All Rights Reserved</h3>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>    \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
