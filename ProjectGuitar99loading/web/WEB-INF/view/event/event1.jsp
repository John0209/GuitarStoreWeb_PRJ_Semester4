<%-- 
    Document   : event1
    Created on : Jun 10, 2022, 11:17:51 PM
    Author     : tuan vu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Guitar</title>
        <style>
            .img {
                display: block;
                margin-left: auto;
                margin-right: auto;
                height: 550px;
                width: 900px;
            }

            .pa {
                font-size: 22px;
            }
            
            .par {
                margin-left: 120px;
                margin-right: 120px;
            }
        </style>
    </head>
    <body>
        <h1 style="text-decoration: none; margin-top: 30px; text-align: center;" >Trống và Bass - Sự liên kết kì diệu</h1>
        <div class="par">

            <t class="pa">Nếu như guitar bass là thành viên không thể thiếu của các ban nhạc với vai 
                trò lớn nhất của là giữ nhịp cũng như tạo các âm trầm, hỗ trợ cho giai điệu chính, 
                giúp cho bản nhạc thêm nhiều sắc thái thì trống là nhạc cụ làm nên linh hồn của một ban nhạc,
                mang đến sắc thái rất riêng cho mỗi ban nhạc. Đây là những nhạc cụ cơ bản 
                nhất cần có của một band chuyên nghiệp ngày nay, đặc biệt với các ban nhạc Rock.</t><br/>
        </div>

        <img class="img" src="<c:url value="/images/event/bass.jpg"/>""/><br/>

        <h2 style="text-decoration: none; text-align: center">Thông Tin Sự Kiện</h2>
        <div class="par">

            <t class="pa">Đến với chương trình “Trống và Bass - Sự liên kết kỳ diệu” , quý khán giả 
                sẽ được tìm hiểu rõ hơn những kiến thức về trống và guitar bass, về vai trò 
                cách chọn lựa dành cho người mới bắt đầu, trải nghiệm các sản phẩm chất lượng,... 
                Ngoài ra, bạn sẽ được tham gia giao lưu với dàn khách mời nổi tiếng trong lĩnh vực 
                như Dzăn Phướt Bassist, Tora Drummer, Nguyên Anh Bassist. Đây là những tên tuổi đang 
                được yêu thích qua nhiều chương trình và các màn trình diễn bùng nổ của họ.</t>
        </div>
    </body>
</html>
