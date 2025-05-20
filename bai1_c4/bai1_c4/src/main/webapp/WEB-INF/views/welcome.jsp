<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Trang chào mừng</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 40px 60px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #2c3e50;
        }

        .time {
            font-weight: bold;
            color: #27ae60;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1><c:out value="${welcome.message}" /></h1>
    <p>Thời gian hiện tại: <span class="time" id="currentTime"></span></p>
</div>

<script>
    function updateTime() {
        const now = new Date();

        // Format thành "dd-MM-yyyy HH:mm:ss"
        const formatted = now.toLocaleDateString('vi-VN') + " " +
            now.toLocaleTimeString('vi-VN', { hour12: false });

        document.getElementById("currentTime").textContent = formatted;
    }

    // Gọi khi trang tải xong
    updateTime();
    // Cập nhật mỗi giây
    setInterval(updateTime, 1000);
</script>
</body>
</html>
