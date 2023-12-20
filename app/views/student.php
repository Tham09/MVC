<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Sinh Viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary navbar" style="background-color: #adb9bd">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="#">Trang chủ</a>
        <ul class="nav justify-content-center">
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="../views/index/student_view.php">Sinh Viên</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="../views/index/lession_view.php">Khóa Học</a>
            </li>
            <li class="nav-item">
            <a class="nav-link disabled" aria-disabled="true">Thông tin khac</a>
            </li>
        </ul>
        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        </div>
        <div class=" d-md-flex justify-content-md-3">
        <a class="btn btn-primary btn btn-success text-center" href="#" role="button">Log In</a>
        <a class="btn btn-primary btn btn-secondary" href="#" role="button">Sign In</a>
    </div>
    </div>
    </nav>
    <div class="container mt-5">
        <div class="jumbotron">
            <h1 class="display-4">Hệ Thống Quản Lý Sinh Viên</h1>
            <p class="lead">Chào mừng bạn đến với trang quản lý sinh viên LMS</p>
            <hr class="my-4">
            <img src="./img/bg.jpg" class="img-fluid" style="height: 100%; width:400px" alt="...">
            <img src="./img/bg1.jpg" class="img-fluid" style="height: 250px; margin-left: 140px" alt="...">
       

          
        </div>
    </div>

    <!-- Login/Register Modal -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Chọn Thao Tác</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <button type="button" class="btn btn-primary btn-block" data-dismiss="modal" data-toggle="modal" data-target="#loginForm">
                        Đăng Nhập
                    </button>
                    <button type="button" class="btn btn-success btn-block" data-dismiss="modal" data-toggle="modal" data-target="#registerForm">
                        Đăng Ký
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS and any additional scripts if needed -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
