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
  <link type="text/css" rel="stylesheet" href="../../../resources/css/style.css" />
  <link type="text/css" rel="stylesheet" href="../../../resources/css/bootstrap.min.css" />
  <link type="shortcut icon" rel="image/x-icon" href="../../../resources/img/ico/favicon.ico">
  <link type="text/javascript" rel="../../../resources/js/customer.js">
</head>

<body class="main">
<div class="container">
  <spring:url value="/order" var="userActionUrl" />

  <h3>Заказы поступившие на данный момент</h3>

  <c:if test="${not empty orders}">
  <table>
    <thead>
    <tr>
      <th>№</th>
      <th>Дата</th>
      <th>Имя</th>
      <th>Фамилия</th>
      <th>Тел.</th>
      <th>e-mail</th>
      <th>Тип продукции</th>
      <th>Кол-во</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orders}">
      <tr>
        <td>${order.id}</td>
        <td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createTime}"/></td>
        <td><c:if test="${not empty order.customer.name}">${order.customer.name}</c:if></td>
        <td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>
        <td>${order.customer.phoneNumber}</td>
        <td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>
        <td>${order.product.name}</td>
        <td>${order.amount}</td>
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

</body>
</html>