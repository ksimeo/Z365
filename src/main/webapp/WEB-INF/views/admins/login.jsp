<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    <jsp:include page="../fragments/header.jsp"/>

    <spring:url var="authUrl" value="/static/j_spring_security_check" />

    <spring:message code="label_enter_to_admins" var="labelEnterToAdmins"/>
    <spring:message code="label_login" var="labelLogin"/>
    <spring:message code="label_password" var="labelPassword"/>
    <spring:message code="label_remember" var="labelRemember"/>
    <spring:message code="label_log_in" var="labelLogIn"/>

    <div class="container">
        <jsp:include page="fragments/lang.jsp"/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="well well-sm">
            <div style=" width: 500px !important;">
            <h2>${labelEnterToAdmins}</h2>
            <hr/>
            <form method="post" class="form-horizontal" action="${authUrl}">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="username">${labelLogin}:</label>
                    <div class="col-sm-10">
                    <input id="username" style="width: 200px;" name="j_username" type="email"
                           onchange="checkParams()"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="control-label col-sm-2">${labelPassword}:</label>
                    <div class="col-sm-10">
                    <input type="password" style="width: 200px;" id="password" name="j_password"
                           onchange="checkParams()"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox" style="text-align: center;">
                        <span><label for="remember_me">${labelRemember}<input id="remember_me"
                                name="_spring_security_remember_me" type="checkbox"/></label></span>
                        </div>
                    </div>
                </div>

                <hr/>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" name="commit" class="btn btn-md btn-success">${labelLogin}</button>
                    </div>
                </div>
            </form>
            </div>
            </div>
        </div>
        <jsp:include page="../custom/fragments/footer.jsp"/>

    <script type="text/javascript">
        document.getElementById('username_or_email').focus();
    </script>

    </div>