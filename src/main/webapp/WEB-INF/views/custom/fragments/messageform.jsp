<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="us" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<spring:url value="/questions" var="userActionUrl" />

<!-- Modal -->
<div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Отправка сообщения</h4>
            </div>
            <div class="modal-body">
                <form:form class="form-horizontal" method="POST" modelAttribute="questForm" action="${userActionUrl}">

                    <form:input path="id" type="hidden" id="id" />

                    <spring:bind path="customerName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <div class="col-sm-10">
                                <label class="col-sm-2 control-label">Имя: &nbsp;
                                    <form:input path="customerName" type="text" class="form-control"
                                                id="customerName" style='width: 2em important;'
                                                placeholder="Как к вам обращаться?"
                                                onchange="checkParams()"/>
                                    <form:errors path="customerName" class="control-label" />
                                </label>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="phoneNumber">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <div class="col-sm-10">
                                <label class="col-sm-2 control-label">Телефон: &nbsp;
                                    <form:input path="phoneNumber" type="text" class="form-control"
                                                id="phoneNumber" style='width: 2em important;' onkeyup="checkParams()"
                                                placeholder="Необходимое количество продукта" min="0" max="1000"
                                                onchange="checkParams()"/>
                                    <form:errors path="phoneNumber" class="control-label" />
                                </label>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="eMail">
                        <div class="form-group" >
                            <div class="col-sm-10">
                                <label class="col-sm-2 control-label">E-mail: &nbsp;
                                    <form:input path="eMail" type="text" class="form-control"
                                                id="eMail" style='width: 2em important;' onkeyup="checkParams()"
                                                placeholder="Ваш электронный адрес" min="0" max="1000"
                                                onchange="checkParams()"/>
                                    <form:errors path="eMail" class="control-label" />
                                </label>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="messageBody">
                        <div class="form-group" >
                            <div class="col-sm-10">
                                <label class="col-sm-2 control-label">Текст сообщения: &nbsp;
                                    <form:textarea path="messageBody" type="textarea" class="form-control" cols="50" rows="6"
                                                   id="messageBody" maxlength="1000" style="width: 200px; height: 70px;"
                                                   placeholder="Введите текст вашего сообщения" onchange="checkParams()"/>
                                    <form:errors path="messageBody" class="control-label" />
                                </label>
                            </div>
                        </div>
                    </spring:bind>

                    <div class="modal-footer">
                        <button type="submit" id="submit" class="btn btn-success btn-md">Отправить</button>
                        <button type="button" class="btn btn-default btn-md" data-dismiss="modal">Отмена</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>