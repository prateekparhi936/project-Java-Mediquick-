<%-- 
    Document   : forgotpass
    Created on : Aug 24, 2014, 6:32:38 PM
    Author     : Prateek Parhi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>our website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                       <li><% 
                       HttpSession h = request.getSession();
                       String n = (String)h.getAttribute("n");                     
                       if(n!=null)
                       {
        %>
        welcome &nbsp;&nbsp;<%= n%>
                      <ul>
                          <li><a href="update.jsp">edit profile</a></li>
                          <li><a href="logout.jsp">sign out</a></li>
                          
                          
                       </ul></li>
                         <li><a href="cart1.jsp"> | MY Cart</a></li>
                         
                         
        <%
        }
       else{
%>              <li><a href="signin.jsp"> Sign In | </a></li>
         
          <%
       }%>          
                </ul>         
            </nav>
                     
            <article>
                <form>
                 <tr><td>Username<br><br></td><td></td><td><input type="text" name="uname"><br></td></tr>
                  <tr><td>Email ID<br><br></td><td></td><td><input type="text" name="emailid"><br></td></tr>
                    <tr><td><input type="submit" name="submit" value="submit"></td></tr>
                </form>
                    <%
         String s2=request.getParameter("submit");
         if(s2!=null)
          {
             try
             {   
                  String eid=request.getParameter("emailid");
                  String us=request.getParameter("uname");
                  Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
                  Statement st=con.createStatement(); 
                  ResultSet rss;
                  rss=st.executeQuery("select *from customer where uname='"+us+"'");
                  String s=" ";
                  while(rss.next())
                  {
                      s=rss.getString(2);
                      out.println("password is: ");
                      out.println(s);
                  }
             }
             catch(Exception e)
             {
                out.println(e);
             }
          }
         %>
         
                </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div>    
    </body>
</html>