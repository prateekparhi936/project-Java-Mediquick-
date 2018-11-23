<%-- 
    Document   : buy
    Created on : 20 Aug, 2014, 3:59:10 PM
    Author     : yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.String"%>
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
                <%
                    String s=request.getParameter("t");
                   
                    %>
                    <br>
                    <b>AMOUNT: </b><%out.print(s); %><br>
                    Choose Payment Option<br>
                    <form>
                    <input type="radio" name="choose" value="Cash on Delivery"><b>Cash on Delivery</b><br>
                    <input type="radio" name="choose" value="Pay Online"><b>Pay Online</b><br>
                    <input type="submit" name="submit" value="SUBMIT">
                    </form>
                    <br><br>
                    
                    <%
                    
                    try
                    {
                    String s1=request.getParameter("choose");
                    String s2="Cash on Delivery";
                    String s3="Pay Online";
                   if(s1.equals(s2))
                   {
                       out.println("Buy Successful! Thank you for choosing MEDIQUICK.");
                       out.println("You will get the details by email.");
                   }
                   
                   
                   else if(s1.equals(s3))
                   {
                       response.sendRedirect("buy1.jsp");
                   }
                       
                   else
                       out.println("Please select an option");
                       
                    }
                    
                    catch(Exception e)
                    {
                    }
                   
                  
                    
                    
                    
                    %>
                    
                    
            </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>
