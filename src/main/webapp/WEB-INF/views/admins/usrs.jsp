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
    <spring:url value="/admins/users" var="userActionUrl" />

    <c:if test="${not empty message}">
        <div id="message" class="${message.type}">${message.message}</div>
    </c:if>

    <h3>Список пользователей системы</h3>

    <c:if test="${not empty users}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#ID</th>
                <th>Логин</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Статус</th>
                <th>Зарегистрирован</th>
                <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                        <%--<td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>--%>
                        <%--<td><c:if test="${not empty order.customer.name}">${order.customer.customerName}</c:if></td>--%>
                        <%--<td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>--%>
                        <%--<td>${order.customer.phoneNumber}</td>--%>
                        <%--<td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>--%>
                    <td>${user.username}</td>
                    <td>${user.name}</td>
                    <td>${user.surname}</td>
                    <td>${user.authority.name}</td>
                    <td>${user.regDate}</td>
                    <td>
                        <!-- Trigger the modal with a button -->
                        <button type="button" class="btn btn-warning btn-xs" data-toggle="modal"
                                data-target="#myModal${user.id}">Изменить</button>
                        <button class="btn btn-danger btn-xs" onclick="document.location='/admins/users/'+ ${user.id} +
                                '/delete'">Удалить</button> &nbsp;
                        <div class="modal fade" id="myModal${user.id}" authority="dialog">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Редактирование пользователя</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form:form class="form-horizontal" method="POST" modelAttribute="usrForm"
                                                   action="${userActionUrl}">

                                            <form:input path="id" type="hidden" id="id"/>

                                            <spring:bind path="username">
                                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                                <div class="col-sm-10">
                                                    <label class="col-sm-2 control-label">Логин: &nbsp;</label>
                                                    <form:input path="username" type="text" class="form-control"
                                                                id="username" style='width: 200px;' min="0"
                                                                max="1000" onchange="checkParams()"
                                                                value="${user.username}"
                                                                disabled="true"/>
                                                    <form:errors path="username" class="control-label" />
                                                </div>
                                            </div>
                                            </spring:bind>

                                            <spring:bind path="name">
                                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                                <div class="col-sm-10">
                                                    <label class="col-sm-2 control-label">Имя:&nbsp;</label>
                                                    <form:input path="name" type="text" class="form-control"
                                                                id="name" style='width: 200px;'
                                                                onkeyup="checkParams()"
                                                                placeholder="Имя" min="0"
                                                                max="1000" onchange="checkParams()"
                                                                value="${user.name}"/>
                                                    <form:errors path="name" class="control-label" />
                                                </div>
                                            </div>
                                            </spring:bind>

                                            <spring:bind path="surname">
                                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                                <div class="col-sm-10">
                                                    <label class="col-sm-2 control-label">Фамилия:&nbsp;</label>
                                                    <form:input path="surname" type="text" class="form-control"
                                                                id="surname" style='width: 200px;'
                                                                onkeyup="checkParams()"
                                                                placeholder="Фамилия" min="0"
                                                                max="1000" onchange="checkParams()"
                                                                value="${user.surname}"/>
                                                    <form:errors path="surname" class="control-label" />
                                                </div>
                                            </div>
                                            </spring:bind>

                                        <%--<div class="col-sm-10">--%>
                                            <%--<label class="col-sm-2 control-label">Подтверждение пароля:&nbsp;</label>--%>
                                            <%--<input type="password" class="form-control" id="pass2" name="pass2"--%>
                                                   <%--style='width: 12em !important;'--%>
                                                   <%--onkeyup="isRavno('form','pass1','pass2','pass22','submit')"/>--%>
                                            <%--<span id="pass22"></span><br/>--%>
                                        <%--</div>--%>

                                            <spring:bind path="authority">
                                            <div class="form-group" >
                                                <div class="col-sm-10">
                                                    <label class="col-sm-2 control-label">Статус пользователя:&nbsp;</label>
                                                    <select id="authority" name="product" size="1" onchange="checkParams3()">
                                                        <option name="authority" id="role0" value="NaN">-Виберіть-статус-</option>
                                                        <c:forEach items="${roles}" var="item">
                                                            <option name="type" value="${item}"
                                                                ${item == user.authority ? 'selected' : ''}>${item.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                            </spring:bind>
                            <div class="modal-footer">
                                <button type="submit" id="submit" class="btn btn-success btn-md">Сохранить</button>
                                <button type="button" class="btn btn-default btn-md" data-dismiss="modal">Отмена</button>
                            </div>
                        </form:form>
                    </td>
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
    <div class="col-sm-offset-2 col-sm-10">
        <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#myModal0">Добавить</button>
        <button type="button" class="btn btn-default btn-md" onclick="document.location='/admins/orders'">
            Вернуться на Главную</button>
    </div>
    &nbsp;
    <!-- Modal -->
    <div class="modal fade" id="myModal0" authority="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Добавление нового пользователя</h4>
                </div>
                <div class="modal-body">
                    <form:form class="form-horizontal" method="POST" modelAttribute="usrForm"
                               action="${userActionUrl}">

                    <form:input path="id" type="hidden" id="id" />

                        <spring:bind path="username">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Логин:&nbsp;</label>
                                    <form:input path="username" type="text" class="form-control" id="username"
                                                style='width: 200px;' min="0" max="1000"
                                                placeholder="Ваш логин"
                                                onchange="checkParams()"/>
                                    <form:errors path="username" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="name">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Имя:&nbsp;</label>
                                    <form:input path="name" type="text" class="form-control"
                                                id="name" style='width: 200px;'
                                                onkeyup="checkParams()"
                                                placeholder="Ваше имя" min="0"
                                                max="1000" onchange="checkParams()" />
                                    <form:errors path="name" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="surname">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Фамилия:&nbsp;</label>
                                    <form:input path="surname" type="text" class="form-control"
                                                id="surname" style='width: 200px;'
                                                onkeyup="checkParams()"
                                                placeholder="Ваша фамилия" min="0"
                                                max="1000" onchange="checkParams()" />
                                    <form:errors path="surname" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="password">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Пароль:&nbsp;</label>
                                    <form:input path="password" type="text" class="form-control" id="password"
                                                style='width: 200px;' onkeyup="checkParams()"
                                                placeholder="Ваш пароль" min="0" max="1000"
                                                onchange="checkParams()"/>
                                    <form:errors path="password" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <div class="col-sm-10">
                            <label class="col-sm-2 control-label">Подтверждение пароля: &nbsp;</label>
                            <input type="password" class="form-control" id="pass2" name="pass2"
                                   style='width: 200px;' placeholder="Еще раз пароль"
                                   onkeyup="isRavno('form','pass1','pass2','pass22','submit')" />
                            <span id="pass22"></span><br/>
                        </div>

                <spring:bind path="authority">
                    <div class="form-group" >
                        <div class="col-sm-10">
                            <label class="col-sm-2 control-label">Статус пользователя:&nbsp;</label>
                            <select id="authority" name="product" size="1" onchange="checkParams3()">
                                <option name="authority" id="role0" value="NaN">-Виберіть-статус-</option>
                                <c:forEach items="${roles}" var="item">
                                    <option name="type" value="${item}">
                                            ${item.name}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </spring:bind>
                <br/>
                <div class="modal-footer">
                    <button type="submit" id="submit" class="btn btn-success btn-md">Сохранить</button>
                    <button type="button" class="btn btn-default btn-md" data-dismiss="modal">Отмена</button>
                </div>
                </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="fragments/footer.jsp" />
</html>