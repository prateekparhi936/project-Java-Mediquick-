<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        <title>our website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script type="text/javascript">
            var image1=new Image();
            image1.src="surgical.jpg";
            var image2=new Image();
            image2.src="truma.jpg";
            var image3=new Image();
            image3.src="storage.jpg";
            var image4=new Image();
            image4.src="diagnostic.jpg";
            var image5=new Image();
            image5.src="electronic.jpg";
        </script>
        <link href="style1.css" rel="stylesheet" type="text/css">
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
                <br>
               
                <p>
                   
                    <a href="product.jsp"><img src="surgical.jpg" name="slide" align="center" width="800" height="250" /></a>
                 <script type="text/javascript">
            var step=1;
            function slideit()
            {
                
                if(step<7)
                {
                    document.images.slide.src=eval("image"+step+".src");
                    
                }
                step++;
                if(step==6)
                   step=1;
               
                  setTimeout("slideit()",1500);
            }
            slideit();
            </script>
               
                </p>
                <section class="image">
                    <img src="happydoctor.jpg" width="100" height="200"  /> 
                </section>
                
                 
                 <section class="write">
                     
                     <b>WELCOME TO MEDIQUICK</b><br><br>
                     Mediquick is one stop online store for healthy people, patients, doctors, nursing homes and hospitals.
                    We offer personal health care products, medical equipments and surgical instruments for home and hospitals.
                 </section>
                <section class="image2">
                    <img src="home.jpg" width="432" height="200"  /> 
                </section>
                 
                <section class="write2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>PRODUCT CATEGORIES</b><br><br>
                     <div class="productimg">
                  <a href="electronic.jsp"><img src="electronic.jpg" alt="electronics" width="200" height="200"></a>
 <div class="desc">ELECTRONIC</div> 
                </div>

    <div class="productimg">
                     <a href="diagnostic.jsp"><img src="diagnostic.jpg" alt="electronics" width="200" height="200"></a>
 <div class="desc">DIAGNOSTIC</div>
                </div>
    <div class="productimg">
        <a href="surgical.jsp"><img src="surgical.jpg" alt="electronics" width="200" height="200"></a>
 <div class="desc">SURGICAL</div>
                    </div>
   <div class="productimg">
                     <a href="truma.jsp"><img src="truma.jpg" alt="electronics" width="200" height="200"></a>
 <div class="desc">EMERGENCY AND TRAUMA</div>
                    </div>
    <div class="productimg">
                     <a href="storage.jsp"><img src="storage.jpg" alt="electronics" width="200" height="200"></a>
 <div class="desc">STORAGE AND TRANSPORT</div>
                    </div>
                    
                </section>
            </article>
            
            <section class="side">
                <b>REVIEWS</b><br>
                <table border="1">
                    <tr><td>
                <%
        try
        {
           String s=request.getParameter("name");
           String sc=request.getParameter("commentcontent");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
           Statement st=con.createStatement(); 
           ResultSet rs;
     
           String sc2;
           String sc1;
           rs=st.executeQuery("select *from comment");
           while(rs.next())
                        {
                             sc1=rs.getString(1);                            
                             sc2=rs.getString(2);
                         
                       %>     
                    
                       <b>By:</b> <% out.println(sc1);%><br>
                               <% out.println(sc2);%><br>
                               
              
                     <%  }%>
                     </td>  </tr>  </table>
<%
        
        }
        catch(Exception e)
           {
             out.println(e);
           }%>
                  <form action="comment.jsp" method="post">
                      Name:<br><input type="text" name="name"><br/>
                         Comments:<br><textarea name="commentcontent"></textarea><br>
                 <input type="submit" name="Submit" value="submit"><br> 
                 </form>
                
            </section>
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div>    
    </body>
</html>
