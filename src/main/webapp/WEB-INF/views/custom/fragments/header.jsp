<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
    <title> Администрирование системы - Живорост365</title>
    <spring:url value="/resources/styles/standard.css" var="coreCss" />
    <spring:url value="/resources/styles/bootstrap.min.css" var="bootstrapCss" />
    <link href="../../../../resources/styles/standard.css" rel="stylesheet" >
    <link href="../../../../resources/styles/bootstrap.min.css" rel="stylesheet" >
    <link rel="shortcut icon" href="../../../../resources/images/ico/favicon.ico">
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<spring:url value="/admin/" var="urlHome" />
<spring:url value="/admin/calc" var="urlCalculation" />
<spring:url value="/admin/prods" var="urlProducts" />
<spring:url value="/admin/users" var="urlUsers" />
<spring:url value="/admin/users/1/pswrd" var="urlChangePassword" />
<spring:url value="/admin/logout" var="urlLogout" />
<spring:url value="username" var="userName" />