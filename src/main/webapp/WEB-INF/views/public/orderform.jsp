<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk-UA">

<jsp:include page="fragments/header.jsp" />

<body class="main">
<div class="container">

    <spring:url value="/order" var="userActionUrl" />

    <div class="container">
        <br/>
        <h3 class="title">Для здійснення замовлення, будь ласка, заповнить усі поля форми або тільки номер телефону:</h3>
        <br/>
        <br/>
    </div>

    <form:form class="form-horizontal" method="POST"
               modelAttribute="orderForm" action="order">

        <%--<form:hidden path="id" />--%>

        <div class="form-group" >
            <label class="col-sm-2 control-label">Марка продукту:</label>
            <div class="col-sm-10">
                <select id="prodName" name="product" size="1" onchange="changeProd()">
                    <option name="prodName" id="prod0" value="NaN">-Виберіть-тип-продукту-</option>
                    <c:forEach items="${prods}" var="item">
                        <option name="type" value="${item.id}" ${item.id == prodType ? 'selected="selected"' : ''}>
                                ${item.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <br/>

        <spring:bind path="amount">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Кількість продукту обраної марки (л):</label>
                <div class="col-sm-10">
                    <form:input path="amount" type="number" class="form-control"
                                id="amount" style='width: 2em important;'
                                placeholder="Необходимое количество продукта" />
                    <form:errors path="amount" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <br/>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" onclick="document.location='/'" class="btn-lg btn-primary pull-right">
                    Повернутися на головну</button> &nbsp; &nbsp;
                <button type="submit" class="btn-lg btn-primary pull-right">Здійснити замовлення</button>
            </div>
        </div>
    </form:form>
</div>

<jsp:include page="fragments/footer.jsp" />

</body>
</html>