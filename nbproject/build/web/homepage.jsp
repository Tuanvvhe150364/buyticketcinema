
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
            .nav-tabs {
                border-bottom: 1px solid #ddd;
            }

            .nav-tabs .nav-link {
                font-weight: bold;
                color: #000; /* Black color for inactive */
            }

            .nav-tabs .nav-link.active {
                color: #0066cc; /* Blue for active */
                border-color: #0066cc; /* Blue border */
                border-bottom: 3px solid #0066cc; /* Blue underline for active */
            }

            .nav-tabs .nav-link:hover {
                color: #0066cc; /* Change color on hover */
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
            .hero {
                background-color: #0033cc; /* Already blue */
                color: white;
            }

            .movie-title {
                font-family: 'Arial', sans-serif;
                font-size: 24px;
                font-weight: bold;
                color: #4fb5ff; /* Light blue */
            }

            .release-date {
                background-color: #0066cc; /* Change to blue */
                color: white;
                padding: 5px;
                font-weight: bold;
                position: absolute;
                bottom: 20px;
                left: 20px;
            }

            .footer {
                background-color: #003399; /* Dark blue */
                color: #fff;
                padding: 20px 0;
            }

        </style>
    </head>
    <body>

        <!-- Navbar -->
        <jsp:include page="navbar.jsp"></jsp:include>

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

                <div class="container mt-4 p-3">
                    <ul class="nav nav-tabs justify-content-center h2">
                        <li class="nav-item">
                            <a class="nav-link <%= "0".equals(request.getAttribute("tag")) ? "active" : "" %>" href="active?aid=0">PHIM SẮP CHIẾU</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= "1".equals(request.getAttribute("tag")) ? "active" : "" %>" href="active?aid=1">PHIM ĐANG CHIẾU</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= "2".equals(request.getAttribute("tag")) ? "active" : "" %>" href="active?aid=2">SUẤT CHIẾU ĐẶC BIỆT</a>
                    </li>
                </ul>
            </div>

            <div class="row" >

                <!-- Movie 1 -->
                <c:forEach items="${listM}" var="o">
                    <div class="col-md-3">

                        <div class="card movie-card">
                            <a href="detail?movieId=${o.movieId}">
                                <img src="${o.avatarImage}" class="card-img-top" alt="${o.movieName}">
                            </a>
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
                <!-- Value Combo Section -->
                <div class="container mt-5">
                    <h2 class="text-primary-emphasis text-center mb-4">Value combo</h2>
                    <div class="row">
                        <!-- Combo 1 -->
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://files.betacorp.vn//media/images/2024/09/20/uvk-comeback-545-x-415-135454-200924-21.png" class="card-img-top" alt="Combo Ngon Dịu">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Combo “Ngon Dịu”</h5>
                                    <p>Mua combo “Ngon Dịu” tặng kèm vòng tay Blackpink siêu độc lạ.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Combo 2 -->
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://files.betacorp.vn//media/images/2024/09/09/uu-dai-dinh-noc-545-x-415-095255-090924-94.png" class="card-img-top" alt="Combo Túi Tote">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Combo “Túi Tote & Quai Xách Ly”</h5>
                                    <p>Mua combo bắp nước kèm túi tote hoặc quai xách ly siêu xinh với giá ưu đãi.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Combo 3 -->
                        <div class="col-md-4">
                            <div class="card">
                                <img src="https://files.betacorp.vn//cms/images/2024/04/03/545x415-mad-sale-day-131034-030424-25.jpg" class="card-img-top" alt="Combo Trung Thu Sum Vầy">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Combo “Trung Thu Sum Vầy”</h5>
                                    <p>Thưởng thức ngay combo bánh Trung Thu hảo hạng của BHD Star.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>




                <!-- Footer -->
                <footer class="footer mt-5">
                    <div class="container text-center">
                        <p>Beta Cinemas - &copy; 2024. All Rights Reserved.</p>
                        <h5>Made by group 1 - SWP391</h5>
                    </div>
                </footer>

                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                </body>
                </html>
