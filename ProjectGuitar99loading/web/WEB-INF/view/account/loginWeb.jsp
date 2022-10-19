<%-- 
    Document   : loginAccount
    Created on : Jul 4, 2022, 10:52:49 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .btn-color{
                background-color: #0e1c36;
                color: #fff;
                padding-top: 5px;
                padding-bottom: 5px;
                margin-top: 20px;
            }

            .profile-image-pic{
                height: 200px;
                width: 200px;
                object-fit: cover;
            }

            .cardbody-color{
                background-color: #ebf2fa;
            }

            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2 class="text-center text-dark mt-5">Login</h2>
                    <div class="card my-5">

                        <form class="card-body cardbody-color p-lg-5" action="<c:url value="loginAccount.do"/>">

                            <div class="text-center">
                                <img src="https://www.clipartmax.com/png/full/296-2965889_music-icons-guitar-blue-guitar-icon-png.png" 
                                     class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                                     width="200px" alt="profile">
                            </div>

                            <div class="mb-3">
                                <input type="text" name="account" class="form-control" id="Username" 
                                       placeholder="Username" value="${ac}">

                            </div>
                            <div class="mb-3">
                                <input type="password" class="form-control" name="password" 
                                       placeholder="Password" name="password" value="${pa}">

                            </div>
                            <div class="text-center"><button type="submit" name="action" class="btn-color px-5 mb-5 w-100" value="loginAccount">Login</button></div>
                            <i style="color: red; font-size: 20px">${result}</i>

                    </div>
                    </form>
                </div>

            </div>
        </div>
    </body>
</html>
