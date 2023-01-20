<%-- 
    Document   : error_page.jsp
    Created on : 17 Jan, 2023, 12:35:58 PM
    Author     : mdabu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mycss.css" rel="stylesheet" type="text/css">

        <title>Sorry, something went wrong</title>
    </head>
    <body>
        <div class="container">
            <img src="img/error.png
                 <h3 class="display-3">Sorry something went wrong</h3>
            <%= exception%>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>


        </div>
    </body>
</html>
