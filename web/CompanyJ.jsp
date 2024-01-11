<%-- 
    Document   : CompanyJ
    Created on : oct 4, 2023, 06:04:57 PM
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
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background-color: #f56ca8; /* Set your preferred background color */
                animation: fadeIn 1s ease-in-out;
            }
            .container {
                background-color: #fff;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.1);
            }
            .mainContent {
                margin-top: 20px;
            }
            .form-group {
                margin-bottom: 20px;
            }
            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
                padding: 10px 20px;
                border-radius: 5px;
                font-size: 16px;
                transition: all 0.3s ease-in-out;
            }
            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
                transform: scale(1.05);
            }
            h3 {
                color: #007bff;
            }
            a {
                text-decoration: none;
                color: #007bff;
                transition: all 0.3s ease-in-out;
            }
            a:hover {
                text-decoration: underline;
                color: #0056b3;
            }
            @keyframes fadeIn {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="mainContent">
                        <br>
                        <br>
                        <a href="index.html">Login</a><br>
                        <br>
                        <a href="About.jsp">About</a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="col-lg-5 offset-3">
                        <% 
  Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
            
             String cname=request.getParameter("cname");
             String establish=request.getParameter("establish");
             String em=request.getParameter("email");
             String cont=request.getParameter("contact");
             String hrn=request.getParameter("hrname");
             String user=request.getParameter("user");
             String pass=request.getParameter("pass");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus","root","root");
             
             st = c1.createStatement();
             q="insert into company(`c_name`,`establish`,`email`,`contact`,`hr_name`,`user`,`pass`) values('"+ cname +"','"+ establish +"','"+ em +"','"+ cont +"','"+ hrn +"','"+ user +"','"+ pass +"')";
             
             st.executeUpdate(q);
             out.println("Added New Company Details Successfully...");
                   out.println("<a href='CompanyLogin.jsp'>Click Here To Continue</a>");
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='CompanyRegister.jsp'>Try Again</a>");
    }        
            
                         %>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
