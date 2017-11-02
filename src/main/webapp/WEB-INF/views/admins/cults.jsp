<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<body class="main">
<div class="container">
  <spring:url value="/admins/cultures" var="userActionUrl" />

  <h3>Список культур</h3>

  <c:if test="${not empty cults}">
  <table class="table table-striped">
    <thead>
    <tr>
      <th>#ID</th>
      <th>Наименование культуры</th>
      <th>Коэффициент</th>
      <th> &nbsp; </th>
      <th> &nbsp;</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cult" items="${cults}">
      <tr>
        <td>${cult.id}</td>
        <td>${cult.name}</td>
        <td>${cult.coefficient}</td>
        <td><input type="button" value="Изменить" class="btn-warning btn-xs pull-right"
          onclick="document.location='/admin/cultures/${cult.id}'"></td>
        <td><input type="button" value="Удалить" class="btn-danger btn-xs pull-right"
                   onclick="document.location='/admin/cultures/' + ${cult.id} + '/delete'"></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  </c:if>
  <c:if test="${empty cults}">
  <br/>
  <br/>
  <br/>
  <h4><i>Культур пока еще не добавлено.</i></h4>
  </c:if>
  <br/>
  <br/>
  <button class="btn btn-success btn-md" onclick="document.location = '/admins/cultures?form'">
    Добавить культуру</button>
  <button class="btn btn-md" onclick="document.location='/admins/cultures'">Отмена</button>

  <jsp:include page="../fragments/footer.jsp" />
</body>
</html>