<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
    <title> Администрирование системы - Живорост365</title>
    <spring:url value="/resources/styles/standard.css" var="coreCss" />
    <spring:url value="/resources/styles/bootstrap.min.css" var="bootstrapCss" />
    <link href="../../../../resources/styles/standard.css" rel="stylesheet" >
    <link href="../../../../resources/styles/bootstrap.min.css" rel="stylesheet" >
    <link rel="shortcut icon" href="../../../../resources/images/ico/favicon.ico">
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<spring:url value="/admin/" var="urlHome" />
<spring:url value="/admin/calc" var="urlCalculation" />
<spring:url value="/admin/prods" var="urlProducts" />
<spring:url value="/admin/users" var="urlUsers" />
<spring:url value="/admin/users/1/pswrd" var="urlChangePassword" />
<spring:url value="/admin/logout" var="urlLogout" />
<spring:url value="username" var="userName" />

<nav class="navbar navbar-inverse">
    <div class="container">
        <div id="navbar-header">
            <div class="navbar-header">
                <a class="navbar-brand" href="${urlHome}"><img src="../../../../resources/images/png/logo_mini.png"/></a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="navbar-brand">
                    <span class="btn-group">
                        <%--<button class="btn btn-default btn-sm" onclick="document.location='${urlHome}'">--%>
                            <%--<img src="../../../../resources/images/png/home.png"></button>--%>
                        <%--<button class="btn btn-default btn-sm" onclick="document.location='${urlCalculation}'">--%>
                            <%--<img src="../../../../resources/images/png/calc.png" />Расчетные данные</button>--%>
                        <button class="btn btn-default btn-sm" onclick="document.location='${urlProducts}'">
                            <img src="../../../../resources/images/png/list.png"/>&nbsp;Перечень продукции</button>
                        <button class="btn btn-default btn-sm" onclick="document.location='${urlUsers}'">
                            <img src="../../../../resources/images/png/messages.png"/>&nbsp;Cообщения пользователей</button>
                    </span>
                </li>
            <%--</ul>--%>
                <li>
                    <label style="color: beige"><img src="../../../../resources/images/png/usr.png"/>${userName}</label>
                </li>
                <li>
                    <%--<button class="btn btn-default btn-sm">--%>
                        <div class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <img src="../../../../resources/images/png/wheel.png" /> Настройки
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="#">Сменить пароль</a></li>
                        <li><a href="${urlUsers}">Редактировать список пользователей</a></li>
                        <li><a href="#">Редактировать расчетные данные</a></li>
                        </ul>
                        </div>
                    <%--</button>--%>
                </li>
                <li>
                    <button class="btn btn-default btn-sm" onclick="document.location='${urlUsers}'">
                        <img src="../../../../resources/images/png/exit.png"/>&nbsp;Выйти</button>
                </li>
                </ul>
                    <%--<span class="btn-group">--%>
                   <%--<div class="dropdown">--%>
                       <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
                           <%--<img src="../../../../resources/images/png/wheel.png" /> Настройки--%>
                           <%--<span class="caret"></span></a>--%>
                       <%--<ul class="dropdown-menu">--%>
                           <%--<li><a href="#">Сменить пароль</a></li>--%>
                           <%--<li><a href="#">Редактировать список пользователей</a></li>--%>
                           <%--<li><a href="#">Редактировать расчетные данные</a></li>--%>
                       <%--</ul>--%>
                   <%--</div>--%>
                    <%--<button class="btn btn-default btn-sm" onclick="document.location='${urlLogout}'">--%>
                        <%--<img src="../../../../resources/images/png/exit.png" />&nbsp; Выйти--%>
                    <%--</button>--%>
                    <%--</span>--%>
                <%--</li>--%>
                <%--&nbsp;--%>
            <%--</ul>>--%>
        </div>
    </div>
</nav>