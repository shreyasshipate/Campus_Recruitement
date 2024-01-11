<%-- 
    Document   : StudentLoginJ
    Created on : oct 25, 2023, 07:16:21 PM
    Author     : Shreyas Shipate
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Campus Recruitment System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #ff512f, #dd2476);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        @keyframes gradient {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        .mainContent {
            margin-top: 20px;
        }

        h3 {
            color: #3498db;
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            color: #3498db;
            transition: all 0.3s ease-in-out;
        }

        a:hover {
            text-decoration: underline;
            color: #2980b9;
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
        <div class="mainContent">
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
                    q="select * from student where user='"+lgnm+"' and pass='"+ps1+"'";
                    rs1=st.executeQuery(q);
                    if(rs1.next()) {
                        out.print("<h3>Welcome " + lgnm+"</h3>");
                        out.println("<br><a href='HomeStudent.jsp'>Click Here to Continue...</a>");
                    } else {
                        out.println("Invalid Login<br>");
                        out.println("<a href='StudentLogin.jsp'>Try Again</a>");
                    }
                } catch(Exception e) {
                    out.println("Invalid Insertion<br>");
                    out.println(e);
                    out.println("<a href='StudentLogin.jsp'>Try Again</a>");
                }        
            %>
        </div>
    </div>
</body>

</html>
