<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html lang="uk">

    <jsp:include page="../fragments/header.jsp" />

    <spring:message code="label_is_requered" var="labelIsRequered"/>
    <spring:message code="label_requered_yes" var="labelRequeredYes"/>
    <spring:message code="label_requered_no" var="labelRequeredNo"/>
    <spring:message code="label_ask_a_question" var="labelAskAQuestion"/>

    <div class="container">
        <jsp:include page="../fragments/logo.jsp" />
        <br/>
        <br/>
        <br/>
        <div class="well">
                <br/>
                <h2>${labelIsRequered}?!</h2>
                <br/>
                <br/>
                <button type="button" class="btn btn-md btn-success"
                        onclick="document.location='/calc'">${labelRequeredYes}</button>
                    &nbsp;
                <button type="button" class="btn btn-md" onclick="document.location='/orders?amount=0&type=0'">
                    ${labelRequeredNo}
                </button>
                    &nbsp;
                <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                    <img src="../../../resources/images/png/question.png">&nbsp;${labelAskAQuestion}</button>

        </div>
    </div>
    <jsp:include page="fragments/messageform.jsp"/>
    <jsp:include page="fragments/footer.jsp" />

</html>