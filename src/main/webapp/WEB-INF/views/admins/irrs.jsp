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
    <spring:url value="/admins/irrs" var="userActionUrl" />

        <c:if test="${not empty msg}">
        <div class="alert alert-${msg.type} alert-dismissible" authority="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>${msg.message}</strong>
        </div>
        </c:if>

        <h3>Способы орошения</h3>

        <c:if test="${not empty irrs}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#ID</th>
                <th>Наименование</th>
                <th>Коэффициент</th>
                <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="irr" items="${irrs}">
                <tr>
                    <td>${irr.id}</td>
                    <td>${irr.name}</td>
                    <td>${irr.coefficient}</td>
                    <td><button type="button" class="btn btn-warning btn-xs" data-toggle="modal"
                                data-target="#myModal${irr.id}">Изменить</button>
                        <input type="button" value="Удалить" class="btn btn-danger btn-xs"
                               onclick="document.location='/admins/irrs/' + ${irr.id} + '/delete'">
                        <div class="modal fade" id="myModal${irr.id}" authority="dialog">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Изменение способа орошение</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form:form class="form-horizontal" method="POST" modelAttribute="irrForm" action="${userActionUrl}">

                                            <form:input path="id" type="hidden" id="id" value="${irr.id}" />

                                            <spring:bind path="name">
                                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                                    <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label">Название:&nbsp;</label>
                                                        <form:input path="name" type="text" class="form-control" id="name"
                                                                    style='width: 200px;' onchange="checkParams()" value="${irr.name}" />
                                                        <form:errors path="name" class="control-label" />
                                                    </div>
                                                </div>
                                            </spring:bind>

                                            <spring:bind path="coefficient">
                                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                                    <div class="col-sm-10">
                                                        <label class="col-sm-2 control-label">Коэффициент:&nbsp;</label>
                                                        <form:input path="coefficient" type="text" class="form-control" id="coefficient"
                                                                    style='width: 200px;' onkeyup="checkParams()" value="${irr.coefficient}"
                                                                    placeholder="Коэффициент использования продукта" onchange="checkParams()" />
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
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
        <c:if test="${empty irrs}">
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
        <div class="modal fade" id="myModal0" authority="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Добавление нового типа орошения</h4>
                    </div>
                    <div class="modal-body">
                        <form:form class="form-horizontal" method="POST" modelAttribute="irrForm" action="${userActionUrl}">

                            <form:input path="id" type="hidden" id="id" value="0" />

                            <spring:bind path="name">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <div class="col-sm-10">
                                        <label class="col-sm-2 control-label">Название:&nbsp;</label>
                                        <form:input path="name" type="text" class="form-control"
                                                    id="name" style='width: 200px;' onchange="checkParams()"/>
                                        <form:errors path="name" class="control-label" />
                                    </div>
                                </div>
                            </spring:bind>

                            <spring:bind path="coefficient">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <div class="col-sm-10">
                                        <label class="col-sm-2 control-label">Коэффициент:&nbsp;</label>
                                        <form:input path="coefficient" type="text" class="form-control"
                                                    id="coefficient" style='width: 200px;'
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

            <jsp:include page="fragments/footer.jsp" />
</html>