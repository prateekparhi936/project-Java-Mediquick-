<%-- 
    Document   : ecg
    Created on : Sep 10, 2014, 1:51:26 PM
    Author     : Prateek Parhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>our website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="diagnosticproducts.css" rel="stylesheet" type="text/css">
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
                    <% try{ 
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
         %>
                
                <img src="ecg.jpg"  width="300" height="300" align="center"><br>
                <b>Name :</b> <% out.print(s1); %><br>
                <b>Type :</b> <% out.print(s2); %><br>
                <b>Price :</b> <% out.print(s3); %><br>
                <b>About :</b><br> <% out.print(s4); %><br>
                <% 
                        h = request.getSession();
                        n = (String)h.getAttribute("n");                     
                       if(n!=null)
                       {
        %>  
                <a href="cart.jsp?t=ECG Machine"><input type="submit"  value="Add to Cart"></a>
      
                  <%
        }
       else{
%>              
<b>Sign In to buy!</b>
          <%
       }%>
<%
                 
              }
                    catch(Exception e)
                    {
                    out.println(e);
                    }
%>
            </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>
