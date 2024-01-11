<!DOCTYPE html>
<html>

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
            background: linear-gradient(135deg, #2980b9, #2c3e50);
            color: #fff;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        }

        .sidebarContent img {
            max-width: 100%;
            height: auto;
        }

        .mainContent {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 5px;
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

        label {
            color: #333;
        }

        .error-message {
            color: #e74c3c;
            margin-top: 5px;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="sidebarContent">
                    <img src="image/campus.png" class="img-fluid">
                </div>
            </div>
        </div>
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
                <div class="col-lg-8 offset-lg-2">
                    <div class="mainContent">
                        <h3 class="text-primary">Add Student</h3><br />
                        <form action="StudentJ.jsp" onsubmit="return validateForm()">
                            <div class="form-group">
                                <label for="inputName">Name</label>
                                <input class="form-control" type="text" name="sname" placeholder="Enter Student Name" required />
                            </div>
                            <div class="form-group">
                                <label for="inputBus"> Gender</label>
                                <select name="gen" class="form-control">
                                    <option>--Select--</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputName">Email Id</label>
                                <input class="form-control" type="email" name="email" placeholder="Enter Email" required />
                                <span class="error-message" id="emailError"></span>
                            </div>
                            <div class="form-group">
                                <label for="inputName">Contact</label>
                                <input class="form-control" type="text" name="contact" placeholder="Enter Contact" pattern="[0-9]{10}" required />
                                <span class="error-message" id="contactError"></span>
                            </div>
                            <div class="form-group">
                                <label for="inputName">City</label>
                                <input class="form-control" type="text" name="city" placeholder="Enter City" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Address</label>
                                <input class="form-control" type="text" name="addr" placeholder="Enter Address" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Date Of Birth</label>
                                <input class="form-control" type="text" name="dob" placeholder="Enter Date Of Birth" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Age</label>
                                <input class="form-control" type="text" name="age" placeholder="Enter Age" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">SSC %</label>
                                <input class="form-control" type="text" name="ssc" placeholder="Enter SSC" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">HSC %</label>
                                <input class="form-control" type="text" name="hsc" placeholder="Enter HSC" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Degree aggregate</label>
                                <input class="form-control" type="text" name="deg" placeholder="Enter Degree" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Stream</label>
                                <input class="form-control" type="text" name="strem" placeholder="Enter Branch" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Username</label>
                                <input class="form-control" type="text" name="user" placeholder="Enter Username" required />
                            </div>
                            <div class="form-group">
                                <label for="inputName">Password</label>
                                <input class="form-control" type="password" name="pass" placeholder="Enter Password (Minimum 5 characters)" minlength="5" required />
                                <span class="error-message" id="passwordError"></span>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Student</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function validateForm() {
            var email = document.forms[0]["email"].value;
            var contact = document.forms[0]["contact"].value;
            var password = document.forms[0]["pass"].value;

            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            var contactPattern = /^\d{10}$/;

            var isValid = true;

            if (!emailPattern.test(email)) {
                document.getElementById("emailError").innerText = "Enter a valid email address";
                isValid = false;
            } else {
                document.getElementById("emailError").innerText = "";
            }

            if (!contactPattern.test(contact)) {
                document.getElementById("contactError").innerText = "Enter a valid 10-digit contact number";
                isValid = false;
            } else {
                document.getElementById("contactError").innerText = "";
            }

            if (password.length < 5) {
                document.getElementById("passwordError").innerText = "Password must be at least 5 characters";
                isValid = false;
            } else {
                document.getElementById("passwordError").innerText = "";
            }

            return isValid;
        }
    </script>
</body>

</html>
