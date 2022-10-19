<%-- 
    Document   : product
    Created on : Jun 8, 2022, 10:22:35 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            body {
                background-color: #d9e7fc;
            }

            .wrapper {
                height: 500px;
                width: 800px;
                background-color: white;
                margin: 50px auto;
                border-radius: 7px 7px 7px 7px;

            }

            .product-img {
                float: left;
                height: 440px;
                width: 400px;
            }

            .product-img img {
                border-radius: 7px 0 0 7px;
                padding-top: 30px;
            }

            .product-info {
                float: left;
                height: 420px;
                width: 327px;
                border-radius: 0 7px 10px 7px;
                background-color: #ffffff;
            }

            .product-text {
                height: 300px;
                width: 327px;
            }

            .product-text h1 {
                margin: 20px;
                padding: auto;
                font-size: 35px;
                text-align: center;
                color: #474747;
            }

            .product-text h1,
            .product-price-btn p {
                font-family: 'Bentham', serif;
            }

            .high {
                margin-right: 20px;
                border: 1px groove rgb(16, 151, 228);
                height: 240px;
                width: 350px;
            }

            .high1 {
                margin-right: 200px;
                margin-left: 200px;
                border: 1px groove red;
                height: 240px;
                width: 370px;
            }

            .high1 p {
                padding-left: 10px;
                font-size: 18px;
            }

            .price {
                font-size: 24px;
                text-align: center;
            }

            .special1 {
                margin-top: 0px; 
                margin-left: 0px;
                padding-left: 10px; 
                font-weight: bold; 
                color: white; 
                font-size: 22px; 
                background-color: #1097e4;
            }

            .special {
                margin-left: 20px;
                padding-left: 0px;
                margin-top: 5px;
                font-size: 18px;
            }

            .special2 {
                margin-top: 0px; 
                margin-left: 0px;
                padding-left: 10px; 
                font-weight: bold; 
                color: white; 
                font-size: 24px; 
                background-color: red;
            }

            .quantity {
                margin-left: 20px;
                width: 70px;
                height: 70px;
                margin-top: 20px;
                font-size: 27px;
            }

            .buy {
                margin-left: 5px;
                margin-top: 20px;
            }


            .product-price-btn {
                height: 103px;
                width: 327px;
                position: relative;
                display: flex;
                margin-top: 50px;
            }

            .product-price-btn p {
                display: inline-block;
                position: absolute;
                top: -13px;
                height: 50px;
                font-family: 'Trocchi', serif;
                margin: 0 0 0 38px;
                font-size: 28px;
                font-weight: lighter;
                color: #474747;
            }



            .product-price-btn button {
                float: right;
                display: inline-block;
                height: 70px;
                width: 176px;
                margin: 0 40px 0 16px;
                box-sizing: border-box;
                border: transparent;
                border-radius: 60px;
                font-family: 'Raleway', sans-serif;
                font-size: 20px;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 0.2em;
                color: #ffffff;
                background-color:  rgb(16, 151, 228);
                cursor: pointer;
                outline: none;
            }

            .product-price-btn button:hover {
                background-color: #79b0a1;
            }

            .add {
                margin-top: 40px; 
                background-color: red; 
                color: white;
                width: 150px;
                height: 100px;

            }

            .title {
                text-align: center;
            }

            .img {
                height: 600px;
                width: 550px;
            }

            .imgp {
                display: block;
                margin-left: auto;
                margin-right: auto;
            }

            .col-md-4 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <form action="addCart.do">
                <div class="wrapper1">

                    <div class="product-img">
                        <img src="<c:url value="/images/aucoutic/${list.img}"/>" 
                             height="420"
                             width="360">
                    </div>


                    <div class="product-info" >
                        <div class="product-text">
                            <h1>${list.name}</h1>
                            <input type="hidden" name="proId" value="${list.proID}"/>
                            <input type="hidden" name="cateId" value="${list.cateID}"/>
                            <input type="hidden" name="numDB" value="${list.quantity}"/>
                            <input type="hidden" name="page" value="/product/fender-player.do"/>
                            <p class="price"><fmt:formatNumber type="currency" minFractionDigits = "0" value="${list.price}"/></p>

                            <div class="high">  
                                <p class="special1">Nổi bật</p>
                                <p  class="special">- Pickup Noiseless</p>
                                <p class="special">- Mặt phím 12” và cán cuộn cách cạnh</p>
                                <p class="special">- Brige 6-Point bằng thép</p>
                                <p class="special">- Nút Control Push-Pull</p>
                            </div> 


                        </div>
                        <div class="product-price-btn">
                            <div>
                                <input class="quantity" type="number" name="quantity" value="${quantity==null?"1":quantity}"/><br>
                            </div>
                            <div class="buy">
                                <button type="submit" name="action" value="addCart"><i class="fa-solid fa-cart-shopping"></i>Add Cart</button>
                                <i style="color:red">${result}${num}</i>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>

        <!--        <h1>Guitar Information</h1>
        <form action="addCart.do">
            <div class="col-md-4">
                <img class="img" src="<c:url value="/images/aucoutic/${list.img}"/>"/>
            </div>
            <div class="col-md-4">
                <input type="hidden" name="proId" value="${list.proID}"/>
                <input type="hidden" name="cateId" value="${list.cateID}"/>
                <input type="hidden" name="numDB" value="${list.quantity}"/>
                <input type="hidden" name="page" value="/product/fender-player.do"/>
        ${list.name}<br/>
        ${list.price}<br/>
        ${list.category}<br/>
        <input type="number" name="quantity" value="${quantity!=null?"value":"1"}"/><br>
        <button type="submit" name="action" value="addCart"> Add to Cart</button>
    </div>
    <i style="color:red">${result}${num}</i>
    <div>
        <h2>Điểm nổi bật :</h2>

        <p>- Pickup Noiseless</p>

        <p>- Mặt phím 12” và cán cuộn cách cạnh</p>

        <p>- Brige 6-Point bằng thép</p>

        <p>- Nút Control Push-Pull</p>

        <p>- Locking tuning machines</p>
    </div>-->
        <h2 style="text-align: center"><strong>Mô Tả Sản Phẩm</strong></h2>
        <div style="margin-left: 220px; margin-right: 220px; font-size: 22px">
            <p>Kết hợp giữa thiết kế Fender® cổ điển với các tính năng lấy n
                gười chơi làm trung tâm cùng lớp phủ mới thú vị, Player Plus
                Telecaster® mang đến khả năng chơi tuyệt vời và phong cách k
                hông thể nhầm lẫn. Được hỗ trợ bởi một bộ Pickup Player Plu
                s Noiseless ™, Player Plus Tele® mang đến âm thanh Tele® ngọ
                t ngào, ấm áp - không có tiếng xì, ồn.</p>
            <div style="text-align: center">
                <img alt="" src="<c:url value="/images/product/fender-cd-60s/4.jpg"/>" style="height:264px; width:800px">

            </div>

            <p>Nút công tắc Push-Pull giúp cả hai hoạt động cùng lúc cao, ma
                ng lại công suất và tiếng của thân đàn cao hơn. Cần đàn Tele®
                Modern “C” Player Plus bằng satin vừa vặn với bàn tay của bạn,
                với các cạnh được cán mịn để tạo sự thoải mái tối đa. Mặt phí
                m bán kính 12 inch và 22 phím đàn Medium Jumbo tạo điều kiện
                cho những câu Lead và Bend.</p>

            <p>Phần Bridge 6-Point bằng thép khối giúp tăng thêm độ sáng và 
                cung cấp ngữ điệu chính xác cùng bộ chỉnh khóa cung cấp khả 
                năng điều chỉnh chắc chắn thực hiện thay đổi dây nhanh chóng, dễ dàng.</p>

            <p>Với phong cách Fender cổ điển, các tính năng tiên tiến và lớp 
                phủ mới tuyệt đẹp, Player Plus Telecaster là công cụ hoàn 
                hảo để khơi dậy sự sáng tạo của bạn và nổi bật giữa đám đông.</p>

        </div>
        <hr>

        <div class="high1" style="margin-left: 770px">  
            <p class="special2"style="text-align: center" >Shop Cam Kết</p>
            <p><i class="fa-solid fa-medal" style="color:#ff9933"></i> Sản phẩm nhập khẩu chính hãng</p>
            <p><i class="fa-solid fa-circle-check" style="color:blue"></i> Bảo hành 2 năm</p>
            <p><i class="fa-solid fa-truck-arrow-right" style="color:green"></i> Giao hàng toàn quốc với chi phí rẻ nhất</p>
            <p><i class="fa-solid fa-location-dot" style="color:red"></i> Sẽ Mở rộng hệ thống Trong Tương Lai</p>

        </div>  
    </form>
</body>
</html>
