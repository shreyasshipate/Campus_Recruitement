<%-- 
    Document   : AllCompany
    Created on : oct 2, 2023, 11:04:57 AM
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
            background-color: #f8f9fa;
        }

        .container {
            padding: 20px;
        }

        .sidebarContent img {
            max-width: 100%;
            height: auto;
        }

        .mainContent {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
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
            <div class="col-lg-12">
                <div class="sidebarContent">
                    <img src="image/campus.png" class="img-fluid" >
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="mainContent">
                    <br>
                    <br>
                    <a href="SearchVacancy.jsp">Search Vacancy</a><br>
                    <br>
                    <a href="AllCompany.jsp">All Company</a><br>
                    <br>
                    <a href="index.html">Logout</a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="mainContent">
                    <%                         
                        Connection c1 = null;
                        Statement st = null;
                        ResultSet rs1;
                        String q="";
                        try {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus","root","root");
                            st = c1.createStatement();
                            q="select c_id,c_name,establish,email,contact,hr_name from company";
                            rs1=st.executeQuery(q);
                            out.println("<table>");
                            out.println("<tr><th>Id</th><th>Company Name</th><th>Establishment</th><th>Email</th><th>Contact</th><th>HR Name</th></tr>");
                            while(rs1.next()) {
                                int id=rs1.getInt("c_id");
                                String cname=rs1.getString("c_name");
                                String establish=rs1.getString("establish");                 
                                String email=rs1.getString("email");
                                String contact=rs1.getString("contact");
                                String hr_name=rs1.getString("hr_name");
                                out.println("<tr><td>"+id+"</td><td>"+cname+"</td><td>"+establish+"</td><td>"+email+"</td><td>"+contact+"</td><td>"+hr_name+"</td></tr>");
                            }
                        } catch(Exception e) {
                            out.print(e);
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
