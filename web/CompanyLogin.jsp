<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campus Recruitment System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
            animation: fadeIn 1s ease-in-out;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.1);
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
            <div class="col-lg-12 text-center mb-4">                                            
                <h1 style="color: #007bff;">Campus Recruitment System</h1>
            </div>                
        </div>
        <div class="row">
            <div class="col-lg-3">                    
                <div class="mainContent">
                    <a href="index.html">Login</a><br>
                    <br>
                    <a href="About.jsp">About</a>
                </div>                                              
            </div>
            <div class="col-lg-9">
                <h3 class="text-center mb-4">Login Company</h3>
                <form action="CompanyLoginJ.jsp" onsubmit="return validateForm()">
                    <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control"  type="text" name="inputName" placeholder="Enter Username">
                    </div>
                    <div class="form-group">
                        <label for="inputPass">Password</label>
                        <input id="inputPass" class="form-control"  type="password" name="inputPass" placeholder="Enter Password">
                    </div>                    
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </form>
                <div class="text-center mt-3">
                    <a href="CompanyRegister.jsp">Company Register</a>
                </div>
            </div>                
        </div>
    </div>
</body>
</html>
