<%-- 
    Document   : logout
    Created on : 22 Aug, 2014, 1:59:42 PM
    Author     : yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% HttpSession h = request.getSession(false);
if(h != null)
    session.invalidate();
response.sendRedirect("homepagelayout.jsp");
        
        %>
    </body>
</html>
