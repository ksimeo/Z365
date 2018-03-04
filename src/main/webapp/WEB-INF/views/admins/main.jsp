<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<spring:message code="label_logbook" var="labelLogBook"/>
<spring:message code="label_id" var="labelId"/>
<spring:message code="label_date" var="labelDate"/>
<spring:message code="label_name" var="labelName"/>
<spring:message code="label_surname" var="labelSurname"/>
<spring:message code="label_phone" var="labelPhone"/>
<spring:message code="label_email" var="labelEMail"/>
<spring:message code="label_product_type" var="labelProductType"/>
<spring:message code="label_count" var="labelCount"/>
<spring:message code="label_units" var="labelUnits"/>
<spring:message code="label_state" var="labelState"/>
<spring:message code="label_viewed" var="labelViewed"/>
<spring:message code="label_no_orders" var="labelNoOrder"/>
<spring:message code="label_no_indicated" var="labelNoIndicated"/>

<div class="container">

    <spring:url value="/admins/orders" var="userActionUrl" />

    <c:if test="${not empty msg}">
    <div class="alert alert-${css} alert-dismissible" authority="alert">
        <button type="button" class="close" data-dismiss="alert"
                aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
        <strong>${msg}</strong>
    </div>
    </c:if>

    <%--<h2>${labelLogBook}</h2>--%>

    <%--<c:if test="${not empty orders}">--%>
    <%--<table class="table table-striped">--%>
        <%--<thead>--%>
        <%--<tr>--%>
            <%--<th>${labelId}</th>--%>
            <%--<th>${labelDate}</th>--%>
            <%--<th>${labelName}</th>--%>
            <%--<th>${labelSurname}</th>--%>
            <%--<th>${labelPhone}</th>--%>
            <%--<th>${labelEMail}</th>--%>
            <%--<th>${labelProductType}</th>--%>
            <%--<th>${labelCount}</th>--%>
            <%--<th></th>--%>
            <%--<th>${labelUnits}</th>--%>
            <%--<th>${labelState}</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<c:forEach var="order" items="${orders}">--%>
            <%--<tr ${order.reviewDate != null ? 'style="color: grey"' : ''}>--%>
                <%--<td>${order.id}</td>--%>
                <%--<td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>--%>
                <%--<td>--%>
                    <%--<c:if test="${not empty order.customer.name}">${order.customer.name}</c:if>--%>
                    <%--<c:if test="${empty order.customer.name}">${labelNoIndicated}</c:if>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if>--%>
                    <%--<c:if test="${empty order.customer.surname}">${labelNoIndicated}</c:if>--%>
                <%--</td>--%>
                <%--<td>${order.customer.phoneNumber}</td>--%>
                <%--<td>--%>
                    <%--<c:if test="${not empty order.customer.email}">${order.customer.email}</c:if>--%>
                    <%--<c:if test="${empty order.customer.email}">${labelNoIndicated}</c:if>--%>
                <%--</td>--%>
                <%--<td>${order.product.name}</td>--%>
                <%--<td>${order.amount}</td>--%>
                <%--<td>&nbsp; x &nbsp;</td>--%>
                <%--<td>${order.product.units.name}</td>--%>
                <%--<td>--%>
                    <%--<c:if test="${not empty order.reviewDate}">--%>
                        <%--<fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.reviewDate}"/></c:if>--%>
                    <%--<c:if test="${empty order.reviewDate}"><button class="btn btn-info btn-sm" onclick=" ">--%>
                        <%--${labelViewed}</button></c:if>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
        <%--</tbody>--%>
    <%--</table>--%>
    <%--</c:if>--%>
    <%--<c:if test="${empty orders}">--%>
    <%--<br/>--%>
    <%--<br/>--%>
    <%--<br/>--%>
    <%--<h4><i>${labelNoOrder}.</i></h4>--%>
    <%--</c:if>--%>

    <jsp:include page="fragments/footer.jsp" />
</html>