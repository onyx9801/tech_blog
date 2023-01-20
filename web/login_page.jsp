<%-- 
    Document   : login_page
    Created on : 12 Nov, 2022, 11:24:37 AM
    Author     : mdabu
--%>

<%@page import="com.techblog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!-- CSS only -->

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
        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <main class="container-fluid primary-background banner-background mh-100 position-relative">
            <!--<to do banner background>-->
            <div class=" container position-relative pt-4 ">
                <div class ="row">
                    <div class="col-4 offset-4">
                        <div class="card">
                            <div class="card-header ">
                                <p class="fs-4 text-center pt-2">Login Here</p>
                            </div>
                            <%
                                Message msg = (Message) session.getAttribute("message");
                                if (msg != null) {
                            %>
                            <div class="alert <%= msg.getCssClass() %> d-flex align-items-center" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                                <div>
                                    <%=msg.getContent() %>
                                </div>
                            </div>
                            <%
                                session.removeAttribute("message");
                                }

                            %>

                            <div class="card-body">
                                <form action="LoginServlet" method="POST">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input name="password" required type="password" class="form-control" id="exampleInputPassword1">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script
    src="https://code.jquery.com/jquery-3.6.1.min.js"
    integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
</html>
