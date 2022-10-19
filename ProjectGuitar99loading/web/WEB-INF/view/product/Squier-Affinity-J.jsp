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
                font-size: 25px;
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
                        <input type="hidden" name="page" value="/product/Squier-Affinity-J.do"/>
                        <p class="price"><fmt:formatNumber type="currency" minFractionDigits = "0" value="${list.price}"/></p>

                        <div class="high">  
                            <p class="special1">Nổi bật</p>
                            <p  class="special">- Thân đàn mỏng, nhẹ</p>
                            <p class="special">- Cần đàn dáng C mỏng</p>
                            <p class="special">- PJ pickup</p>
                            <p class="special">- Khóa lên dây mở kiểu cổ điển</p>
                        </div> 


                    </div>
                    <div class="product-price-btn">
                        <div>
                            <input class="quantity" type="number" name="quantity" value="${quantity==null?"1":quantity}" /><br>
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
    <!--    <h1>Guitar Information</h1>
        <form action="<c:url value="addCart.do"/>">
            <div class="row"> 
                <div class="col-md-4">
                    <img class="img" src="<c:url value="/images/aucoutic/${list.img}"/>"/>
                </div>
                <div class="col-md-4">
                    <input type="hidden" name="proId" value="${list.proID}"/>
                    <input type="hidden" name="cateId" value="${list.cateID}"/>
                    <input type="hidden" name="numDB" value="${list.quantity}"/>
                    <input type="hidden" name="page" value="/product/Squier-Affinity-J.do"/>
    ${list.name}<br/>
    ${list.price}<br/>
    ${list.category}<br/>
    <input type="number" name="quantity" value="${quantity!=null?"value":"1"}"/><br>
    <button type="submit" name="action" value="addCart"> Add to Cart</button>
</div>
</div>    
<i style="color:red">${result}${num}</i>
<div>
<h2>Ưu điểm Nổi bật</h2>
<p>- Thân đàn nhỏ gọn dễ chịu thích hợp với lối chơi fingerpicking</p>
<p>- Mặt trước gỗ Sitka nguyên miếng cho âm thanh linh hoạt và độ vang lớn</p>
<p>- Thân đàn bằng các lớp gỗ sapele mang đến một khung đàn chắc chắn</p>
<p>- Bàn phím bằng gỗ mun được trang trí với các nốt họa tiết acrylic Ý 4mm</p>
<p>- Hệ thống điện tử ES-B tích hợp tuner cho tông âm khuếch đại cực chi tiết</p>
<p>- Thiết kế độc đáo kết hợp với mức giá phải chăng.</p>
</div>-->

    <div>
        <h2 style="text-align: center">Mô Tả Sản Phẩm</h2>
        <div style="margin-left: 220px; margin-right: 220px; font-size: 22px">
            <p>Đại diện cho giá trị tốt nhất trong thiết kế guitar bass hiện nay, Affinity Series Jazz Bass mang đến âm thanh mạnh mẽ và cảm nhận nhạy bén. Affinity Series Jazz Bass được biết đến với cảm giác chơi thoải mái, vẻ ngoài bắt mắt và đầy đủ tính năng linh hoạt trong một nhạc cụ.</p>

            <h2 style="text-align: center">Cần đàn mảnh bằng gỗ maple</h2>

            <p>Cần đàn một mảnh bằng gỗ maple cứng cáp, mạnh mẽ giúp tăng cường chuyển động rung từ các dây đàn.</p>

            <h2 style="text-align: center">Mặt đàn (với 20 phím) làm bằng gỗ hồng mộc</h2>

            <p style="text-align:center"><img alt="" src="<c:url value="/images/product/Squier-Affinity-J/1.jpg"/>" style="height:267px; width:450px"></p>

            <p>Gỗ hồng mộc dùng làm mặt phím đàn mang tới sự thoải mái cho người chơi và cho cây đàn guitar chất tươi sáng, âm thanh nhẹ nhàng, êm dịu, ấm áp, dễ đi vào lòng người.</p>

            <h2 style="text-align: center">Single-coil Jazz Bass pickups</h2>

            <p style="text-align:center"><img alt="" src="<c:url value="/images/product/Squier-Affinity-J/2.jpg"/>" style="height:267px; width:450px"></strong></p>

            <p>Single coil pickup là loại tiêu chuẩn được sử dụng ở guitar điện Affinity Series Jazz Bass mang đến một âm thanh hiện đại và đặc trưng của Jazz Bass.&nbsp;Pickup đơn này có đặc điểm âm thanh rất trong, sắc bén và nhạy mà các bạn cũng thường được nghe qua và biết đến trước đây. Những người chơi muốn tìm những âm thanh trong sạch hoặc chỉ ít sử dụng distortion thường chọn pickup đơn này.</p>

            <h2 style="text-align: center">Miếng bảo vệ mặt đàn màu trắng</h2>

            <p>Miếng pickguard bảo vệ mặt đàn màu trắng vừa là lớp bảo vệ hiệu quả cho đàn trong quá trình sử dụng, vừa mang tới vẻ ngoài đẹp mộc mạc mà tinh tế.</p>

            <h2 style="text-align: center">Logo hai màu vàng đen&nbsp;ấn tượng ở đầu đàn</h2>

            <p style="text-align:center"><strong><img alt="" src="<c:url value="/images/product/Squier-Affinity-J/3.jpg"/>" style="height:267px; width:450px"></strong></p>

            <p>Logo của Affinity Series Jazz Bass có hai màu vàng và đen ấn tượng, thanh lịch ở đầu đàn mang đến đẳng cấp cho chiếc đàn này.</p>

            <p>&nbsp;</p>
        </div>
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

</html>
