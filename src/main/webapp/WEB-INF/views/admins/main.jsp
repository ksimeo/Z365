<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<%--<body>--%>

    <div class="container">

        <spring:url value="/admin" var="userActionUrl" />

            <c:if test="${not empty msg}">
            <div class="alert alert-${css} alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert"
                        aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <strong>${msg}</strong>
            </div>
            </c:if>

            <%--<marquee loop="1"><h3>Доброго ранку, Назару Васильовічу! На цей час, поступило 2 нових замовлення!</h3>
            </marquee>--%>

            <h1>Заказы поступившие на данный момент</h1>

            <c:if test="${not empty orders}">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#ID</th>
                            <th>Дата</th>
                            <th>Имя</th>
                            <th>Фамилия</th>
                            <th>Тел.</th>
                            <th>e-mail</th>
                            <th>Тип продукции</th>
                            <th>Кол-во</th>
                            <th></th>
                            <th>Единицы изм.</th>
                            <th>Состояние</th>
                        </tr>
                    </thead>
                <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr ${order.reviewDate != null ? 'style="color: grey"' : ''}>
                        <td>${order.id}</td>
                        <td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>
                        <td>
                            <c:if test="${not empty order.customer.name}">${order.customer.name}</c:if>
                            <c:if test="${empty order.customer.name}">Не указано</c:if>
                        </td>
                        <td>
                            <c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if>
                            <c:if test="${empty order.customer.surname}">Не указано</c:if>
                        </td>
                        <td>${order.customer.phoneNumber}</td>
                        <td>
                            <c:if test="${not empty order.customer.email}">${order.customer.email}</c:if>
                            <c:if test="${empty order.customer.email}">Не указано</c:if>
                        </td>
                        <td>${order.product.name}</td>
                        <td>${order.amount}</td>
                        <td>&nbsp; x &nbsp;</td>
                        <td>${order.product.units.name}</td>
                        <td>
                             <c:if test="${not empty order.reviewDate}">
                                <fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.reviewDate}"/></c:if>
                            <c:if test="${empty order.reviewDate}"><button class="btn btn-info btn-sm" onclick=" ">
                                Просмотрено</button></c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    <c:if test="${empty orders}">
        <br/>
        <br/>
        <br/>
        <h4><i>На данный момент заказов не поступало.</i></h4>
    </c:if>

    <jsp:include page="fragments/footer.jsp" />


            <%--<!-- Trigger the modal with a button -->--%>
            <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">--%>
                <%--Open Large Modal</button>--%>

            <%--<!-- Modal -->--%>
            <%--<div class="modal fade" id="myModal" role="dialog">--%>
                <%--<div class="modal-dialog modal-lg">--%>
                    <%--<div class="modal-content">--%>
                        <%--<div class="modal-header">--%>
                            <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                            <%--<h4 class="modal-title">Modal Header</h4>--%>
                        <%--</div>--%>
                        <%--<div class="modal-body">--%>
                            <%--<p>This is a large modal.</p>--%>
                        <%--</div>--%>
                        <%--<div class="modal-footer">--%>
                            <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
<%--</body>--%>
</html>