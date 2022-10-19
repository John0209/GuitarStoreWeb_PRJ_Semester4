<%-- 
    Document   : cart
    Created on : Jun 22, 2022, 10:23:13 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <style>

            body{
                background-color: #f4f4f4;
            }
            .wrapper{
                max-width: 900px;
                margin: 20px auto;
                padding: 20px;
            }
            .h3{
                margin-bottom: 0;
            }

            .fa-cog{
                color: #a8a8a8;
                font-size: 0.8rem;
            }
            .ml-auto.btn:hover span{
                color: #333;
            }
            div.btn{
                padding: 8px 20px;
            }

            .notification button.btn{
                background-color: inherit;
                box-shadow: none;
            }

            .alert-dismissible .close{
                position: unset;
            }
            button:focus{
                outline: none;
            }
            .h4{
                margin: 0;
            }
            .editors{
                position: relative;
            }
            .editors img{
                object-fit: cover;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                border: 5px solid #FFF;
            }


            div.text-muted{
                font-size: 0.9rem;
            }
            .table{
                overflow: hidden;
            }
            .table thead tr th{
                letter-spacing: 0.08rem;
                font-weight: normal;
            }
            .table tr td,
            .table tr th{
                border: none;
                text-align: center;
            }

            .table thead{
                font-size: 0.8rem;
                font-weight: 700;
            }
            .table.activitites{
                position: relative;
            }

            .table tbody td.item{

                font-size: 20px;
                padding-right: 0px;

            }

            .table tbody td {
                padding-top: 20px;
            }

            .product {
                padding-right: 0px;
                display: flex;
                width: 100%;
            }

            .red{
                color: #ff0000;
            }

            .table tbody td.item img{
                width: 100px;
                height: 100px;
                object-fit: contain;
            }
            .table thead th.header{
                text-align: left;
            }
            .table tbody tr{
                padding-top: 10px;
                padding: 10px 20px;
                border-bottom: 1px solid #ccc;
                transition: all .4s ease-in-out;
            }
            .table tbody tr:last-child{
                border: none;
            }

            .btnvip1 {
                float: right;
                display: inline-block;
                height: 50px;
                width: 120px;
                margin: 0 40px 0 16px;
                box-sizing: border-box;
                border: transparent;
                border-radius: 60px;
                font-size: 15px;
                text-transform: uppercase;
                color: #ffffff;
                background-color: #1097e4;
                cursor: pointer;
                outline: none;
                margin-bottom: 20px;
            }

            .btnvip2 {
                float: right;
                display: inline-block;
                height: 50px;
                width: 120px;
                margin: 0 40px 0 16px;
                box-sizing: border-box;
                border: transparent;
                border-radius: 60px;
                font-size: 15px;
                text-transform: uppercase;
                color: #ffffff;
                background-color:  red;
                cursor: pointer;
                outline: none;
                margin-bottom: 20px;
            }

            .btnvip1:hover {
                background-color: cyan;
            }

            .btnvip2:hover {
                background-color:#ff9900;
            }
        </style>
    </head>
    <body>

        <div style="background-image: url('https://i.pinimg.com/originals/c9/89/19/c98919abf17fd86146255f74d04ec113.jpg'); height: 1000px">
            <div class="wrapper" style="margin:  auto; padding-top: 0px" >
                <form action="<c:url value="buy.do"/>">

                    <div class="d-flex align-items-center justify-content-between" style="width: 100%; height: 100%">
                        <div class=" flex-column">
                            <div class="h3"></div>
                        </div>
                        <div>
                            <input type="checkbox" name="box" value="0" /> <i style="color: red;font-weight: bolder">Delete All Cart</i>
                        </div>
                    </div>

                    <div id="table" class="bg-white rounded">

                        <hr>
                        <div class="table-responsive">
                            <table class="table activitites">
                                <thead>
                                    <tr>

                                        <th scope="col" class="text-uppercase header">item</th>
                                        <th scope="col" class="text-uppercase">Quantity</th>
                                        <th scope="col" class="text-uppercase">price each</th>
                                        <th scope="col" class="text-uppercase">total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="product" items="${cartT.list}" varStatus="loop">

                                        <tr>
                                    <input type="hidden" name="idCart" value="${loop.count}"/>
                                    <input type="hidden" name="price" 
                                           value="<fmt:parseNumber type="number" value="${product.quantity*product.price}"/>"/>
                                    <input type="hidden" name="quantity" value="${product.quantity}"/>
                                    <input type="hidden" name="idProduct" value="${product.proID}"/>
                                    <td class="item">
                                        <div class="product">
                                            <div>
                                                <img src="<c:url value="/images/aucoutic/${product.img}"/>">
                                            </div>
                                            <div>
                                                ${product.name}
                                            </div>
                                        </div>
                                    </td>
                                    <td>${product.quantity}</td>
                                    <td class="d-flex flex-column"><fmt:formatNumber type="currency" minFractionDigits = "0" value="${product.price}"/>
                                    </td>
                                    <td class="font-weight-bold">
                                        <fmt:formatNumber type="currency" minFractionDigits = "0" value="${product.quantity*product.price}"/>

                                        <!--                                    <button class="d-flex justify-content-end align-items-end btn border">+ Add to
                                                                                cart</button>-->
                                        <input type="checkbox" name="box" value="${loop.count}"/>
                                    </td>
                                   
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <button class="btnvip1" type="submit"  >Buy</button>
                            <button class="btnvip2"  type="submit"formaction="delete.do" >Delete</button>
                            </form>
                            <div class="d-flex align-items-center justify-content-between" style="width: 100%; height: 100%">
                                <div class=" flex-column">
                                    <div class="h3"></div>
                                </div>
                                <div style="font-weight: bold;margin:0px 50px 10px 0px">
                                    <i style="color: red">${delete}</i>
                                    <i style="color: #33ff00">${success}</i>
                                </div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </body>
</html>
