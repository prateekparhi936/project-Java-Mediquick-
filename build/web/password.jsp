<%-- 
    Document   : password
    Created on : Aug 22, 2014, 7:17:43 PM
    Author     : Prateek Parhi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.String"%>
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
            <table align="left">
                <tr><br></tr>
                <tr><td>Password<br><br></td><td></td><td><input type="password" name="pass"><br><br></td></tr>
                <tr><td>Confirm Password<br><br></td><td></td><td><input type="password" name="cpwd"><br><br></td></tr>
                 <tr><td><input type="submit" name="update" value="update"></td></tr>
            </table>
                  
        </form>
                <br><br><br><br><br><br>
                 <%
                     
                        h = request.getSession();
                        n = (String)h.getAttribute("n"); 
                       String s1=request.getParameter("update");
         if(s1!=null)
          { 
              try
              {
                 
                  String pas=request.getParameter("pass");
                  String cp=request.getParameter("cpwd");
                  Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
                  Statement st=con.createStatement(); 
                   ResultSet rss;
                   if(pas.equals(cp))
                   {
                    int i=st.executeUpdate("update customer set pass='"+pas+"' where uname='"+n+"'");
                    int j=st.executeUpdate("update customer set cpwd='"+cp+"' where uname='"+n+"'");
                    if((i==1)&&(j==1))
                    {
                        out.println("your password changed successfully");
                    }
                   rss=st.executeQuery("select *from customer where uname='"+n+"'");
                    out.println("your profile after updation is: ");
                    String s="";
                    String s2="";
                    String s3="";
                    String s4="";
                    String s5="";
                   while(rss.next())
                  {
                      s=rss.getString(1);                      
                      s2=rss.getString(4);                      
                      s3=rss.getString(5);                     
                      s4=rss.getString(6);                    
                      s5=rss.getString(7);                      
                  }
                  %>
                  
                     <b>User Name :</b> <% out.print(s); %><br>
                <b>First Name:</b> <% out.print(s2); %><br>
                <b>Last Name :</b> <% out.print(s3); %><br>
                <b>DOB :</b> <% out.print(s4); %><br>
                <b>Email ID :</b><% out.print(s5); %><br>
                  
                  
                  <%
             }
                   else
         {
             out.println("Password and Confirm password does not match");
         }
        
              }
             catch(Exception e)
             {
                out.println(e);
             }
          }
         
         
         
                  %>
                  </articel>
                  <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div>    
    </body>
</html>

