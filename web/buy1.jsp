<%-- 
    Document   : buy1
    Created on : 10 Sep, 2014, 12:11:17 AM
    Author     : Yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                 <img src="visamc.jpg" name="slide" align="center" width="80" height="50" /><br><br>
                     <b>CREDIT CARD INFORMATION</b><br><br>
                Your payment will be processed securely.<br><br>
                <form>
                   
                    <table>
                   
                <tr><td><b>Name on Card</b></td><td></td><td><input type="text" name="name"><br><br></td></tr>
                <tr><td> <b>Credit Card number</b></td><td></td><td><input type="text" name="number"><br><br></td></tr>
                  <tr><td><b>Expiry Date</b></td><td></td><td><input type="text" name="date"><br><br></td></tr>
                 <tr><td>  <b>CVV</b></td><td></td><td><input type="text" name="cvv"><br><br></td></tr>
                 <tr><td> <input type="submit" name="submit" value="SUBMIT">
                    </table>
                    </form>
                <%
                       if(request.getParameter("submit")!=null)
                       {
                           response.sendRedirect("buy3.jsp");
                       }
                       
                       
                       %>
                
                    
            </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>

