<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html>

<jsp:include page="../fragments/header.jsp" />

<body>
<div class="container">
    <jsp:include page="../fragments/logo.jsp"/>
    <br/>
    <br/>
    <br/>
    <div class="well">
        <br/>
        <h2>Желаете заказать что-нибудь еще?!</h2>
        <br/>
        <br/>
            <input type="button" class="btn btn-md btn-success" value="Пожалуй, да!"
                   onclick="document.location='branch1'"/>
            <input type="button" class="btn btn-md" value="Нет, пока это все"
                   onclick="document.location='gratitude'"/>
            <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>
        <jsp:include page="fragments/messageform.jsp"/>
    </div>
</div>

<jsp:include page="fragments/footer.jsp" />

</body>
</html>