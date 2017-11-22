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

<jsp:include page="fragments/header1.jsp" />

<div class="container">
    <br/>
    <br/>
    <h1>Спасибо, за ваш заказ! Мы свяжемся с вами в ближайшее время</h1>
    <hr/>
    <button type="button" class="btn btn-success btn-md pull-right" onclick="document.location='/'">
        Выполнить еще заказ
    </button>
    <button type="button" class="btn btn-default pull-right" onclick="document.location='http://zhivorost.com.ua/'">
        Перейти на Главную &nbsp;<img src="../../../resources/images/png/logo1.png"/></button>
    <button type="button" class="btn btn-info btn-md pull-right" data-toggle="modal" data-target="#myModal1">
        <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>
    <jsp:include page="fragments/messageform.jsp"/>
</div>
<jsp:include page="fragments/footer.jsp" />
</html>