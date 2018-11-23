<%-- 
    Document   : diagnostic.jsp
    Created on : 5 Aug, 2014, 10:12:17 PM
    Author     : yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>our website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="diagnostic.css" rel="stylesheet" type="text/css">
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
                <div class="productimg">
                  <a href="bpmonitor.jsp"><img src="bpmonitor.jpg" width="200" height="200"></a>
 <div class="desc">B.P. Monitor</div> 
                </div>
                
                  <div class="productimg">
                  <a href="stethoscope.jsp"><img src="Stethoscope.jpg" width="200" height="200"></a>
 <div class="desc">Stethoscope</div> 
                </div>
                
                <div class="productimg">
                  <a href="hammer.jsp"><img src="hammer.jpg" width="200" height="200"></a>
 <div class="desc">Medical Hammer</div> 
                </div>
                
                <div class="productimg">
                  <a href="thermometer.jsp"><img src="thermometer.jpg" width="200" height="200"></a>
 <div class="desc">Digital Thermometer</div> 
                </div>

            </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>