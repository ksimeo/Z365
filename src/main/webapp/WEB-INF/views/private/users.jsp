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
</head>

<body class="main">
<div class="container">
  <spring:url value="/users" var="userActionUrl" />

  <h3>Список пользователей системы</h3>

  <c:if test="${not empty users}">
  <table>
    <thead>
    <tr>
      <th>№</th>
      <th>Логин</th>
      <th>Пароль</th>
      <th>Роль</th>
        <th>Зарегистрирован</th>
      <th> &nbsp; </th>
      <th> &nbsp;</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
      <tr>
        <td>${user.id}</td>
        <%--<td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>--%>
        <%--<td><c:if test="${not empty order.customer.name}">${order.customer.name}</c:if></td>--%>
        <%--<td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>--%>
        <%--<td>${order.customer.phoneNumber}</td>--%>
        <%--<td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>--%>
        <td>${user.login}</td>
        <td>${user.password}</td>
        <td>${user.role.name}</td>
          <td>${user.regDate}</td>
        <td><input type="button" value="Изменить" ${user.id == id ? "disabled" : ""} onclick="document.location='/admin/users/' + ${user.id}"></td>
        <td><input type="button" value="Удалить" ${user.id == id ? "disabled" : ""} onclick="document.location='/admin/users/' + ${user.id} + '/delete'"></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  </c:if>
  <c:if test="${empty users}">
  <br/>
  <br/>
  <br/>
  <h4><i>На данный момент заказов не поступало.</i></h4>
  </c:if>

      <button onclick="document.location = '/admin/users?new'">Добавить пользователя</button>


  <jsp:include page="fragments/footer.jsp" />

</body>
</html>