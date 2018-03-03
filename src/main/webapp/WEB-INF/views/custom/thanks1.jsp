<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="us" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="uk">

<head>
    <title>Живорост365 - круглосуточная служба заказа биогумата</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <spring:url value="/resources/styles/standard.css" var="coreCss" />
    <spring:url value="/resources/styles/bootstrap.min.css" var="bootstrapCss" />
    <link href="../../../resources/styles/standard.css" rel="stylesheet" />
    <link href="../../../resources/styles/bootstrap.min.css" rel="stylesheet" />
    <%--<link rel="javascript" type="text/javascript" href="../../../../resources/scripts/custom.js" />--%>
    <link rel="javascript" type="text/javascript" href="../../../resources/scripts/bootstrap.min.js" />
    <%--<link rel="javascript" type="text/javascript" href="../../../resources/scripts/jquery-3.2.1.min.js" />--%>
    <link rel="shortcut icon" href="../../../resources/images/ico/favicon.ico">
    <link rel="javascript" type="text/javascript" href="../../../resources/scripts/calc.js" />
    <%--<script type="text/javascript" src="../../../../resources/core/js/move-top.js.download"></script>--%>
    <%--<script type="text/javascript" src="../../../../resources/core/js/easing.js.download"></script>--%>
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<spring:message code="label_thanks_for_your_message" var="labelThanksForYourMessage"/>
<spring:message code="label_do_order_biogumat" var="labelDoOrderBiogumat"/>
<spring:message code="label_back_to_main" var="labelBackToAMain"/>

<body class="gratitude">

<div class="container">
    <br/>
    <br/>
    <h1 class="title" style="color: #f7fff3;">${labelThanksForYourMessage}
        <span style="color: lawngreen !important;">:)</span></h1>
    <br/>
    <div class="col-sm-offset-2 col-sm-10 pull-right">
        <button type="button" class="btn btn-success btn-md" onclick="document.location='/'">${labelDoOrderBiogumat}
        </button>
        <button type="button" class="btn btn-default btn-md" onclick="document.location='http://zhivorost.com.ua/'">
            ${labelBackToAMain}&nbsp;<img src="../../../resources/images/png/logo1.png"/></button>
    </div>
</div>

<jsp:include page="fragments/footer.jsp" />

</html>