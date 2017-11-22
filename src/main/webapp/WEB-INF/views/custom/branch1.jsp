<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html lang="uk">

    <jsp:include page="../fragments/header.jsp" />

    <div class="container">
        <jsp:include page="../fragments/logo.jsp" />
        <br/>
        <br/>
        <div class="well">
                <br/>
                <h2>Необходим ли Вам предварительный расчет количества продукта?!</h2>
                <br/>
                <br/>
                <button type="button" class="btn btn-md btn-success"
                        onclick="document.location='/calc'">Да, необходим</button>
                    &nbsp;
                <button type="button" class="btn btn-md" onclick="document.location='/orders?amount=0&type=0'">
                    Нет, перейти сразу к заказу
                </button>
                    &nbsp;
                <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                    <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>

        </div>
    </div>
    <jsp:include page="fragments/messageform.jsp"/>
    <jsp:include page="fragments/footer.jsp" />

</html>