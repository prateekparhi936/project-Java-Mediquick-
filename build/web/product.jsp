<%-- 
    Document   : product
    Created on : 22 Jul, 2014, 12:32:06 PM
    Author     : yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>our website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="product.css" rel="stylesheet" type="text/css">
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
                  <a href="electronic.jsp"><img src="electronic.jpg" alt="electronics" width="300" height="300"></a>
 <div class="desc">ELECTRONIC</div> 
                </div>

    <div class="productimg">
                     <a href="diagnostic.jsp"><img src="diagnostic.jpg" alt="electronics" width="300" height="300"></a>
 <div class="desc">DIAGNOSTIC</div>
                </div>
    <div class="productimg">
        <a href="surgical.jsp"><img src="surgical.jpg" alt="electronics" width="300" height="300"></a>
        <div class="desc">SURGICAL</div>
                    </div>
   <div class="productimg">
                     <a href="truma.jsp"><img src="truma.jpg" alt="electronics" width="300" height="300"></a>
 <div class="desc">EMERGENCY AND TRAUMA</div>
                    </div>
    <div class="productimg">
                     <a href="storage.jsp"><img src="storage.jpg" alt="electronics" width="300" height="300"></a>
 <div class="desc">STORAGE AND TRANSPORT</div>
                    </div>
            </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>
