<%-- 
    Document   : trauma
    Created on : Aug 17, 2014, 10:13:09 AM
    Author     : Prateek Parhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="trauma.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
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
                  <a href="morganlens.jsp"><img src="MorganLensPhotos.jpg" alt="MorganLens" width="200" height="200"></a>
 <div class="desc">MORGAN LENS</div> 
                </div>
    <div class="productimg">
        <a href="lifepak.jsp"><img src="lifepack.png" alt=lifepack width="200" height="200"></a>
 <div class="desc">LIFEPAK</div>
                    </div>
   <div class="productimg">
                  
                    </div>
                    </div>
                 </article>
             <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>