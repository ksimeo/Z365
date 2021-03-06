<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<spring:message code="label_for_changing_password" var="labelForChangingPassword"/>
<spring:message code="label_old_password" var="labelOldPassword"/>
<spring:message code="label_new_password" var="labelNewPassword"/>
<spring:message code="label_repeat_new_password" var="labelRepeatNewPassword"/>
<spring:message code="label_save" var="labelSave"/>
<spring:message code="label_cancel" var="labelCancel"/>

<body class="main" onload="checkParams2()">
<div class="container">
    <spring:url value="/admin/users?chpswrd" var="userActionUrl" />

    <div class="container">
        <br/>
        <h3 class="title">${labelForChangingPassword}:</h3>
        <br/>
        <br/>
    </div>

    <form:form customerName="form" class="form-horizontal" method="POST" modelAttribute="passwForm" action="${userActionUrl}">

    <form:input path="userId" type="hidden" id="id" />

    <br/>
    <spring:bind path="oldPassword">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">${labelOldPassword}: &nbsp;
                    <form:input path="oldPassword" type="password" class="form-control"
                                id="oldPassword" style='width: 12em !important;' />
                    <form:errors path="oldPassword" class="control-label" />
                </label>
            </div>
        </div>
    </spring:bind>
    <hr/>
    <spring:bind path="newPassword">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <div class="col-sm-10">
                <label class="col-sm-2 control-label">${labelNewPassword}: &nbsp;
                    <form:input path="newPassword" type="password" class="form-control" id="newPassword" customerName="newPassword"
                                style='width: 12em !important;' onkeyup="passValid2('form','pass1','pass12','submit');
                         isRavno('form','pass1','pass2','pass22', 'submit')" />
                    <form:errors path="newPassword" class="control-label"/>
                    <span id="pass11"><span id="pass12"></span></span><br/>
                </label>
            </div>
        </div>
        <br/>
    </spring:bind>
    <br/>
    <div class="col-sm-10">
        <label class="col-sm-2 control-label">${labelRepeatNewPassword}: &nbsp;
            <input type="password" class="form-control" id="pass2" customerName="pass2" style='width: 12em !important;'
                   onkeyup="isRavno('form','pass1','pass2','pass22','submit')" />
            <span id="pass22"></span><br/>
        </label>
    </div>
</div>
<br/>
<br/>
<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" id="submit" class="btn-success btn-lg btn-primary pull-right">${labelSave}</button> &nbsp;
        <button type="button" onclick="document.location='/admin'" class="btn-success btn-lg btn-primary pull-right">
            ${labelCancel}</button>
    </div>
</div>
<div>
    <output id="price"></output>
</div>
    <%--TODO Предварительный подсчёт цены (on-line) --%>
</form:form>

<jsp:include page="../custom/fragments/footer.jsp" />

</body>
</html>