<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="false"%>

<spring:message code="label_tagline" var="labelTagline"/>

<h3 class="logo pull-left">
        <i style="color: greenyellow;">
            <a class="pull-left" href="phone"><img src="../../../resources/images/png/zhivorost365_logo.png"></a>
    &nbsp; - ${labelTagline}!</i>
</h3>