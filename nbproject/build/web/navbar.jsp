<%-- 
    Document   : navbar
    Created on : Sep 23, 2024, 12:00:06 AM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
         <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a href="home"><img style="width: 100px; height: auto;" src="https://i.gyazo.com/f42624877a99b415498194df29e2e45b.png" ></a>
                

                <button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Lịch Chiếu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Phim</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Rạp</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="giave.jsp">Giá Vé</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Tin mới</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Khuyến Mãi</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
