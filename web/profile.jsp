<%-- 
    Document   : profile
    Created on : 17 Jan, 2023, 3:42:57 PM
    Author     : mdabu
--%>

<%@page import="com.techblog.entities.User"%>
<%@page errorPage="error_page.jsp" %> 
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-background">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk" ></span>Techblog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp"><span class="fa fa-home"></span>Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><span class="fa fa-terminal"></span> My Portfolio</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <span class= "fa fa-book"></span> Subjects
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Blockchain</a></li>
                                <li><a class="dropdown-item" href="#">Core Java</a></li>
                                <a class="dropdown-item" href="#">Javascript</a></li>
                        <li><a class="dropdown-item" href="#">Servlets and JSP</a></li>
                        <li><a class="dropdown-item" href="#">Spring Boot</a></li>
                        <li><a class="dropdown-item" href="#">Arabic</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Online Resources</a></li>
                    </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" tabindex="-1" aria-disabled="true"><span class="fa fa-address-card"></span> Contact Me</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" tabindex="-1" aria-disabled="true"><span class="fa fa-bug"></span> Report Bug</a>
                    </li>


                    </ul>
                    <ul class="navbar-nav mr-right">
                        <li class="nav-item">
                            <a class="nav-link" href="" tabindex="-1" aria-disabled="true"><span class="fa fa-user-circle"></span> <%= user.getName()%></a>
                        </li>
                    </ul>
                    <ul class="navbar-nav mr-right">
                        <li class="nav-item">
                            <a class="nav-link" href="LogoutServlet" tabindex="-1" aria-disabled="true"><span class="fa fa-user-plus"></span>Logout</a>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row flex-nowrap">
                <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 primary-background">
                    <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                        <div class="container text-center">
                            <img src="profile_pics/<%=user.getProfile() %>" class="img-fluid" style="border-radius: 50%;max-width: 150px"><br>
                            <a href="profile.jsp" class="d-flex justify-content-center align-items-center mt-3 pb-3 mb-md-0 me-md-auto text-white text-decoration-none text-center">
                                <div class="fs-5 d-none d-sm-inline text-center"><%= user.getName()%></div>
                            </a>
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
