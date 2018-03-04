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

<spring:message code="label_product_name" var="labelProductName"/>
<spring:message code="label_price" var="labelPrice"/>
<spring:message code="label_required_quantity_of_product" var="labelQuantityOfProduct"/>
<spring:message code="label_currency_type" var="labelCurrencyType"/>
<spring:message code="label_units_dim" var="labelUnitsDim"/>
<spring:message code="label_is_actual" var="labelIsActual"/>
<spring:message code="label_no" var="labelNo"/>
<spring:message code="label_for_adding_new_product" var="labelForAddingNewProduct"/>
<spring:message code="label_select_currency_type" var="labelSelectCurrencyType"/>
<spring:message code="label_select_units" var="labelSelectUnits"/>
<spring:message code="label_yes" var="labelYes"/>

<div class="container">
    <br/>
    <h3 class="title">${labelForAddingNewProduct}:</h3>
    <br/>
    <br/>


<form:form class="form-horizontal" method="POST" modelAttribute="prodForm" action="${userActionUrl}">

    <form:input path="id" type="hidden" id="id" />

    <c:if test="${not empty message}">
        <div id="message" class="${message.type}">${message.message}</div>
    </c:if>

    <br/>

    <spring:bind path="name">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">${labelProductName}: &nbsp;
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
                <label class="col-sm-2 control-label">${labelPrice}:&nbsp;
                    <form:input path="price" type="text" class="form-control"
                                id="price" style='width: 2em important;' onkeyup="checkParams()"
                                placeholder="${labelQuantityOfProduct}" min="0" max="1000" onchange="checkParams()"/>
                    <form:errors path="price" class="control-label" />
                </label>
            </div>
        </div>
    </spring:bind>

    <br/>

    <spring:bind path="currency">
        <div class="form-group" >
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">${labelCurrencyType}: &nbsp;
                    <select id="currency" name="currency" size="1" onchange="checkParams()">
                        <option name="currency" value="NaN">${labelSelectCurrencyType}</option>
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
                <label class="col-sm-2 control-label">${labelUnitsDim}:&nbsp;
                    <select id="units" name="units" size="1">
                        <option name="units" value="NaN">${labelSelectUnits}</option>
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
                <label class="col-sm-2 control-label">${labelIsActual}:&nbsp;
                    <select id="actual" name="actual" size="1">
                        <option value="false">${labelNo}</option>
                        <option value="true" ${prodForm.actual == 'true' ? 'selected="selected"' : ''}>${labelYes}
                        </option>
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
<jsp:include page="../custom/fragments/footer.jsp" />

</body>
</html>