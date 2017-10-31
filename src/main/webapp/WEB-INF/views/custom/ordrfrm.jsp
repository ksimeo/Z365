<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<body onload="checkParams()">
<spring:url value="/orders" var="userActionUrl" />

<div class="container">
    <jsp:include page="fragments/logo.jsp"/>
        <br/>
        <br/>
    <div class="well">
    <h2 class="title">Для здійснення замовлення, будь ласка, заповнить усі поля <br/>
    форми або тільки номер телефону:</h2>
<br/>

<form:form role="form" class="form-horizontal" method="POST" modelAttribute="orderForm" action="${userActionUrl}">

    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Марка продукту:&nbsp;</label>
            <%--<div class="col-sm-10 pull-left">--%>
        <select id="name" name="product" size="1" class="pull-left" onchange="checkParams()">
            <option name="name" id="prod0" value="NaN">-Виберіть-тип-продукту-</option>
            <c:forEach items="${prods}" var="item">
                <c:if test="${item.actual}">
                    <option name="type" value="${item.id}" ${item.id == prodType ? 'selected="selected"' : ''}/>
                    ${item.name}</option>
                </c:if>
            </c:forEach>
        </select>
            <%--</div>--%>
    </div>
    <br/>
    <br/>
    <spring:bind path="amount">
        <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10 pull-left">
            <label for="amount" class="col-sm-2 control-label">Кількість продукту обраної марки (л):</label>
                    <form:input path="amount" type="number" class="form-control"
                                id="amount" placeholder="Необходимое количество продукта" autocomplete="false"
                                size="10" min="0" style="width: 200px;" max="1000" onchange="checkParams()"/>
                    <form:errors path="amount" class="control-label" />
        </div>
    </spring:bind>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" id="submit" class="btn btn-success btn-md pull-left">
                Здійснити замовлення
            </button>
            &nbsp;
            <button type="button" onclick="document.location='/'" class="btn btn-md">
                Повернутися на головну
            </button>
            &nbsp;
            <button type="button" class="btn btn-info btn-md" onclick="document.location='/questions?form'">
                <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос
            </button>
            </div>
    </div>
    <%--</div>--%>
    <div>
        <output id="price"></output>
    </div>

    <%--TODO Предварительный подсчёт цены (on-line) --%>
</form:form>
        </div>
</div>
<jsp:include page="fragments/footer.jsp" />

</body>
</html>