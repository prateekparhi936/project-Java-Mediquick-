<%-- 
    Document   : signup
    Created on : 17 Jul, 2014, 12:56:54 PM
    Author     : yash
--%>

<%@page import="java.sql.*"%>
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
                       <li><a href="signin.jsp"> Sign In | </a></li>
                     
                </ul>         
            </nav>
            <article>
               
                    <form>
            <table align="left">
                <tr><br></tr>
                <tr><td>First Name<br><br></td><td></td><td><input type="text" name="fname"><br><br></td></tr>
                <tr><td>Last Name<br><br></td><td></td><td><input type="text" name="lname"><br><br></td></tr>
                <tr><td>DOB<br><br></td><td></td><td><input type="text" name="dob"><br><br></td></tr>
                <tr><td>Username<br><br></td><td></td><td><input type="text" name="uname"><br><br></td></tr>
                <tr><td>Password<br><br></td><td></td><td><input type="password" name="pass"><br><br></td></tr>
                <tr><td>Email ID<br><br></td><td></td><td><input type="text" name="emailid"><br><br></td></tr>
                <tr><td><input type="submit" name="submit" value="submit"></td></tr>
            </table>
        </form>
                
                <%!
                    int userId(String uid)
                    {
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
              Statement st=con.createStatement(); 

              
              ResultSet rs=st.executeQuery("Select *from customer where uname='"+uid+"'");
              if(rs.next())
                  return 1;
                        }
                        catch(Exception e)
                        {
                        }
                        
                        return 0;
                    }
                %>
          
            <% String s=request.getParameter("submit"); 
                 
        try{
              String fn=request.getParameter("fname");
              String ln=request.getParameter("lname");
              String db=request.getParameter("dob");
              String us=request.getParameter("uname");
              String pas=request.getParameter("pass");
              String cp=request.getParameter("cpwd");
              String eid=request.getParameter("emailid");
              
             
           
           
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","12345");
              Statement st=con.createStatement(); 
              ResultSet rs;
             
              String us1=us;
              String eid1=eid;   // these two variables are taken to check whether the entered username and email addrs are UNIQUE OR NOT..
              String usr;
              String eids; 
             if(s!=null)
             {
                 int n=userId(us1);
                 if (n==0)
                 {
                 st.executeUpdate("insert into customer value('"+us+"','"+pas+"','"+pas+"','"+fn+"','"+ln+"','"+db+"','"+eid+"')");                                            
                 }
                 
                 else
                 {
                     response.sendRedirect("exist.jsp");
                 }
              }
         }
       
        
   catch(Exception e)
              {
                 out.println(e);
              }%>
                
            </article>
            
            <div id="footer">
                <h3>© 2014 Mediquick.com All Rights Reserved</h3>
            </div>
        </div>    
    </body>
</html>

