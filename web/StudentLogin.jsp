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
            background: linear-gradient(to bottom, #2980b9, #6dd5fa, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #3498db;
            border-color: #3498db;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: all 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #2980b9;
            transform: scale(1.05);
        }

        .btn-primary:focus {
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.5);
        }

        h3 {
            color: #3498db;
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
    </style>
</head>

<body>
    <div class="container">
        <div class="mainContent">
            <h3 class="text-primary">Login Student</h3><br />
            <form action="StudentLoginJ.jsp">
                <div class="form-group">
                    <input class="form-control" type="text" name="inputName" placeholder="Username" />
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="inputPass" placeholder="Password" />
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
            <a href="StudentRegistration.jsp">Student Register</a>
        </div>
    </div>
</body>

</html>
