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
        <h1 style="text-decoration: none; margin-top: 30px; text-align: center;" >CUỘC THI 6TH STEINWAY YOUTH PIANO COMPETITION 2022</h1>
        <div class="par">
            <img class="img" src="<c:url value="/images/event/event3.jpg"/>"/><br/>
            <t class="pa">Vietnam Steinway Youth Piano Competition là cuộc thi
                dành cho tất cả Công dân và Thường trú nhân Việt Nam từ 17 tuổi trở xuống.  
<br/>
                + Professional Division dành cho tất cả Công dân Việt Nam <br/>
                + Amateur Division dành cho tất cả Công dân và Thường trú nhân Việt Nam<br/>
                - Thí sinh đạt giải nhất từ các cuộc thi SYPC trước đây không được tham gia cùng bảng.  
<br/>
                - Thí sinh chỉ được đăng ký tham gia hoặc Professional Division hoặc Amateur Division. 
<br/>
                - Người dự thi được khuyến khích đi cùng với người giám hộ là người lớn trong suốt
                thời gian diễn ra cuộc thi. Người giám hộ chịu hoàn toàn trách nhiệm về sự an toàn 
                của trẻ vị thành niên trong quá trình thi đấu và tất cả các sự kiện liên quan. </t><br     </div>
        <h2 style="text-decoration: none; text-align: center">Thông Tin Sự Kiện</h2>
        <div class="par">

            <t class="pa">Bằng cách điền thông tin và đăng ký, thí sinh xác nhận
                rằng họ đã đọc, hiểu và đồng ý với các điều khoản và điều kiện
                được đề cập trong Thể lệ và Quy định của Việt Nam Steinway Youth
                Piano Competition. Nếu người đăng ký không tuân theo các điều khoản 
                của cuộc thi và điều kiện, Ban tổ chức SYPC có quyền hủy đơn đăng
                ký của họ mà không cần hoàn lại tiền. </t>
        </div>
    </body>
</html>
