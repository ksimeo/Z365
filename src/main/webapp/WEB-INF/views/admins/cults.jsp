<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<div class="container">
    <spring:url value="/admins/cultures" var="userActionUrl" />

    <c:if test="${not empty message}">
        <div id="message" class="${message.type}">${message.message}</div>
        </c:if>

        <h3>Список культур для расчета количества продукта</h3>

        <c:if test="${not empty cults}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#ID</th>
                <th>Наименование культуры</th>
                <th>Коэффициент</th>
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
                                data-target="#myModal${cult.id}">Изменить</button>
                        <input type="button" value="Удалить" class="btn btn-danger btn-xs"
                               onclick="document.location='/admin/cultures/' + ${cult.id} + '/delete'">
                        <div class="modal fade" id="myModal${cult.id}" role="dialog">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Изменение культуры</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form:form class="form-horizontal" method="POST" modelAttribute="cultForm"
                                                   action="${userActionUrl}">

                                            <form:input path="id" type="hidden" id="id" value="${cult.id}" />

                                            <spring:bind path="name">
                                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                                    <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label">Наименование:&nbsp;</label>
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
                                                        <label class="col-sm-2 control-label">Коэффициент:&nbsp;</label>
                                                        <form:input path="coefficient" type="text"
                                                                        class="form-control"  id="coefficient"
                                                                        style='width: 200px;'
                                                                        placeholder="Коэффициент расхода"
                                                                        value="${cult.coefficient}"
                                                                        onchange="checkParams()"/>
                                                            <form:errors path="coefficient" class="control-label" />
                                                    </div>
                                                </div>
                                            </spring:bind>
                                            <br/>
                                            <div class="modal-footer">
                                                <button type="submit" id="submit" class="btn btn-success btn-md">
                                                    Добавить</button>
                                                <button type="button" class="btn btn-default btn-md"
                                                        data-dismiss="modal">Отмена</button>
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
        <br/>
        <br/>
        <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#myModal0">Добавить</button>
        <button class="btn btn-md" onclick="document.location='/admins/orders'">Вернуться на Главную</button>
        <!-- Modal -->
        <div class="modal fade" id="myModal0" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Добавление новой культуры</h4>
                    </div>
                    <div class="modal-body">
                        <form:form class="form-horizontal" method="POST" modelAttribute="cultForm" action="${userActionUrl}">

                        <form:input path="id" type="hidden" id="id" />

                        <spring:bind path="name">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label"> Наименование:&nbsp;</label>
                                        <form:input path="name" type="text" class="form-control"
                                                    id="name" style='width: 2em important;' onchange="checkParams()"/>
                                        <form:errors path="name" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="coefficient">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Коэффициент:&nbsp;</label>
                                        <form:input path="coefficient" type="text" class="form-control"
                                                    id="coefficient" style='width: 2em important;'
                                                    placeholder="Необходимое количество продукта" onchange="checkParams()"/>
                                        <form:errors path="coefficient" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                    <div class="modal-footer">
                        <button type="submit" id="submit" class="btn btn-success btn-md">Сохранить</button>
                        <button type="button" class="btn btn-default btn-md" data-dismiss="modal">Отмена</button>
                    </div>
                    </form:form>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <jsp:include page="fragments/footer.jsp" />
</html>