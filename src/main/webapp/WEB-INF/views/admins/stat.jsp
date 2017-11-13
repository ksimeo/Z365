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

<spring:url value="/questions" var="userActionUrl" />

<div class="container">
    <div class="well">
        <h3>Статистические данные об использовании системы</h3>
        <br/>
        <br/>
        <h4><i>Извините, но просмотр статистики пока не доступен.</i></h4>
        <br/>
        <br/>
        <br/>
    </div>
</div>
<jsp:include page="fragments/footer.jsp" />

</body>
</html>