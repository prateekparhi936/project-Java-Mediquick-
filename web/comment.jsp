<%-- 
    Document   : comment
    Created on : Aug 21, 2014, 12:36:40 PM
    Author     : Prateek Parhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%

   try{
       
       
           String s=request.getParameter("name");
           String sc=request.getParameter("commentcontent");
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
           Statement st=con.createStatement(); 
           ResultSet rs;
         
          if(s==null)
             out.println("No name ...cannot pass a comment");
          
          else {
         
                  st.executeUpdate("insert into comment values('"+s+"','"+sc+"')");        
                  response.sendRedirect("homepagelayout.jsp");
                                             
               }
          
      }
   catch(Exception e)
              {
                 out.println(e);
              }%>
    </body>
</html>
