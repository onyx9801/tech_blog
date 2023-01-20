<%-- 
    Document   : registration_page
    Created on : 13 Nov, 2022, 10:34:49 AM
    Author     : mdabu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mycss.css" rel="stylesheet" type="text/css">
        <style>
            .banner-background{
                clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 65%, 70% 100%, 29% 94%, 0 100%, 0% 30%);

            }

        </style>
    </head>
    <body>

        <%@include file="navbar.jsp" %>

        <main class="container-fluid primary-background position-relative">
            <!--<to do banner background>-->
            <div class=" container position-relative pt-4 ">
                <div class="row">
                    <div class="col-6 offset-3">
                        <div class="card">
                            <div class="card-header">
                                <p class ="fs-4 text-center pt-4">Register Here</p>
                            </div>
                            <div class="card-body">
                                <form id="reg_form" action="RegisterServlet" method="POST">
                                    <div class="mb-3">
                                        <label for="user_name" class="form-label">Name</label>
                                        <input type="text" name="user_name" class="form-control" id="user_name">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="password" name="user_password" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="mb-3">
                                        <label for="gender" class="form-label">Gender </label><br>
                                        <input type="radio" id="gender" value="Male" name="user_gender">Male<br>
                                        <input type="radio"id="gender" value="Female" name="user_gender">Female
                                    </div>
                                    <div class="form-group">
                                        <label for="user_about">Tell us about yourself</label>
                                        <textarea name="user_about" maxlength="20" required="required" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" name="check" required="required" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Accept Terms and Conditions</label>
                                    </div>
                                    <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <script src="js/jquery-3.6.3.min.js" type="text/javascript"></script>
    <script src="js/myjs.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            console.log("form loaded");
            $('#reg_form').on('submit', function (event) {
                event.preventDefault(); // preventing redirecting to servlet
                let form = new FormData(this);
                $.ajax({
                    url: "RegisterServlet",
                    type: 'POST',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        $("#submit-btn").hide()
                        console.log(data);
                        alert("Registration Done, Redirecting to Login page");
                        window.location.href = "login_page.jsp";

                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(jqXHR);
                        alert("Something went wrong, try again");

                    },
                    processData: false,
                    contentType: false

                });
            });
        });
    </script>
</html>
