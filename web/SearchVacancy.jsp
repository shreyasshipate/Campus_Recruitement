<%-- 
    Document   : SearchVacancy
    Created on : oct 22, 2023, 11:01:14 PM
    Author     : Shreyas Shipate
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="cstyle.css" rel="stylesheet" />
    <title>Campus Recruitment System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #ffd89b, #19547b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table,
        th,
        td {
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
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="mainContent">
                    <br>
                    <br>
                    <a href="SearchVacancy.jsp">Search Vacancy</a><br>
                    <br>
                    <a href="AllCompany.jsp">All Company</a>
                    <br>
                    <br>
                    <a href="index.html">Logout</a>
                </div>
            </div>
            <div class="col-lg-9">
                <form action="SearchVacancy.jsp">
                    <div class="form-group">
                        <label for="inputName">Job Profile</label>
                        <input class="form-control" type="text" name="jobp" placeholder="Enter Job Profile Name" />
                    </div>
                    <button type="submit" class="btn btn-primary">Search Vacancy</button>
                </form>
                <table>
                    <tr>
                        <th>Id</th>
                        <th>Job</th>
                        <th>Salary</th>
                        <th>Eligibility</th>
                        <th>Bond</th>
                        <th>Email</th>
                    </tr>
                    <%                         
                        Connection c1 = null;
                        Statement st = null;
                        ResultSet rs1;
                        String q="";
                        try {
                            String jobp=request.getParameter("jobp");
                            Class.forName("com.mysql.jdbc.Driver");
                            c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/campus","root","root");
                            st = c1.createStatement();
                            q="select c_id,job,salary,elig,bond,email from vacancy where job LIKE '%" + jobp + "%' or email Like '%" + jobp + "%' or elig Like '%" + jobp + "%' ";
                            rs1=st.executeQuery(q);
                            while(rs1.next()) {
                            int id=rs1.getInt("c_id");
                                String job=rs1.getString("job");
                                String salary=rs1.getString("salary");                 
                                String elig=rs1.getString("elig");
                                String bond=rs1.getString("bond");
                                String email=rs1.getString("email");
                                out.println("<tr><td>"+id+"</td><td>"+job+"</td><td>"+salary+"</td><td>"+elig+"</td><td>"+bond+"</td><td>"+email+"</td></tr>");
                            }
                        } catch(Exception e) {
                            out.print(e);
                        }
                    %>
                </table>
            </div>
        </div>
    </div>
</body>

</html>
