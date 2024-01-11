<%-- 
    Document   : HomeStudent
    Created on : oct 16, 2023, 1:14:45 PM
    Author     : Shreyas Shipate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        a {
            text-decoration: none;
            color: #3498db;
            transition: all 0.3s ease-in-out;
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
        }

        a:hover {
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
            <a href="SearchVacancy.jsp">Search Vacancy</a>
            <a href="AllCompany.jsp">All Company</a>
            <a href="index.html">Logout</a>
        </div>
    </div>
</body>

</html>
