<%-- 
    Document   : aboutus
    Created on : 3 Aug, 2014, 7:15:53 PM
    Author     : yash
--%>

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
                <div>
                    <b>Mediquick</b> is one stop online store for healthy people, patients, doctors, nursing homes and hospitals.
                    We offer personal health care products, medical equipments and surgical instruments for home and hospitals.
                    We are committed to providing the industry with high quality medical devices at the lowest possible prices.
                    We believe that this will not only improve the quality of healthcare access but this will also increase healthcare access in our country.
                    We work as a team, sharing ideas and conventions, to deliver the best possible outcomes to our customers.
                    We ensure integrity by delivering on our promises and making things happen.Our team’s desire is to make significant contributions to the communities in which we work.
                    We have a restless desire to take things to the next level, to stretch our abilities and become the no.1 medical device distributor and retailer inthe market.
                    
                    
 <br><br><b>Quality</b>
 It is our policy to attain a quality of product and service that surpasses our client's needs and expectations.
 The fact that we are in a business which is directly linked to the health and well being of the people makes us more responsible company, and no matter what, no compromises are made.
                </div>
                 </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div> 
    </body>
</html>

