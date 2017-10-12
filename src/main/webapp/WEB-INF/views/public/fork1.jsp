<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html>
    <head lang="uk">
        <title>Живорост365 - сервис заказа</title>
        <meta charset="utf-8">
        <link type="text/css" rel="stylesheet" href="../../../resources/css/style.css" />
        <link type="shortcut icon" rel="image/x-icon" href="../../../resources/img/ico/favicon.ico">
    </head>
    <body class="main">
        <div>
            <div>
                <br/>
                <h2>Необходим ли Вам предварительный расчет количества продукта?!</h2>
                <br/>
                <br/>
            </div>
            <div>
                <span>
                    <input type="button" value="Да, необходим" onclick="document.location='calc'"/>
                    &nbsp; &nbsp;
                    <input type="button" value="Нет, перейти сразу к заказу" onclick="document.location='order?amount=0&type=0'"/>
                </span>
            </div>
        </div>
    </body>
</html>