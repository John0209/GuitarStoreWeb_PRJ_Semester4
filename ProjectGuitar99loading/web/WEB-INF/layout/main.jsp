<%-- 
    Document   : main
    Created on : Jun 9, 2022, 6:36:09 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guitar Shop</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--        <link href="./style.css">-->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--<link href="../../home/css/style.css">-->
        <style>
            .py-6 {
                padding-top: 6rem;
                padding-bottom: 6rem;
            }

            .my-6 {
                margin-top: 6rem;
                margin-bottom: 6rem;
            }

            .back-to-top {
                position: fixed;
                display: none;
                right: 30px;
                bottom: 30px;
                z-index: 99;
            }



            /*** Button ***/
            .btn {
                font-weight: 500;
                transition: .5s;
            }

            .btn.btn-primary,
            .btn.btn-outline-primary:hover {
                color: #FFFFFF;
            }

            .btn-square {
                width: 38px;
                height: 38px;
            }

            .btn-sm-square {
                width: 32px;
                height: 32px;
            }

            .btn-lg-square {
                width: 48px;
                height: 48px;
            }

            .btn-square,
            .btn-sm-square,
            .btn-lg-square {
                padding: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                font-weight: normal;
            }


            /*** Navbar ***/
            .navbar.sticky-top {
                top: -100px;
                transition: .5s;
            }

            .navbar .navbar-brand,
            .navbar a.btn {
                height: 80px
            }

            .navbar .navbar-nav .nav-link {
                margin-right: 30px;
                padding: 25px 0;
                color: #0C2B4B;
                font-weight: 500;
                text-transform: uppercase;
                outline: none;
            }

            .navbar .navbar-nav .nav-link:hover,
            .navbar .navbar-nav .nav-link.active {
                color: #F3BD00;
            }

            .navbar .dropdown-toggle::after {
                border: none;
                content: "\f107";
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
                vertical-align: middle;
                margin-left: 8px;
            }

            @media (max-width: 991.98px) {
                .navbar .navbar-nav .nav-link  {
                    margin-right: 0;
                    padding: 10px 0;
                }

                .navbar .navbar-nav {
                    border-top: 1px solid #EEEEEE;
                }
            }

            @media (min-width: 992px) {
                .navbar .nav-item .dropdown-menu {
                    display: block;
                    border: none;
                    margin-top: 0;
                    top: 150%;
                    opacity: 0;
                    visibility: hidden;
                    transition: .5s;
                }

                .navbar .nav-item:hover .dropdown-menu {
                    top: 100%;
                    visibility: visible;
                    transition: .5s;
                    opacity: 1;
                }
            }


            /*** Header ***/
            .carousel-caption {
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
                background: rgba(0, 0, 0, .3);
                z-index: 1;
            }

            .carousel-control-prev,
            .carousel-control-next {
                width: 15%;
            }

            .carousel-control-prev-icon,
            .carousel-control-next-icon {
                width: 3rem;
                height: 3rem;
                background-color: #F3BD00;
                border: 10px solid #F3BD00;
                border-radius: 10px;
            }

            @media (max-width: 768px) {
                #header-carousel .carousel-item {
                    position: relative;
                    min-height: 450px;
                }

                #header-carousel .carousel-item img {
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }
            }

            .page-header {
                background: linear-gradient(rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(../img/carousel-1.jpg) center center no-repeat;
                background-size: cover;
            }

            .breadcrumb-item+.breadcrumb-item::before {
                color: #999999;
            }



        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-black navbar-light sticky-top p-0"">
            <a class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5" >
                <h2 class="m-0" style="color: white">Guitar Shop</h2>
            </a>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="<c:url value="/home/index.do"/>" class="nav-item nav-link" style="color: white">Home</a>
                    <a href="<c:url value="/page/page1_product.do"/>" class="nav-item nav-link" style="color: white">Product</a>
                    <a href="<c:url value="/event/eventGuitar.do"/>" class="nav-item nav-link" style="color: white">Event</a>
                    <a href="<c:url value="/intro/introduct.do"/>" class="nav-item nav-link" style="color: white">Introduction</a>
                    <a href="<c:url value="/cart/cart.do"/>" class="nav-item nav-link" style="color: white">Cart</a>

                    <!-- Default dropstart button -->
                    <div class="btn-group dropstart">
                        <button type="button" class="dropdown-toggle border-0" data-bs-toggle="dropdown" aria-expanded="false">
                            <c:choose>
                                <c:when test="${account.test==true}">
                                    <li>
                                        <i class="fa-solid fa-user"> ${account.account}</i>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <i class="fa-solid fa-user"></i>
                                </c:otherwise>
                            </c:choose>
                        </button>
                        <ul class="dropdown-menu">
                            <!-- Dropdown menu links -->
                            <c:choose>
                                <c:when test="${account.test==true}">
                                    <a href="<c:url value="/account/order.do"/>" class="dropdown-item">Order</a>
                                    <a href="<c:url value="/account/logout.do"/>" class="dropdown-item">Log out</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="<c:url value="/account/loginWeb.do"/>" class="dropdown-item">Login</a>
                                    <a href="<c:url value="/account/regester.do"/>" class="dropdown-item">Register</a>
                                    <a href="<c:url value="/account/logout.do"/>" class="dropdown-item">Log out</a>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->
        <div class="">
            <!--content-->
            <div>
                <div style="padding-right: 0px !important padding-bottom: 0px">
                    <jsp:include page="/WEB-INF/view/${controller}/${action}.jsp"/>
                </div>
            </div>
            <!--footer-->
            <div class="pb-20 text-center" style="background-color:black; color:white; padding-bottom: 0px; margin-top: 0px;">
                <div>
                    <hr/>
                    Công ty TNHH An Vũ Trung Công<br>
                    Điện thoại:0912345678<br>
                    Gmail: chaydeadlinetronghe.com<br>
                    Copyrights &copy; by PRJ Class.All Rights Reserved.
                </div>
            </div> 
        </div>
    </body>
</html>
