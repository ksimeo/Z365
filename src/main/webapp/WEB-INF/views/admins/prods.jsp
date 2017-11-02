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
                        <%--<td><c:if test="${not empty order.customer.customerName}">${order.customer.customerName}</c:if></td>--%>
                        <%--<td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>--%>
                        <%--<td>${order.customer.phoneNumber}</td>--%>
                        <%--<td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>--%>
                    <td>${prod.name}</td>
                    <td>${prod.price}</td>
                    <td>${prod.currency.c}</td>
                    <td>${prod.units.name}</td>
                    <td>${prod.actual == true ? "Да" : "Нет"}</td>
                    <td><div class="btn-group-xs"><input type="button" class="btn-warning" value="Изменить"
                               onclick="document.location='/admins/prods/${prod.id}'">

                  <input type="button" class="btn-danger" value="Удалить"
                               onclick="document.location='/admins/prods/${prod.id}/delete'"></div></td>
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
        <button class="btn btn-success btn-md" onclick="document.location = '/admins/prods?form'">
            Добавить новый продукт
        </button>
        <button class="btn btn-md" onclick="document.location='/admins/orders'">
            Вернуться на главную
        </button> &nbsp;
        <jsp:include page="../fragments/footer.jsp" />
</body>
</html>