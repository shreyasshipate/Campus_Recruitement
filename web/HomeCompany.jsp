<%-- 
    Document   : HomeCompany
   Created on : oct 14, 2023, 06:04:57 PM
    Author     : Shreyas Shipate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            <div class="col-lg-12 text-center mb-4">
                <h1>Campus Recruitment System</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="mainContent">
                    <br>
                    <br>
                    <a href="Vacancy.jsp">Add Vacancy</a><br> 
                    <br>
                    <a href="index.html">Logout</a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="mainContent">
                    <h1></h1>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
