<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--<div>--%>
    <%--<h2>Sign in to Spitter</h2>--%>

    <%--<p>--%>
        <%--If you've been using Spitter from your phone,--%>
        <%--then that's amazing...we don't support IM yet.--%>
    <%--</p>--%>

    <jsp:include page="../fragments/header.jsp"/>

    <spring:url var="authUrl" value="/static/j_spring_security_check" /><!--<co id="co_securityCheckPath"/>-->

    <div class="container">
        <jsp:include page="../fragments/lang.jsp"/>
        <br/>
        <br/>
        <div class="well">
            <h2>Для входа в систему администрирования &nbsp;<img src="../../../resources/images/png/logo_mini.png"><br/>
                введите ваши логин и пароль</h2>
            <hr/>
            <form method="post" class="form-horizontal" action="${authUrl}">

            <%--<spring:bind path="login">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}" >--%>
                <div class="col-sm-10">
                    <label class="col-sm-2 control-label"  for="username_or_email">Логин(e-mail):</label>
                    <input id="username_or_email"
                                name="j_username"
                                type="text" class="form-control"
                                style="width: 200px;" onchange="checkParams()"/>
                    <%--<errors path="login" class="control-label" />--%>
                </div>
            <%--</div>--%>
            <%--</spring:bind>--%>

            <%--<spring:bind path="password">--%>
                <%--<div class="form-group ${status.error ? 'has-error' : ''}" >--%>
                    <div class="col-sm-10">
                        <label class="col-sm-2 control-label" for="password">Пароль:</label>
                        <input type="password" class="form-control"
                                        id="password" style="width: 200px;"
                                    name="j_password" onchange="checkParams()"/>
                        <%--<form:errors path="password" class="control-label" />--%>
                    </div>
                <%--</div>--%>
            <%--</spring:bind>--%>

            <div class="col-sm-10">
                <%--<span>--%>
                    <label for="remember_me" class="col-sm-2 control-label inline pull-left">Remember me</label>
                    <input id="remember_me" class="pull-left" name="_spring_security_remember_me" type="checkbox"/>
                <%--</span>--%>
            </div>
                <!--<co id="co_rememberMe"/>-->
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" name="commit" class="btn btn-lg btn-success">Войти</button>
            </div>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
    </form>

    <jsp:include page="../fragments/footer.jsp"/>

    <script type="text/javascript">
        document.getElementById('username_or_email').focus();
    </script>
        </div>
</div>