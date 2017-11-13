<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />


<spring:url value="/questions" var="userActionUrl" />

<div class="container">
    <br/>
    <br/>
    <div class="well">
        <h3>Настройка оповещения пользователей системы</h3>
        <br/>
        <br/>
        <h4><i>Извините, но настройки рассылки пока не доступны.</i></h4>
        <br/>
        <br/>
    </div>
</div>

<jsp:include page="fragments/footer.jsp" />

</body>
</html>