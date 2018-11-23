<%-- 
    Document   : delete
    Created on : 6 Aug, 2014, 5:26:45 PM
    Author     : yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <% 
        try{
            String i=request.getParameter("t");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
        Statement st=con.createStatement();
        
        st.executeUpdate("delete from products1 where Name='"+i+"'");
    response.sendRedirect("cart1.jsp");
     }
        catch(Exception e)
        { out.println(e);
        }
        
        %>
    </body>
</html>
