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
    <spring:url value="/users" var="userActionUrl" />

        <c:if test="${not empty message}">
        <div id="message" class="${message.type}">${message.message}</div>
        </c:if>

    <h3>Список пользователей системы</h3>

        <c:if test="${not empty users}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>№</th>
                <th>Логин</th>
                <%--<th>Пароль</th>--%>
                <th>Роль</th>
                <th>Зарегистрирован</th>
                <th> &nbsp; </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                        <%--<td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>--%>
                        <%--<td><c:if test="${not empty order.customer.customerName}">${order.customer.customerName}</c:if></td>--%>
                        <%--<td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>--%>
                        <%--<td>${order.customer.phoneNumber}</td>--%>
                        <%--<td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>--%>
                    <td>${user.login}</td>
                    <%--<td>${user.password}</td>--%>
                    <td>${user.role.name}</td>
                    <td>${user.regDate}</td>
                    <td><!-- Trigger the modal with a button -->
                        <button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal1">
                            Изменить</button>
                        <button class="btn btn-danger btn-xs" onclick="document.location='/admins/orders'">
                            Удалить</button> &nbsp;
                    <div class="modal fade" id="myModal1" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Редактирование пользователя</h4>
                                </div>
                                <div class="modal-body">
                                    <form:form class="form-horizontal" method="POST" modelAttribute="usrForm" action="${userActionUrl}">

                                    <form:input path="id" type="hidden" id="id" />

                                    <spring:bind path="login">
                                        <div class="form-group ${status.error ? 'has-error' : ''}">
                                            <div class="col-sm-10">
                                                <label class="col-sm-2 control-label">Логин: &nbsp;
                                                    <form:input path="login" type="text" class="form-control"
                                                                id="login" style='width: 2em important;' min="0" max="1000" onchange="checkParams()"/>
                                                    <form:errors path="login" class="control-label" />
                                                </label>
                                            </div>
                                        </div>
                                    </spring:bind>

                                    <spring:bind path="password">
                                        <div class="form-group ${status.error ? 'has-error' : ''}">
                                            <div class="col-sm-10">
                                                <label class="col-sm-2 control-label">Пароль: &nbsp;
                                                    <form:input path="password" type="text" class="form-control"
                                                                id="password" style='width: 2em important;' onkeyup="checkParams()"
                                                                placeholder="Необходимое количество продукта" min="0" max="1000" onchange="checkParams()"/>
                                                    <form:errors path="password" class="control-label" />
                                                </label>
                                            </div>
                                        </div>
                                    </spring:bind>

                                    <div class="col-sm-10">
                                        <label class="col-sm-2 control-label">Подтверждение пароля:
                                            <input type="password" class="form-control" id="pass2" customerName="pass2" style='width: 12em !important;'
                                                   onkeyup="isRavno('form','pass1','pass2','pass22','submit')" />
                                            <span id="pass22"></span><br/>
                                        </label>
                                    </div>
                                </div>

                                <spring:bind path="role">
                                <div class="form-group" >
                                    <div class="col-sm-10">
                                        <label class="col-sm-2 control-label">Статус пользователя:
                                            <select id="role" name="product" size="1" onchange="checkParams3()">
                                                <option name="role" id="role0" value="NaN">-Виберіть-статус-</option>
                                                <c:forEach items="${roles}" var="item">
                                                    <option name="type" value="${item}">
                                                            ${item.customerName}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                                </spring:bind>
                                <div class="modal-footer">
                                    <button type="submit" id="submit" class="btn btn-success btn-md">Добавить</button>
                                    <button type="button" class="btn btn-default btn-md" data-dismiss="modal">Отмена</button>
                                </div>
                                </form:form>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
        <c:if test="${empty users}">
        <br/>
        <br/>
        <br/>
        <h4><i>На данный момент пользователем системы являетесь только вы.</i></h4>
        </c:if>
        <br/>
        <br/>
        <%--<button class="btn btn-success btn-md" onclick="document.location = '/admins/users?form'">--%>
            <%--Добавить пользователя</button>--%>
        <%--<button class="btn btn-default btn-md" onclick="document.location='/admins/orders'">Назад, на главную</button>--%>

        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#myModal1">
            Добавить пользователя</button>
        <button class="btn btn-default btn-md" onclick="document.location='/admins/orders'">Вернуться на главную
        </button> &nbsp;
        <!-- Modal -->
        <div class="modal fade" id="myModal1" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Добавление нового пользователя</h4>
                    </div>
                    <div class="modal-body">
                        <form:form class="form-horizontal" method="POST" modelAttribute="usrForm" action="${userActionUrl}">

                            <form:input path="id" type="hidden" id="id" />

                            <spring:bind path="login">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <div class="col-sm-10">
                                        <label class="col-sm-2 control-label">Логин: &nbsp;
                                            <form:input path="login" type="text" class="form-control"
                                                        id="login" style='width: 2em important;' min="0" max="1000" onchange="checkParams()"/>
                                            <form:errors path="login" class="control-label" />
                                        </label>
                                    </div>
                                </div>
                            </spring:bind>

                            <spring:bind path="password">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <div class="col-sm-10">
                                        <label class="col-sm-2 control-label">Пароль: &nbsp;
                                            <form:input path="password" type="text" class="form-control"
                                                        id="password" style='width: 2em important;' onkeyup="checkParams()"
                                                        placeholder="Необходимое количество продукта" min="0" max="1000" onchange="checkParams()"/>
                                            <form:errors path="password" class="control-label" />
                                        </label>
                                    </div>
                                </div>
                            </spring:bind>

                            <div class="col-sm-10">
                                <label class="col-sm-2 control-label">Подтверждение пароля:
                                    <input type="password" class="form-control" id="pass2" customerName="pass2" style='width: 12em !important;'
                                           onkeyup="isRavno('form','pass1','pass2','pass22','submit')" />
                                    <span id="pass22"></span><br/>
                                </label>
                            </div>
                            </div>

                    <spring:bind path="role">
                        <div class="form-group" >
                            <div class="col-sm-10">
                                <label class="col-sm-2 control-label">Статус пользователя:
                                    <select id="role" name="product" size="1" onchange="checkParams3()">
                                        <option name="role" id="role0" value="NaN">-Виберіть-статус-</option>
                                        <c:forEach items="${roles}" var="item">
                                            <option name="type" value="${item}">
                                                    ${item.customerName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </label>
                            </div>
                        </div>
                    </spring:bind>
                    <div class="modal-footer">
                        <button type="submit" id="submit" class="btn btn-success btn-md pull-left">Добавить пользователя
                        </button>
                        <button type="button" class="btn btn-default btn-md" data-dismiss="modal">Отмена</button>
                    </div>
                        </form:form>
                    </div>
                </div>
            </div>


        <jsp:include page="fragments/footer.jsp" />
        </div>
</body>
</html>