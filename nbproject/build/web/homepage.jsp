
<%-- 
    Document   : homepage
    Created on : Sep 11, 2024, 8:27:35 PM
    Author     : pc
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Ticket Booking</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        /* Custom styles */
        .navbar {
            background-color: #222;
        }
        .navbar-brand {
            color: #fff;
        }
        .navbar-nav .nav-link {
            color: #fff;
        }
        .hero {
            background-color: #0033cc;
            color: white;
            padding: 50px 0;
            text-align: center;
        }
       
        .movie-card img {
            object-fit: cover;
            height: 400px;
        }
         .movie-title{
             font-family: 'Arial', sans-serif;
            font-size: 24px; 
            font-weight: bold; 
             color: #4fb5ff;
        }
      
        .carousel-control-prev-icon, .carousel-control-next-icon {
            background-color: #222;
            border-radius: 50%;
        }
        .release-date {
            background-color: #ff6600;
            color: white;
            padding: 5px;
            font-weight: bold;
            position: absolute;
            bottom: 20px;
            left: 20px;
        }
        .footer {
            background-color: #222;
            color: #fff;
            padding: 20px 0;
        }
    </style>
    </head>
    <body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <img style="width: 100px; height: auto;" src="https://i.gyazo.com/f42624877a99b415498194df29e2e45b.png" >

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
                        <a class="nav-link" href="#">Giá Vé</a>
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

    <!-- Movie Carousel -->
    <div id="movieCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://files.betacorp.vn/media/images/2024/09/11/sua-phim-hay-t9-rap-lon-1702x621-134438-110924-17.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Quỷ Án</h5>
                    <p>13.09</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://files.betacorp.vn/media/images/2024/09/01/1702x621-17-132015-010924-34.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Anh Trai Vượt Mọi Tam Tai</h5>
                    <p>13.09</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://files.betacorp.vn/media/images/2024/09/11/tao-net-don-trang-1702-x-621-133621-110924-24.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Cám</h5>
                    <p>20.09</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#movieCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#movieCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


     <!-- Movie Listing Section -->
    <div class="container mt-5">
        <h2 class="text-primary-emphasis text-center mb-4">Phim Đang Chiếu</h2>
        <div class="row" >

            <!-- Movie 1 -->
            <c:forEach items="${listM}" var="o">
            <div class="col-md-3">
                
                <div class="card movie-card">
                    <img src="${o.avatarImage}" class="card-img-top" >
                    <div class="card-body">
                        <h5 class="movie-title">${o.movieName}</h5>
                        <p class="movie-info">Thể loại: Update...</p>
                        <p class="movie-info">Thời lượng: ${o.duration} phút</p>
                        <button class="btn btn-info"><i class="bi bi-ticket-perforated"></i> Mua Vé</button>
                        
<!--                        -------------->
                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#trailerModal${o.movieId}">
                    <i class="bi bi-play-circle"></i> Trailer
                </button>
                
                <!-- Modal để hiển thị video trailer -->
                <div class="modal fade" id="trailerModal${o.movieId}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Trailer - ${o.movieName}</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="ratio ratio-16x9">
                                    <iframe src="${o.trailer}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
                </div>
                        
            </div>
            </c:forEach>
          
           
           

    <!-- Footer -->
    <footer class="footer mt-5">
        <div class="container text-center">
            <p>Beta Cinemas - &copy; 2024. All Rights Reserved.</p>
            <p>Download the App: 
                <a href="#"><img src="https://via.placeholder.com/100x50" alt="Google Play"></a>
                <a href="#"><img src="https://via.placeholder.com/100x50" alt="App Store"></a>
            </p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
