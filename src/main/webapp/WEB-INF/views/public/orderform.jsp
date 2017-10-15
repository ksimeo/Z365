<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk-UA">

<%--<jsp:include page="fragments/header.jsp" />--%>
<head>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="../../../styles/standard.css" />
    <link type="text/css" rel="stylesheet" href="../../../styles/bootstrap.min.css" />
    <link type="shortcut icon" rel="image/x-icon" href="../../../images/ico/favicon.ico">
    <link type="text/javascript" rel="../../../resources/js/customer.js">
    <script type="text/javascript">
        function checkParams() {
            var type = $('#prodName').val();
            var amount = $('#amount').val();
//            var phone = $('#phone').val();
            if(type != "NaN" && amount.length != 0 && amount != 0) {
                $('#submit').removeAttr('disabled');
                document.getElementById('price').innerHTML = '<h2><p style="color: #006942;">Предварительная цена: ' +
                        amount + ' гр. </p></h2>';
            } else {
                document.getElementById('price').innerHTML = '';
                $('#submit').attr('disabled', 'disabled');
            }
        }
    </script>
</head>

<body class="main" onload="checkParams()">
<div class="container">
    <spring:url value="/order" var="userActionUrl" />

    <div class="container">
        <br/>
        <h3 class="title">Для здійснення замовлення, будь ласка, заповнить усі поля форми або тільки номер телефону:</h3>
        <br/>
        <br/>
    </div>

    <form:form class="form-horizontal" method="POST" modelAttribute="orderForm" action="${userActionUrl}">

        <div class="form-group" >
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">Марка продукту:
                <select id="prodName" name="product" size="1" onchange="checkParams()">
                    <option name="prodName" id="prod0" value="NaN">-Виберіть-тип-продукту-</option>
                    <c:forEach items="${prods}" var="item">
                        <option name="type" value="${item.id}" ${item.id == prodType ? 'selected="selected"' : ''}>
                                ${item.name}</option>
                    </c:forEach>
                </select>
                </label>
            </div>
        </div>
        <br/>
        <spring:bind path="amount">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                    <label class="col-sm-2 control-label">Кількість продукту обраної марки (л):
                    <form:input path="amount" type="number" class="form-control"
                                id="amount" style='width: 2em important;' onkeyup="checkParams()"
                                placeholder="Необходимое количество продукта" min="0" max="1000" onchange="checkParams()"/>
                    <form:errors path="amount" class="control-label" />
                    </label>
                </div>
            </div>
        </spring:bind>
        <br/>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" onclick="document.location='/'" class="btn-lg btn-primary pull-right">
                    Повернутися на головну</button> &nbsp; &nbsp;
                <button type="submit" id="submit" class="btn-lg btn-primary pull-right">Здійснити замовлення
                </button>
            </div>
        </div>
        <div>
            <output id="price"></output>
        </div>
        <%--TODO Предварительный подсчёт цены (on-line) --%>
    </form:form>
    </div>

<jsp:include page="fragments/footer.jsp" />

</body>
</html>