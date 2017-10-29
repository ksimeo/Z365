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
    <spring:url value="/users" var="userActionUrl" />

    <h3>Список предлагаемых продуктов</h3>

        <c:if test="${not empty products}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>№</th>
                <th>Название продукта</th>
                <th>Цена</th>
                <th>Денежные единицы</th>
                <th>Единицы измерения</th>
                <th>Актуальность</th>
                <th> &nbsp; </th>
                <th> &nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="prod" items="${products}">
                <tr>
                    <td>${prod.id}</td>
                        <%--<td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>--%>
                        <%--<td><c:if test="${not empty order.customer.name}">${order.customer.name}</c:if></td>--%>
                        <%--<td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>--%>
                        <%--<td>${order.customer.phoneNumber}</td>--%>
                        <%--<td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>--%>
                    <td>${prod.name}</td>
                    <td>${prod.price}</td>
                    <td>${prod.currency.c}</td>
                    <td>${prod.units.name}</td>
                    <td>${prod.actual == true ? "Да" : "Нет"}</td>
                    <td><input type="button" class="btn-warning btn-lg pull-right" value="Изменить"
                               onclick="document.location='/admin/prods/${prod.id}'">
                    </td>
                    <td><input type="button" class="btn-danger btn-lg pull-right" value="Удалить"
                               onclick="document.location='/admin/prods/${prod.id}/delete'"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
        <c:if test="${empty products}">
        <br/>
        <br/>
        <br/>
        <h4><i>Продукты еще не добавлены в систему.</i></h4>
        </c:if>
        <br/>
        <button class="btn-success btn-lg btn-primary pull-right" onclick="document.location = '/admin/prods?new'">
            Добавить продукт</button> &nbsp;
        <button class="btn-success btn-lg btn-primary pull-right" onclick="document.location='/admin'">На главную
        </button>

        <jsp:include page="fragments/footer.jsp" />

</body>
</html>