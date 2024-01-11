<%-- 
    Document   : Vacancy
    Created on : oct 21, 2023, 09:18:46 PM
    Author     : Shreyas Shipate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
         <link href="cstyle.css" rel="stylesheet"/>
        <title>Campus Recruitment System</title>
        <script>
        function validateForm() {
            var email = document.getElementsByName("email")[0].value;
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address");
                return false;
            }

            return true;
        }
    </script>
    </head>
    <body>
       <div class="container">
            <div class="row">
                <div class="col-lg-12">                                            
                    <div class="sidebarContent"><img src="image/campus.png" class="img-fluid" ></div>                        
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
                    <div class="col-lg-5 offset-3">             
                    
                       <h3 class="text-primary">Add Vacancy</h3><br />
                    <form action="VacancyJ.jsp" onsubmit="return validateForm()">
                    
                       <div class="form-group">
                        <label for="inputName">Company Id</label>
                        <input class="form-control" type="text" name="c_id" placeholder="Enter Company id" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Job Proof</label>
                        <input class="form-control" type="text" name="job" placeholder="Enter Company proof" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Salary</label>
                        <input class="form-control" type="text" name="salary" placeholder="Enter package " />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Eligibility Criteria</label>
                        <input class="form-control" type="text" name="elig" placeholder="Enter Eligibility Criteria" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Bond</label>
                        <input class="form-control" type="text" name="bond" placeholder="Bond Years" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Email</label>
                        <input class="form-control" type="text" name="email" placeholder="Enter Company email" />
                    </div>
                        
                        
                                
                        <button type="submit" class="btn btn-primary">Add Vacancy</button>
                   </form>      
                    </div>                           
                </div>
            </div>
        </div>
    </body>
</html>
