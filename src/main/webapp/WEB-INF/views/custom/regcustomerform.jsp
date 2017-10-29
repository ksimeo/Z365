<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html lang="uk">
<head>
    <title>Живорост365 - сервис заказа биоудобрений</title>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="../../../resources/css/style.css" />
    <link type="shortcut icon" rel="image/x-icon" href="../../../resources/img/ico/favicon.ico">
</head>
<body class="main">
<div>
    <h2>Видим Вы у нас впервые!</h2>
    <hr/>
    <h3>Пожалуйста, заполните по возможности поля <br/>
        нашей формы, чтобы мы могли знать о Вас больше.</h3>

    <form:form type="userform" method="POST" modelAttribute="usrForm" action="userform" >

        <spring:bind path="name">
            <div>
                <label>Имя:</label>
                <div>
                    <form:input path="name" size="10" id="user_name" placeholder="Имя отчества или просто имя"/>
                    <small>Чтобы мы знали как обращаться к вам</small>
                    <form:errors path="name" />
                </div>
                <div class="col-sm-5"></div>
            </div>
        </spring:bind>

        <spring:bind path="surname">
            <div>
                <label for="user_surname">Фамилия:</label>
                <div>
                    <sf:input path="surname" size="10" id="user_surname"/>
                    <small>Чтобы мы представляем с кем имеем дело :)</small>
                    <form:errors path="surname" />
                </div>
                <div class="col-sm-5"></div>
            </div>
        </spring:bind>

        <spring:bind path="email">
            <div>
                <label for="user_email">Имя:</label>
                <div>
                    <sf:input path="email" size="10" id="user_email"/>
                    <small>На случай если у нас появятся интересные предложения для Вас</small>
                    <form:errors path="email" />
                </div>
                <div class="col-sm-5"></div>
            </div>
        </spring:bind>

        <spring:bind path="region">
            <div>
                <label for="region">Ваш регион:</label>
                <div>
                    <form:select path="region" multiple="false" size="1" class="form-control">
                        <form:option value="NONE" label="-Выберите-Ваш-регион-" />
                        <form:option value="Крим">АР Крым</form:option>
                        <form:option value="Віннічина">Винницкая обл.</form:option>
                        <form:option value="Волинщина">Волынская обл.</form:option>
                        <form:option value="Дніпропетровщина">Днепропетровская обл.</form:option>
                        <form:option value="Донеччина">Донецкая обл.</form:option>
                        <form:option value="Житомирщина">Житомирская обл.</form:option>
                        <form:option value="Закарпаття">Закарпатская обл.</form:option>
                        <form:option value="Запоріжчина">Запорожская обл.</form:option>
                        <form:option value="Івано-Франківщина">Ивано-Франковская обл.</form:option>
                        <form:option value="Київщина">Киевская обл.</form:option>
                        <form:option value="Кіровоградчина">Кировоградская обл.</form:option>
                        <form:option value="Луганщина">Луганская обл.</form:option>
                        <form:option value="Львівщина">Львовская обл.</form:option>
                        <form:option value="Миколаївщина">Николаевская обл.</form:option>
                        <form:option value="Одесчина">Одесская обл.</form:option>
                        <form:option value="Полтавщина">Полтавская обл.</form:option>
                        <form:option value="Рівненщина">Ровненская обл.</form:option>
                        <form:option value="Сумщина">Сумская обл.</form:option>
                        <form:option value="Тернопільщина">Тернопольская обл.</form:option>
                        <form:option value="Харківщина">Харьковская обл.</form:option>
                        <form:option value="Херсонщина">Херсонская обл.</form:option>
                        <form:option value="Хмельниччина">Хмельницкая обл.</form:option>
                        <form:option value="Черкасчина">Черкасская обл.</form:option>
                        <form:option value="Чернівеччина">Черновецкая обл.</form:option>
                        <form:option value="Чернігівщина">Черниновская обл.</form:option>
                        <form:option value=" " selected="true"></form:option>
                    </form:select>
                </div>
                <div class="col-sm-5"></div>
            </div>
        </spring:bind>


        <div>
            <div>
                <button type="submit">OK</button>
            </div>
        </div>

    </form:form>
</div>
</body>
</html>