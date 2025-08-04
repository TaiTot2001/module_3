<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<style type="text/css">
    body {
        /* Đặt font chữ hiện đại cho toàn trang */
        font-family: Arial, sans-serif;
        background-color: #f0f2f5; /* Màu nền xám nhạt */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Chiều cao đầy đủ của màn hình */
        margin: 0;
    }

    .login {
        /* Cải thiện giao diện khung đăng nhập */
        width: 300px;
        padding: 30px;
        background-color: #ffffff; /* Nền trắng */
        border-radius: 8px; /* Bo tròn các góc */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Hiệu ứng đổ bóng nhẹ */
        text-align: center;
    }

    .login h2 {
        /* Chỉnh sửa tiêu đề */
        color: #333;
        margin-bottom: 20px;
    }

    .login input[type="text"],
    .login input[type="password"] {
        /* Thiết kế lại các trường nhập liệu */
        width: 100%; /* Chiều rộng đầy đủ */
        box-sizing: border-box; /* Đảm bảo padding không làm tràn chiều rộng */
        padding: 12px;
        margin-bottom: 15px; /* Khoảng cách dưới */
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: border-color 0.3s;
    }

    .login input[type="text"]:focus,
    .login input[type="password"]:focus {
        /* Hiệu ứng khi người dùng click vào */
        border-color: #007bff; /* Màu viền xanh dương */
        outline: none; /* Bỏ viền mặc định của trình duyệt */
    }

    .login input[type="submit"] {
        /* Thiết kế nút "Sign in" */
        width: 100%;
        padding: 12px;
        background-color: #007bff; /* Màu nền xanh dương */
        color: #fff; /* Chữ trắng */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s;
    }

    .login input[type="submit"]:hover {
        /* Hiệu ứng khi di chuột qua nút */
        background-color: #0056b3; /* Màu xanh đậm hơn */
    }
</style>
<body>
<form action="/login" method="post">
    <div class="login">
        <h2>Login</h2>
        <input type="text" name="username" placeholder="Tên đăng nhập" />
        <input type="password" name="password" placeholder="Mật khẩu" />
        <input type="submit" value="Đăng nhập"/>
    </div>
</form>
</body>
</html>