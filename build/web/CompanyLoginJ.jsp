<%-- 
    Document   : CompanyLoginJ
    Created on : Oct 10, 2023, 04:04:7 PM
    Author     : Shreyas Shipate
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Campus Recruitment System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.1);
        }
        .mainContent {
            margin-top: 20px;
        }
        h3 {
            color: #007bff;
            animation: fadeInDown 1s ease-in-out;
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

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
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
                        String lgnm=request.getParameter("inputName");
                        String ps1=request.getParameter("inputPass");

                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus","root","root");

                        st=c1.createStatement();
                        q="select * from company where user='"+lgnm+"' and pass='"+ps1+"'";
                        rs1=st.executeQuery(q);
                        if(rs1.next()) {
                            out.print("<h3>Welcome " + lgnm+"</h3>");
                            out.println("<br><a href='HomeCompany.jsp'>Click Here to Continue..</a>");
                        } else {
                            out.println("Invalid Login<br>");
                            out.println("<a href='CompanyLogin.jsp'>Try Again</a>");
                        }
                    } catch(Exception e) {
                        out.println("Invalid Insertion<br>");
                        out.println(e);
                        out.println("<a href='CompanyLogin.jsp'>Try Again</a>");
                    }
                    %>
                </div>                            
            </div>
        </div>
    </div>
</body>
</html>
