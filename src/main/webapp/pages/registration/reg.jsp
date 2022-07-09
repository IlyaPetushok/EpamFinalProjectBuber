<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 07.07.2022
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <style>
        <%@include file="/pages/registration/style.css" %>
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
                <li><a  class="menu-item"  onclick="SmoothHeader('main')">Главная</a></li>
                <li><a  class="menu-item" onclick="SmoothHeader('info')">Информация</a></li>
                <li><a  class="menu-item"  onclick="SmoothHeader('reg')">Регистрация</a></li>
            </ul>
        </nav>
    </div>
</header>

<section id="main" class="main">
    <div class="container">

        <div class="main-title">
            <h2>
                Мы переосмысливаем то, как движется мир
            </h2>
        </div>
        <div class="main-text">
            Движение — это наша сила и страсть. Оно у нас в крови. Мы постоянно ищем новые решения, чтобы улучшить
            мобильность в городе для всех вас. Чтобы помочь вам оказаться в нужном месте, получить желаемую вещь или
            заработать, занимаясь любимым делом. Где бы вы ни были, в любое время, за пару нажатий.
        </div>
        <div class="main-back">
        </div>
    </div>
</section>

<section id="info" class="info">
    <div class="container">
        <table class="info-row">
            <tr>
                <td class="info-column">
                    <img src="<%=request.getContextPath()%>/pages/registration/image/info/time.png" alt="time" class="info-image">
                </td>
                <td class="info-column">
                    <img src="<%=request.getContextPath()%>/pages/registration/image/info/money.png" alt="money" class="info-image">
                </td>
                <td class="info-column">
                    <img src="<%=request.getContextPath()%>/pages/registration/image/info/location.png" alt="location" class="info-image">
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Быстро</h3>
                </td>
                <td>
                    <h3>Доступно</h3>
                </td>
                <td>
                    <h3>Просто</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <p class="info-text">Поездки в любое время дня и года</p>
                </td>
                <td>
                    <p class="info-text-2">Куда бы вы ни ехали, на работу или
                        на торжественную встречу, для вас
                        найдется подходящий вариант поездки.</p>
                </td>
                <td>
                    <p class="info-text">Закажите поездку — и ваш водитель
                        доставит вас в пункт назначения.</p>
                </td>
            </tr>
        </table>
        <table>
            <tr class="tr-image">
                <td>
                    <img class="info-image-second" src="<%=request.getContextPath()%>/pages/registration/image/info/Sustainability.jpg">
                </td>
                <td>
                    <ul>
                        <li>
                            <h3>
                                Устойчивое развитие
                            </h3>
                        </li>
                        <li>
                            <p>
                                К 2040 году компания Buber намерена достичь нулевого уровня выбросов. Мы рассчитываем,
                                что все поездки к тому времени будут выполняться на электромобилях, общественном или
                                микротранспорте. Как крупнейшая в мире транспортная платформа, мы обязаны принимать
                                решительные меры по борьбе с изменением климата: предоставлять пользователям
                                альтернативные способы передвижения, помогать партнерам переходить на экологичный
                                транспорт, а также вести максимально прозрачную экологическую политику, сотрудничая с
                                НКО и частным бизнесом.
                            </p>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr class="tr-image">
                <td>
                    <img class="info-image-second" src="<%=request.getContextPath()%>/pages/registration/image/info/UberIM_20250-medium-(2).jpg">
                </td>
                <td>
                    <ul>
                        <li>
                            <h3>
                                Поездки и не только
                            </h3>
                        </li>
                        <li>
                            <p>
                                Помочь пользователям добраться до места назначения — не единственная задача Buber. Мы
                                также организуем быструю и недорогую доставку еды, расширяем доступ к медицинским
                                услугам, создаем новые способы перевозки грузов и помогаем в организации корпоративных
                                поездок. Кроме того, мы всегда поддерживаем водителей- и курьеров-партнеров,
                                предоставляя им возможность заработка.
                            </p>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</section>

<section id="reg" class="reg">
    <div class="container">
        <form action="<%=request.getContextPath()%>/buber" enctype="multipart/form-data">
            <input type="hidden" name="command" value="registration">
            <img src="<%=request.getContextPath()%>/pages/registration/image/WhiteBlackTaxi.jpg" alt="TAXI" class="reg-image">
            <div class="reg-title">
                <h2>Регистрация</h2>
            </div>
            <div class="reg-data">
                <div class="reg-radio">
                    <div class="radio_button">
                        <input id="radio-1" type="radio" name="sex" value="man" checked/>
                        <label for="radio-1">Мужской</label>
                    </div>
                    <div class="radio_button">
                        <input id="radio-2" type="radio" name="sex" value="woman">
                        <label for="radio-2">Женский</label>
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="reg-status">
                        <div class="radio_button">
                            <input id="radio-3" type="radio" name="status" value="passenger" checked/>
                            <label for="radio-3">Пассажир</label>
                        </div>
                        <div class="radio_button">
                            <input id="radio-4" type="radio" name="status" value="driver">
                            <label for="radio-4">Водитель</label>
                        </div>
                    </div>
                </div>
                <div class="reg-img-user">
                    <label for="file-input">
                        <img src="<%=request.getContextPath()%>/pages/registration/image/linha-preta-contínua-ícone-do-avatar-perfil-de-usuário-134042540.jpg"/>
                    </label>
                    <input id="file-input" type="file" name="photo_user" accept="image/png">
                </div>

                <div class="form-input">
                    <input type="text" name="name" placeholder="Имя">
                    <input type="text" name="login" placeholder="Логин">
                    <br>
                    <input type="text" name="email" placeholder="Почта">
                    <input type="password" name="password" placeholder="Пароль">
                </div>
                <div class="button">
                    <input type="submit" value="Регистрация">
                </div>
            </div>

        </form>
    </div>
</section>
<footer>
    <div class="container">
        <h2>Buber</h2>
        <p>© 2011-2022 ООО «Buber». Buber — информационный сервис. Транспортные и иные услуги оказываются партнёрами
            сервиса</p>
    </div>
</footer>
<script type="text/javascript">
    <%@include file="/pages/registration/scrypt.js" %>
</script>
</body>

</html>
