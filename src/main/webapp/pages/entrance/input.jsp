<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        <%@include file="/pages/entrance/style.css" %>
    </style>
</head>
<body>
<header>
    <div class="container">

        <div class="title">
            <h2>Buber</h2>
        </div>
        <nav id="menu-item" class="menu">
            <ul>
                <li><a class="menu-item" onclick="SmoothHeader('main')">Главная</a></li>
                <li><a class="menu-item" onclick="SmoothHeader('info')">Информация</a></li>
                <li><a class="menu-item" onclick="SmoothHeader('reg')">Регистрация</a></li>
                <li>
                    <div class="menu-info-user">
                        <img class="menu-item-photo" src="<%=request.getContextPath()%>/pages/entrance/image/primer_user.png" alt="photo_user">
                        <p class="menu-item-name">
                            PetushokIlya
                        </p>
                        <button class="menu-item-user" onclick="InfoUserLook()">
                            <img class="menu-item-button" src="<%=request.getContextPath()%>/pages/entrance/image/strelka_down.png" alt="">
                        </button>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</header>
<section id="info-user" class="info-user">
    <div class="container">
        <div class="info-exit">
            <button onclick="InfoUserLook()">
                <img src="<%=request.getContextPath()%>/pages/entrance/image/black-krest.png" alt="exit">
            </button>
        </div>
        <div class="data-user">
            <label>Name:</label>
            <p class="name">Petushok Ilya</p>
            <label>Status:</label>
            <p class="status">Passenger</p>
            <label>Sex:</label>
            <p class="sex">Man</p>
            <label>Rating:</label>
            <p class="rating">0.0</p>
            <label>Email:</label>
            <p class="email">a3310010752@mail.ru</p>
        </div>
        <div class="info-user-photo">
            <img src="<%=request.getContextPath()%>/pages/entrance/image/primer_user.png" alt="photo-user">
        </div>
    </div>
</section>
<script type="text/javascript">
    <%@include file="/pages/entrance/script.js" %>
</script>
</body>
</html>
