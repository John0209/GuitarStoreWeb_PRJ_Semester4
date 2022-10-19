<%-- 
    Document   : product
    Created on : Jun 8, 2022, 10:22:35 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
        <link href="./style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            body {
                background-color: #eee
            }

            .mt-100 {
                margin-top: 100px;
            }

            .card {
                border-radius: 7px !important;
                border-color: #e1e7ec;
            }

            .mb-30 {
                margin-bottom: 30px !important;
            }

            .card-img-tiles {
                display: block;
                border-bottom: 1px solid #e1e7ec;
            }

            a {
                color: #0da9ef;
                text-decoration: none !important;
            }

            .card-img-tiles>.inner {
                display: table;
                width: 100%;
            }

            .card-img-tiles .main-img,
            .card-img-tiles .thumblist {
                display: table-cell;
                width: 65%;
                padding: 15px;
                vertical-align: middle;
                height: 300px;
            }

            .card-img-tiles .main-img>img:last-child,
            .card-img-tiles .thumblist>img:last-child {
                margin-bottom: 0;
            }

            .card-img-tiles .main-img>img,
            .card-img-tiles .thumblist>img {
                display: block;
                width: 100%;
                margin-bottom: 6px;
            }

            .inner {
                height: 500px;
                width: 300px;
            }

            text-muted {
                color: red;
                background-color: black;
            }

            .thumblist {
                width: 35%;
                border-left: 1px solid #e1e7ec !important;
                display: table-cell;
                width: 65%;
                padding: 15px;
                vertical-align: middle;
            }



            .card-img-tiles .thumblist>img {
                display: block;
                width: 100%;
                margin-bottom: 6px;
            }

            .btn-group-sm>.btn,
            .btn-sm {
                padding: .45rem .5rem !important;
                font-size: .875rem;
                line-height: 1.5;
                border-radius: .2rem;
            }

            .mini_menu {
                text-align: center;
                margin-top: 30px;
            }

            .mini_menu a {
                font-size: 20px;
                padding-left: 30px;
                padding-right: 30px;
                color: yellow;
            }
        </style>
    </head>
    <body>
        <div style="background-image: url('<c:url value="/images/background/product-background.jpg"/>')">
            <!--Filter start-->
            <i style="margin: 10px">
                <div  class="dropdown mt-90">
                    <i style="margin: 38px">
                        <a class="btn btn-secondary dropdown-toggle mt-30 pl-30" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                            <h3 style="color: #ffffcc"> Classic</h3>
                            <i class="fa-solid fa-filter"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="<c:url value="/filter/Acoustic.do" />">Acoustic</a></li>
                            <li><a class="dropdown-item" href="<c:url value="/filter/Classic.do" />">Classic</a></li>
                            <li><a class="dropdown-item" href="<c:url value="/filter/Electric.do" />">Electric</a></li>
                            <li><a class="dropdown-item" href="<c:url value="/filter/Bass.do" />">Bass</a></li>
                            <li><a class="dropdown-item" href="<c:url value="/filter/Ukulele.do" />">Ukulele</a></li>
                            <li><a class="dropdown-item" href="<c:url value="/filter/Synthesizer.do" />">Synthesizer</a></li>
                        </ul>
                    </i>
                </div>
            </i>
            <!--Filter end-->
            <!--        <div class="row">
                        <div class="col-6">
                            <img style="width: 90%" src="<c:url  value="/images/aucoutic/cordoba-55FCE.jpg"/>"/>
                            <a href="<c:url value="/product/cordoba-55FCE.do"/>"> CORDOBA 55FCE</a>
                        </div>
                        <div class="col-6">
                            <img style="width: 90%" src="<c:url value="/images/aucoutic/cordoba-45LTD.jpg"/>"/>
                            <a href="<c:url value="/product/cordoba-45LTD.do"/>"> CORDOBA 45LTD</a>
                        </div>
                    </div>-->

            <div class="container mt-100">
                <div class="row">
                    <!--item-->
                    <div class="col-md-4 col-sm-6">
                        <div class="card mb-30"><a class="card-img-tiles" href="#" data-abc="true">
                                <div class="inner">
                                    <div class="main-img"><img src="<c:url  value="/images/aucoutic/cordoba-55FCE.jpg"/>" alt="Category"></div>
                                </div>
                            </a>
                            <div class="card-body text-center">
                                <a class="card-title" href="<c:url value="/product/cordoba-55FCE.do"/>"> CORDOBA 55FCE</a>
                                <h5 class="text-muted">45,660,000</h5>
                                <a class="btn btn-outline-primary btn-sm" href="#"
                                   data-abc="true">chạy vô cart</a>
                            </div>
                        </div>
                    </div>
                    <!--end item-->
                    <div class="col-md-4 col-sm-6">
                        <div class="card mb-30"><a class="card-img-tiles" href="#" data-abc="true">
                                <div class="inner">
                                    <div class="main-img"><img src="<c:url value="/images/aucoutic/cordoba-45LTD.jpg"/>" alt="Category"></div>
                                </div>
                            </a>
                            <div class="card-body text-center">
                                <a class="card-title" href="<c:url value="/product/cordoba-45LTD.do"/>"> CORDOBA 45LTD</a>
                                <h5 class="text-muted">39,250,000</h5>
                                <a class="btn btn-outline-primary btn-sm" href="#"
                                   data-abc="true">chạy vô cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="card mb-30"><a class="card-img-tiles" href="#" data-abc="true">
                                <div class="inner">
                                    <div class="main-img"><img src="<c:url value="/images/aucoutic/Takamine-TH90-1-400x400-400x400.jpg"/>" alt="Category"></div>
                                </div>
                            </a>
                            <div class="card-body text-center">
                                <a class="card-title" href="<c:url value="/product/Takamine-TH90.do"/>"> TAKAMINE TH90</a>
                                <h5 class="text-muted">47,650.000</h5>
                                <a class="btn btn-outline-primary btn-sm" href="#"
                                   data-abc="true">chạy vô cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   

            <div class="mini_menu">
                <a href="<c:url value="/page/page1_product.do"/>">First</a>
                <a href="<c:url value="/page/page1_product.do"/>">1</a>
                <a href="<c:url value="/page/page2_product.do"/>">2</a>
                <a href="<c:url value="/page/page3_product.do"/>">3</a>
                <a href="<c:url value="/page/page4_product.do"/>">4</a>
                <a href="<c:url value="/page/page4_product.do"/>">Last</a>
            </div>
        </div>
    </body>
</html>
