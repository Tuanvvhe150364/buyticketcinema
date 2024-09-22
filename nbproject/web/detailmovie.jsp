<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cám - Movie Schedule</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .movie-poster {
            max-width: 100%;
            height: auto;
        }
        .showtimes td {
            text-align: center;
            padding: 5px;
        }
        .showtimes {
            margin-top: 20px;
        }
        .screenings-time {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .seats-available {
            font-size: 0.9em;
            color: #6c757d;
        }
        .movie-info {
            font-size: 0.95em;
            color: #6c757d;
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <jsp:include page="navbar.jsp"></jsp:include>
    <div class="row pt-5">
        <!-- Poster -->
        <div class="col-md-4">
            <img style="width: 80%; display: block; margin: 0 auto" src="${movie.avatarImage}" alt="Movie Poster" class="movie-poster">
        </div>

        <!-- Movie Information -->
        <div class="col-md-8">
            <h2>${movie.movieName}</h2>
            <p class="movie-info">
                ${movie.description}
            </p>
            <ul class="list-unstyled">
                <li><strong>Đạo diễn:</strong> Update...</li>
                <li><strong>Diễn viên:</strong> ${movie.actor}</li>
                <li><strong>Thể loại:</strong> Update...</li>
                <li><strong>Thời lượng:</strong> ${movie.duration}<span> Phút</span></li>
                <li><strong>Ngôn ngữ:</strong> ${movie.language}</li>
                <li><strong>Ngày khởi chiếu:</strong> ${movie.releaseDate}</li>
            </ul>
        </div>
    </div>

    <!-- Schedule -->
    <div class="showtimes">
        <h4>Showtimes</h4>
        <table class="table table-bordered text-center">
            <thead>
                <tr>
                    <th>Ngày</th>
                    <th>09:15</th>
                    <th>10:30</th>
                    <th>11:20</th>
                    <th>13:30</th>
                    <th>14:45</th>
                    <th>15:45</th>
                    <th>18:00</th>
                    <th>22:30</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>23/09</td>
                    <td>
                        <div class="screenings-time">157 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">134 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">170 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">160 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">128 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">170 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">160 ghế trống</div>
                    </td>
                    <td>
                        <div class="screenings-time">170 ghế trống</div>
                    </td>
                </tr>
                <!-- Add more rows for other days -->
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
