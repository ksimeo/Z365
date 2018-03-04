<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<spring:message code="label_cultures_list" var="labelCulturesList"/>
<spring:message code="label_id" var="labelId"/>
<spring:message code="label_name_of_culture" var="labelNameOfCulture"/>
<spring:message code="label_coefficient" var="labelCoefficient"/>
<spring:message code="label_edit" var="labelEdit"/>
<spring:message code="label_changing_culture" var="labelChangingCulture"/>
<spring:message code="label_title" var="labelTitle"/>
<spring:message code="label_save" var="labelSave"/>
<spring:message code="label_cancel" var="labelCancel"/>
<spring:message code="label_flow_coefficient" var="labelFlowCoefficient"/>
<spring:message code="label_back_to_main" var="labelBackToMain"/>
<spring:message code="label_add" var="labelAdd"/>
<spring:message code="label_adding_new_culture" var="labelAddingNewCulture"/>
<spring:message code="label_required_quantity_of_product" var="labelRequiredQuantityofProduct"/>

<div class="container">
    <spring:url value="/admins/cultures" var="userActionUrl" />

        <c:if test="${not empty msg}">
        <div class="alert alert-${msg.type} alert-dismissible" authority="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>${msg.message}</strong>
        </div>
        </c:if>

        <h3>${labelCulturesList}</h3>

        <c:if test="${not empty cults}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>${labelId}</th>
                <th>${labelNameOfCulture}</th>
                <th>${labelCoefficient}</th>
                <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="cult" items="${cults}">
                <tr>
                    <td>${cult.id}</td>
                    <td>${cult.name}</td>
                    <td>${cult.coefficient}</td>
                    <td><button type="button" class="btn btn-warning btn-xs" data-toggle="modal"
                                data-target="#myModal${cult.id}">${labeEdit}</button>
                        <input type="button" value="Удалить" class="btn btn-danger btn-xs"
                               onclick="document.location='/admin/cultures/' + ${cult.id} + '/delete'">
                        <div class="modal fade" id="myModal${cult.id}" authority="dialog">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">${labelChangingCulture}</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form:form class="form-horizontal" method="POST" modelAttribute="cultForm"
                                                   action="${userActionUrl}">

                                            <form:input path="id" type="hidden" id="id" value="${cult.id}" />

                                            <spring:bind path="name">
                                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                                    <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label">${labelTitle}:&nbsp;&nbsp;
                                                        </label>
                                                            <form:input path="name" type="text" class="form-control"
                                                                        id="name" style='width: 200px;'
                                                                        value="${cult.name}"
                                                                        onchange="checkParams()"/>
                                                            <form:errors path="name" class="control-label" />
                                                    </div>
                                                </div>
                                            </spring:bind>

                                            <spring:bind path="coefficient">
                                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                                    <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label">${labelCoefficient}:&nbsp;&nbsp;
                                                        </label>
                                                        <form:input path="coefficient" type="text"
                                                                        class="form-control"  id="coefficient"
                                                                        style='width: 200px;'
                                                                        placeholder="${labelFlowCoefficient}"
                                                                        value="${cult.coefficient}"
                                                                        onchange="checkParams()"/>
                                                            <form:errors path="coefficient" class="control-label" />
                                                    </div>
                                                </div>
                                            </spring:bind>
                                            <br/>
                                            <div class="modal-footer">
                                                <button type="submit" id="submit" class="btn btn-success btn-md">
                                                    ${labelSave}</button>
                                                <button type="button" class="btn btn-default btn-md"
                                                        data-dismiss="modal">${labelCancel}</button>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
        <c:if test="${empty cults}">
        <br/>
        <br/>
        <br/>
        <h4><i>В списке пока ничего нет.</i></h4>
        </c:if>
        <br/>
        <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#myModal0">${labelAdd}</button>
        <button class="btn btn-md" onclick="document.location='/admins/orders'">${labelBackToMain}</button>
        <!-- Modal -->
        <div class="modal fade" id="myModal0" authority="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">${labelAddingNewCulture}</h4>
                    </div>
                    <div class="modal-body">
                        <form:form class="form-horizontal" method="POST" modelAttribute="cultForm" action="${userActionUrl}">

                        <form:input path="id" type="hidden" id="id" value="0" />

                        <spring:bind path="name">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">${labelName}:&nbsp;&nbsp;</label>
                                        <form:input path="name" type="text" class="form-control"
                                                    id="name" style='width: 200px;' onchange="checkParams()"/>
                                        <form:errors path="name" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="coefficient">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">${labelCoefficient}:&nbsp;&nbsp;</label>
                                        <form:input path="coefficient" type="text" class="form-control"
                                                    id="coefficient" style='width: 200px;'
                                                    placeholder="${labelRequiredQuantityofProduct}"
                                                    onchange="checkParams()"/>
                                        <form:errors path="coefficient" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                    <div class="modal-footer">
                        <button type="submit" id="submit" class="btn btn-success btn-md">${labelSave}</button>
                        <button type="button" class="btn btn-default btn-md" data-dismiss="modal">${labelCancel}</button>
                    </div>
                    </form:form>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <jsp:include page="fragments/footer.jsp" />
</html>