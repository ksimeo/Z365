<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk-UA">

<jsp:include page="fragments/header.jsp" />

<body class="main" onload="checkParams()">

<spring:url value="/admin/prods" var="userActionUrl" />

<div class="container">
    <br/>
    <h3 class="title">Для добавления нового продукта, пожалуйста, заполните все поля формы:</h3>
    <br/>
    <br/>


<form:form class="form-horizontal" method="POST" modelAttribute="prodForm" action="${userActionUrl}">

    <form:input path="id" type="hidden" id="id" />

    <br/>
    <spring:bind path="name">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">Наименование продукта: &nbsp;
                    <form:input path="name" type="text" class="form-control"
                                id="name" style='width: 2em important;' min="0" max="1000" onchange="checkParams()"/>
                    <form:errors path="name" class="control-label" />
                </label>
            </div>
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="price">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">Стоимость: &nbsp;
                    <form:input path="price" type="text" class="form-control"
                                id="price" style='width: 2em important;' onkeyup="checkParams()"
                                placeholder="Необходимое количество продукта" min="0" max="1000" onchange="checkParams()"/>
                    <form:errors path="price" class="control-label" />
                </label>
            </div>
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="currency">
        <div class="form-group" >
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">Тип валюты: &nbsp;
                    <select id="currency" name="currency" size="1" onchange="checkParams()">
                        <option name="currency" value="NaN">-Выберите-тип-валюты-</option>
                        <c:forEach items="${currencies}" var="item">
                            <option name="currency" value="${item}"
                             ${item.name == prodForm.currency.name ? 'selected="selected"' : ''}>${item.name}</option>
                        </c:forEach>
                    </select>
                </label>
            </div>
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="units">
        <div class="form-group" >
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">Единицы измерения: &nbsp;
                    <select id="units" name="units" size="1">
                        <option name="units" value="NaN">-Выберите-единицу-измерения-</option>
                        <c:forEach items="${units}" var="item">
                            <option name="units" value="${item}"
                             ${item.name == prodForm.units.name ? 'selected="selected"' : ''}>${item.name}</option>
                        </c:forEach>
                    </select>
                </label>
            </div>
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="actual">
        <div class="form-group" >
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">Актуальность: &nbsp;
                    <select id="actual" name="actual" size="1">
                        <option value="false">Нет</option>
                        <option value="true" ${prodForm.actual == 'true' ? 'selected="selected"' : ''}>Да</option>
                    </select>
                </label>
            </div>
        </div>
    </spring:bind>
    <br/>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" id="submit" class="btn-success btn-sm pull-right">Добавить</button> &nbsp;
            <button type="button"  onclick="document.location='../admins/prods'" class="btn-success btn-sm pull-right">
                Hазад</button>
        </div>
    </div>
    <div>
        <output id="price"></output>
    </div>
    <%-- TODO Предварительный подсчёт цены (on-line) --%>
</form:form>
</div>
<jsp:include page="fragments/footer.jsp" />

</body>
</html>