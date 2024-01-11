<%-- 
    Document   : StudentJ
    Created on : oct 16, 2023, 09:08:46 PM
    Author     : Shreyas Shipate
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
         <link href="cstyle.css" rel="stylesheet"/>
        <title>Campus Recruitment System</title>
    </head>
    <body>
       <div class="container">
            <div class="row">
                <div class="col-lg-12">                                            
                    <div class="sidebarContent"><img src="image/campus.png" class="img-fluid" ></div>                        
                </div>                
            </div>
            <div class="row">
                <div class="col-lg-3">                    
                          <div class="mainContent">
                              <br>
                              <br>
                              <a href="index.html">Login</a><br>
                              <a href="About.jsp">About</a></div>                                              
                </div>
                <div class="col-lg-9">
                    <div class="col-lg-5 offset-3">             
                    
                                        <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String sname=request.getParameter("sname");
             String gen=request.getParameter("gen");
             String email=request.getParameter("email");
             String contact=request.getParameter("contact");
             String city=request.getParameter("city");
             String addr=request.getParameter("addr");
             String dob=request.getParameter("dob");
             String age=request.getParameter("age");
             String ssc=request.getParameter("ssc");
             String hsc=request.getParameter("hsc");
             String deg=request.getParameter("deg");
             String strem=request.getParameter("strem");
             String user=request.getParameter("user");
             String pass=request.getParameter("pass");
             
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus    ","root","root");
             
             st = c1.createStatement();
             q="insert into student(sname,gen,email,contact,city,addr,dob,age,ssc,hsc,deg,strem,user,pass) values('"+ sname +"','"+ gen +"','"+ email +"','"+ contact +"','"+ city +"','"+ addr +"','"+ dob +"','"+ age +"','"+ ssc +"','"+ hsc +"','"+ deg +"','"+ strem +"','"+ user +"','"+ pass +"')";
             
             st.executeUpdate(q);
             out.println("Add New Student Details Successfully...");
                   out.println("<a href='StudentLogin.jsp'>Click Here To Continue</a>");
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='StudentRegistration.jsp'>Try Again</a>");
    }        
            
   %>
                                
                    </div>                           
                </div>
            </div>
        </div>
    </body>
</html>
