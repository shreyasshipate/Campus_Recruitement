<%-- 
    Document   : VacancyJ
    Created on : oct 25, 2023, 11:24:51 PM
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
            <div class="col-lg-12">
                <div class="mainContent">
                    <br>
                    <br>
                    <a href="Vacancy.jsp">Add Vacancy</a><br>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="mainContent">
                    <% 
                        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String c_id=request.getParameter("c_id");
             String job=request.getParameter("job");
             String salary=request.getParameter("salary");
             String elig=request.getParameter("elig");
             String bond=request.getParameter("bond");
             String email=request.getParameter("email");
             
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus","root","root");
             
             st = c1.createStatement();
             q="insert into vacancy(`c_id`,`job`,`salary`,`elig`,`bond`,`email`) values('"+ c_id +"','"+ job +"','"+ salary +"','"+ elig +"','"+ bond +"','"+ email +"')";
             
             st.executeUpdate(q);
             out.println(" Vacancy Details Added Successfully...");
                   
    }
    catch(Exception e)
    {
                    out.println("Invalid");
                     out.println("<a href='Vacancy.jsp'>Try Again</a>");
    }        
            
  
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
