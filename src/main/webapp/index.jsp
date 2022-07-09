<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Вход</title>
    <style>
        <%@include file="/pages/autorization/style.css" %>
    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>

<body>
<div class="info">
    <div class="left">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="divforimage">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <p>
                            <img class="d-block w-100"
                                 src="<%=request.getContextPath()%>/pages/autorization/image/taxi1.jpg"
                                 alt="Первый слайд">
                        </p>
                    </div>
                    <div class="carousel-item">
                        <p>
                            <img class="d-block w-100"
                                 src="<%=request.getContextPath()%>/pages/autorization/image/taxi2.jpg"
                                 alt="Второй слайд">
                        </p>
                    </div>
                    <div class="carousel-item">
                        <p>
                            <img class="d-block w-100"
                                 src="<%=request.getContextPath()%>/pages/autorization/image/taxi3.jpg"
                                 alt="Третий слайд">
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="autorization">
        <span>
            <form action="buber">
                <h3>Авторизация</h3>
                <input name="command" type="hidden" value="authorization">
                <input class="text" type="text" name="login" placeholder="Логин">
                <br>
                <input class="text" type="password" name="password" placeholder="Пароль">
                <br>
                <input class="button" type="submit" value="Вход">
                <br>
                <label class="error">${error}</label>
                <a href="pages/registration/reg.jsp">Регистрация</a>
            </form>
        </span>
</div>
</body>

</html>