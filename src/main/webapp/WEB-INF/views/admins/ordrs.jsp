<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--<html>--%>
<%--<head>--%>
<%--<title></title>--%>
<%--</head>--%>
<%--<body class="main">--%>
<%--<h2>Вы на главной странице администратора.</h2>--%>
<!DOCTYPE html>
<html lang="uk-UA">

<%--<jsp:include page="fragments/header.jsp" />--%>
<head>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
  <meta charset="utf-8">
  <link type="text/css" rel="stylesheet" href="../../../styles/standard.css" />
  <link type="text/css" rel="stylesheet" href="../../../styles/bootstrap.min.css" />
  <link type="shortcut icon" rel="image/x-icon" href="../../../images/ico/favicon.ico">
  <script type="text/javascript" src="../../../scripts/customer.js"></script>
  <%--<link type="text/javascript" src="../../../scripts/admins.js">--%>
</head>

<body class="main">
<div class="container">
  <spring:url value="/admin" var="userActionUrl" />

  <a href="admin/users">К списку пользователей</a> &nbsp;
  <a href="admin/prods">К списку продуктов</a>

  <button onclick="document.location='/admin/users/1/pswrd'">Изменить пароль</button> &nbsp;
  <button onclick="/admin/logout">Выйти</button>

  <marquee loop="1"><h3>Доброго ранку, Назару Васильовічу! На цей час, поступило 2 нових замовлення!</h3></marquee>

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
          <c:if test="${not empty order.customer.customerName}">${order.customer.customerName}</c:if>
          <c:if test="${empty order.customer.customerName}">Не указано</c:if>
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
        <td>${order.product.customerName}</td>
        <td>${order.amount}</td>
        <td>&nbsp; x &nbsp;</td>
        <td>${order.product.units.customerName}</td>
        <td>
          <c:if test="${not empty order.reviewDate}">
            <fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.reviewDate}"/></c:if>
          <c:if test="${empty order.reviewDate}"><button onclick=" ">Просмотрено</button></c:if>
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

</body>
</html>