<%-- 
    Document   : update
    Created on : Aug 22, 2014, 3:07:23 PM
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
                <p>user data is: </p>
                <%
                       h = request.getSession();
                        n = (String)h.getAttribute("n"); 
                     try
                     {
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
                       Statement st=con.createStatement(); 
                       ResultSet rs;
                       rs=st.executeQuery("select *from customer where uname='"+n+"'");
                       String s1="";
                       String s2="";
                       String s3="";
                       String s4="";
                       String s5="";
                  while(rs.next())
                  {
                      s1=rs.getString(1);                     
                      s2=rs.getString(4);
                      s3=rs.getString(5);                      
                      s4=rs.getString(6);                      
                      s5=rs.getString(7);
                     
                  } 
                  %>
                  
                   <b>User Name :</b> <% out.print(s1); %><br>
                <b>First Name:</b> <% out.print(s2); %><br>
                <b>Last Name :</b> <% out.print(s3); %><br>
                <b>DOB :</b> <% out.print(s4); %><br>
                <b>Email ID :</b><% out.print(s5); %><br>
                
                  <%
             }
             catch(Exception e)
             {
                out.println(e);
             }
                     
                     %>
                
                <p>CLICK ON THE FIELD WHERE CHANGES HAVE TO BE MADE</p><br><br>
                <table align="left" border="1px solid">
                <tr><td><a href="Firstname.jsp">FIRST- NAME</a></td></tr>
                <tr><td><a href="lastname.jsp">LAST- NAME</a></td></tr>
                <tr><td><a href="dob.jsp">DOB</a><br></td></tr>
                <tr><td><a href="password.jsp">PASSWORD</a></td></tr>
                <tr><td><a href="emailid.jsp">EMAIL-ID</a></td></tr>
                </table>
                
               
      
                </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div>    
    </body>
</html>
