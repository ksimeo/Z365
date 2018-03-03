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
        <jsp:include page="fragments/lang.jsp"/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="well">
            <h2>Вход в систему администрирования &nbsp;<img src="../../../resources/images/png/logo_mini.png"><br/></h2>
                <%--введите ваши логин и пароль</h2>--%>
            <hr/>
            <form method="post" class="form-horizontal" action="${authUrl}">
                <div class="form-group">
            <%--<spring:bind path="username">--%>
            <%--<div class="form-group ${status.error ? 'has-error' : ''}" >--%>
                    <label for="username_or_email">Логин:
                    <input id="username_or_email"
                           style="width: 200px;"
                                name="j_username"
                                type="email"
                           <%--class="form-control"--%>
                                placeholder="Ваш е-mail"
                                 onchange="checkParams()"/>
                    </label>
                    <%--<errors path="username" class="control-label" />--%>
                </div>
            <%--</div>--%>
            <%--</spring:bind>--%>

            <%--<spring:bind path="password">--%>
                <%--<div class="form-group ${status.error ? 'has-error' : ''}" >--%>
                    <div class="form-group">
                        <label for="password">Пароль:
                        <input type="password"
                               style="width: 200px;"
                               <%--class="form-control"--%>
                                        id="password"
                                        placeholder="Ваш пароль"
                                        name="j_password" onchange="checkParams()"/>
                        </label>
                        <%--<form:errors path="password" class="control-label" />--%>
                    </div>
                <%--</div>--%>
            <%--</spring:bind>--%>

            <div class="checkbox" style="text-align: center;">
                <span>
                    <label for="remember_me">
                        Запомнить<input id="remember_me" name="_spring_security_remember_me"  class="pull-left"
                                        type="checkbox"/></label>
                    </span>
            </div>

            <hr/>
                <!--<co id="co_rememberMe"/>-->
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <button type="submit" name="commit" class="btn btn-md btn-success">Войти</button>
            <%--</div>--%>
        </div>
    </form>

    <jsp:include page="../custom/fragments/footer.jsp"/>

    <script type="text/javascript">
        document.getElementById('username_or_email').focus();
    </script>
        </div>
</div>