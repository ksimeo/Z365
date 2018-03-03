<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="us" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="uk">

<head>
    <title>Живорост365 - круглосуточная служба заказа биогумата</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="Круглосуточная служба заказа Биогумата" name="description" />
    <meta content="Заказать биогумат, купить биогумат on-line, биоудобрения, биогумат калия" name="keywords" />
    <spring:url value="/resources/styles/standard.css" var="coreCss" />
    <spring:url value="/resources/styles/bootstrap.min.css" var="bootstrapCss" />
    <link href="../../../resources/styles/standard.css" rel="stylesheet" />
    <link href="../../../resources/styles/bootstrap.min.css" rel="stylesheet" />
    <link rel="javascript" type="text/javascript" href="../../../resources/scripts/custom.js" />
    <link rel="javascript" type="text/javascript" href="../../../resources/scripts/bootstrap.min.js" />
    <link rel="javascript" type="text/javascript" href="../../../resources/scripts/jquery-3.2.1.min.js" />
    <link rel="shortcut icon" href="../../../resources/images/ico/favicon.ico">
    <link rel="javascript" type="text/javascript" href="../../../resources/scripts/calc.js" />
    <script type="text/javascript" src="../../../resources/core/js/move-top.js.download"></script>
    <script type="text/javascript" src="../../../resources/core/js/easing.js.download"></script>
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<body class="gratitude2">

<div class="container">
    <br/>
    <br/>
    <h1 class="title" style="color: #f7fff3;">Спасибо, за ваш заказ! Мы свяжемся с вами в ближайшее время :)</h1>
    <br/>
    <div class="col-sm-offset-2 col-sm-10 pull-right">
        <button type="button" class="btn btn-success btn-md" onclick="document.location='/'">Заказать ещё</button>
        <button type="button" class="btn btn-default btn-md" onclick="document.location='http://zhivorost.com.ua/'">
            Перейти на Главную &nbsp;<img src="../../../resources/images/png/logo1.png"/></button>
        <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
            <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>
    </div>
    <jsp:include page="fragments/messageform.jsp"/>
</div>
    <jsp:include page="fragments/footer.jsp" />
</html>