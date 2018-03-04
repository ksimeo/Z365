<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

    <script type="text/javascript">

    </script>

<body class="main" onload="checkParams3()">
<div class="container">

    <spring:url value="/admin/users" var="userActionUrl" />

    <spring:message code="label_login" var="labelLogin"/>
    <spring:message code="label_password" var="labelPassword"/>
    <spring:message code="label_confirm_new_password" var="labelConfirmPassword"/>
    <spring:message code="label_status" var="labelUserStatus"/>
    <spring:message code="label_select_status" var="labelSelectStatus"/>
    <spring:message code="label_save" var="labelSave"/>
    <spring:message code="label_cancel" var="labelCancel"/>
    <spring:message code="label_userpick" var="labelUserpick"/>

    <div class="container">
        <br/>
        <h3 class="title">Для здійснення замовлення, будь ласка, заповнить усі поля форми або тільки номер телефону:</h3>
        <br/>
        <br/>
    </div>

    <form:form customerName="form" class="form-horizontal" method="POST" modelAttribute="userForm" action="${userActionUrl}">
        <c:if test="${not empty message}">
            <div id="message" class="${message.type}">${message.message}</div>
        </c:if>

        <form:input path="id" type="hidden" id="id" />

        <br/>

        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                    <label class="col-sm-2 control-label">${labelLogin}: &nbsp;
                        <form:input path="username" type="text" class="form-control"
                                    id="username" style='width: 12em !important;' onkeyup="checkParams3()" />
                        <form:errors path="username" class="control-label" />
                    </label>
                </div>
            </div>
        </spring:bind>

        <br/>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                    <label class="col-sm-2 control-label">${labelPassword}: &nbsp;
                        <form:input path="password" type="password" class="form-control" id="pass1" customerName="pass1"
                        style='width: 12em !important;' onkeyup="passValid('form','pass1','pass12','submit');
                         isRavno('form','pass1','pass2','pass22', 'submit')" />
                        <form:errors path="password" class="control-label" placeholder = "Введите новый пароль"/>
                        <span id="pass11"><span id="pass12"></span></span><br/>
                    </label>
                </div>
            </div>
        </spring:bind>
        <br/>
        <div class="col-sm-10">
            <label class="col-sm-2 control-label">${labelConfirmPassword}:
                <input type="password" class="form-control" id="pass2" customerName="pass2" style='width: 12em !important;'
                       onkeyup="isRavno('form','pass1','pass2','pass22','submit')" />
                <span id="pass22"></span><br/>
                </label>
            </div>
        </div>

        <br/>

        <spring:bind path="authority">
            <div class="form-group" >
                <div class="col-sm-10">
                    <label class="col-sm-2 control-label">${labelUserStatus}:
                        <select id="authority" customerName="product" size="1" onchange="checkParams3()">
                            <option customerName="authority" id="role0" value="NaN">${labelSelectStatus}</option>
                            <c:forEach items="${roles}" var="item">
                                <option customerName="type" value="${item}">
                                        ${item.customerName}
                                </option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
            </div>
        </spring:bind>

        <br/>

        <label for="file">${labelUserpick}</label>
        <input id="file" type="file" name="file"/>

        <br/>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" id="submit" class="btn-success btn-lg pull-right">${labelSave}</button> &nbsp;
                <button type="button" onclick="document.location='../admin/users'" class="btn-success btn-lg pull-right">
                    ${labelCancel}</button>
            </div>
        </div>
    </form:form>

<jsp:include page="../custom/fragments/footer.jsp" />

</body>
</html>