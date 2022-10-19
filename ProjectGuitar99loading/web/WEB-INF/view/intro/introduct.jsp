<%-- 
    Document   : introduct
    Created on : Jun 11, 2022, 12:16:30 AM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Introduction Guitar </title>

        <style>
            .guitar_detail {
                width: 90%;
                max-width: 900px;
                margin-left: auto;
                margin-right: auto;
                padding-top: 8rem;
                padding-bottom: 13rem;
                font-size: 20px;
            }

            details div {
                border-left: 2px solid #000;
                border-right: 2px solid #000;
                border-bottom: 2px solid #000;
                padding: 1.5em;
            }

            details div > * + * {
                margin-top: 1.5em;
            }

            details + details {
                margin-top: .5rem;
            }

            summary {
                list-style: none;
            }

            summary::-webkit-details-marker {
                display: none;
            }

            summary {
                border: 2px solid #000;
                padding: .75em 1em;
                cursor: pointer;
                position: relative;
                padding-left: calc(1.75rem + .75rem + .75rem);
                
            }
            
            

            summary:before {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                left: .75rem;
                content: "↓";
                width: 1.75rem;
                height: 1.75rem;
                background-color: #000;
                color: #ffff33;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                flex-shrink: 0;
            }

            details[open] summary {
                background-color: #41d5ff;
                color: #0033ff;
            }

            details[open] summary:before {
                content: "↑";
            }

            details > div{
                background-color: #41d5ff;
                color: black;
            }
            
            summary {
                background-color: #41d5ff;
                
            }

            a {
                color: inherit;
                font-weight: 600;
                text-decoration: none;
                box-shadow: 0 1px 0 0;
            }

            a:hover {
                box-shadow: 0 3px 0 0;
            }

            code {
                font-family: monospace;
                font-weight: 600;
            }
        </style>
    </head>
    <body>
        <div style="background-image: url('<c:url value="/images/background/introduct-background.jpg"/>')">

            <div class="guitar_detail" style="color:#EDF3F9; ">
                <details open>
                    <summary >
                        GIỚI THIỆU CƠ BẢN VỀ CÂY ĐÀN GUITAR
                    </summary>
                    <div  >
                        <p>Guitar hay còn gọi là Tây Ban cầm thuộc họ nhạc cụ có dây. Đàn guitar 
                            ngày nay có 6dây, tuy nhiên vẫn tồn tại những loại đàn ghi-ta có 4, 7, 8, 10 và 12 dây. 
                            Người ta phân loại guitar thành hai loại, guitar điện (electric guitar) và guitar thùng (acoustic guitar).</p>


                    </div>
                </details>
                <details>
                    <summary>
                        CƠ BẢN VỀ MỘT CÂY ĐÀN GUITAR
                    </summary>
                    <div>
                        <p>Đàn guitar có 6 dây, theo thứ tự từ trên xuống dưới (hay từ dây to nhất xuống dây nhỏ nhất) 
                            là: Mì La Rề Son Si Mí – theo cách gọi phổ biến ở Việt Nam, hay E A D G B E – theo ký âm phương Tây.</p>
                    </div>
                </details>
                <details>
                    <summary>
                        TIÊU CHUẨN CỦA 1 CÂY ĐÀN GUITAR
                    </summary>
                    <div>
                        <p>- Bộ khóa chắc, không để dây bị tuột hoặc chùng sau một thời gian chơi.<br/>
                            - Cần đàn phải thẳng, khi ta nhìn cần đàn hợp với thùng đàn thành 1 đường thẳng tuyệt đối. <br/>

                            - Phím đàn cứng, chắc chắn, dây đàn khi căng chuẩn sẽ không bị chạm vào phím đàn (dẫn đến hiện tượng rè khi chơi).<br/>

                            - Tiếng đàn nghe ấm, vang, tiếng quạt đều. (vấn đề này phụ thuộc nhiều vào kinh nghiệm chơi đàn).</p>
                    </div>
                </details>
                <details>
                    <summary>
                        CẤU TẠO CƠ BẢN CỦA 1 CÂY ĐÀN GUITAR
                    </summary>
                    <div>
                        <img src="<c:url value="/images/aucoutic/cautao.jpg"/>">
                    </div>
                </details>
            </div>
        </div>
    </body>
</html>
