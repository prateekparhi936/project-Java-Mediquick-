<%-- 
    Document   : create
    Created on : 18 Jul, 2014, 12:50:25 AM
    Author     : yash
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>our website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=kamalice-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
         <div id=wrapper>
            <header>
                
            </header>
            <nav>
                  <ul>  
                    <li><a href="homepagelayout.jsp"> Home | </a></li>
                     <li><a href="aboutus.jsp"> About Us | </a></li>
                      <li><a href="product.jsp"> Products | </a>
                    
                      <ul>
                         <li><a href="electronic.jsp">electronic</a></li>
                          <li><a href="diagnostic.jsp">diagnostic</a></li>
                          <li><a href="surgical.jsp">surgical</a></li>
                          <li><a href="truma.jsp">emergency and trauma</a></li>
                          <li><a href="transport.jsp">storage and transport</a></li> 
                      </ul>   
                    </li>
                    
                      <li><a href="contact.jsp"> Contact | </a></li>
                       <li><a href="signin.jsp"> Sign In | </a></li>
                     
                </ul>         
            </nav>
            <article>
                <section>
                    <form>
            <table align="left">
                <tr><td>Username</td><td><input type="text" name="uname"></td></tr>
                <tr><td>Password</td><td><input type="password" name="pass"/></td></tr>
                <tr><td><input type="submit" name="submit" value="submit"/></td></tr>
                <tr><td>If not have account then </td><td><a href="create.jsp">Sign Up</a></td></tr>
                <tr><td><a href="forgotpass.jsp">Forgot password</a></td><tr>
                
            </table>
                    </form>
                    
                    </section>
            </article>
            <%
                String s = request.getParameter("submit");             
                try                                                  
                {
               //         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
             //   Connection con=DriverManager.getConnection("jdbc:odbc:mysql");
              Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
           //Statement st=con.createStatement(); 
          if(s!=null)
             {
                PreparedStatement ps=con.prepareStatement("select *from customer where uname=?  and pass=?");
                ps.setString(1, request.getParameter("uname")); 
                ps.setString(2, request.getParameter("pass"));
                ResultSet rs= ps.executeQuery();
                //rs=st.executeQuery("select *from custmer where uname=? and pass=?");
                if(rs.next())
                {
                   HttpSession hs =request.getSession(true);
                   hs.setAttribute("n", request.getParameter("uname"));
                   hs.setAttribute("pass",request.getParameter("pass"));
                   response.sendRedirect("homepagelayout.jsp");    
                }                   
              }
          
          con.close(); 
            }
                catch(Exception ex){
                    out.println(ex);
            }
                       
        %>             
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>
