<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk-UA">

<jsp:include page="fragments/header.jsp" />

<%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

<%--<body class="main">--%>
<div class="container">
    <spring:url value="/admins/prods" var="userActionUrl" />

    <h3>Список предлагаемых продуктов</h3>

        <c:if test="${not empty message}">
            <div id="message" class="${message.type}">${message.message}</div>
        </c:if>

        <c:if test="${not empty products}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>№</th>
                <th>Название продукта</th>
                <th>Цена</th>
                <th>Денежные единицы</th>
                <th>Единицы измерения</th>
                <th>Актуальность</th>
                <th> &nbsp; </th>
                <th> &nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="prod" items="${products}">
                <tr>
                    <td>${prod.id}</td>
                        <%--<td><fmt:formatDate pattern="dd.MM.yy HH:mm" value="${order.createDate}"/></td>--%>
                        <%--<td><c:if test="${not empty order.customer.customerName}">${order.customer.customerName}</c:if></td>--%>
                        <%--<td><c:if test="${not empty order.customer.surname}">${order.customer.surname}</c:if></td>--%>
                        <%--<td>${order.customer.phoneNumber}</td>--%>
                        <%--<td><c:if test="${not empty order.customer.email}">${order.customer.email}</c:if></td>--%>
                    <td>${prod.name}</td>
                    <td>${prod.price}</td>
                    <td>${prod.currency.c}</td>
                    <td>${prod.units.name}</td>
                    <td>${prod.actual == true ? "Да" : "Нет"}</td>
                    <td>
                        <%--<div class="container">--%>
                        <div class="btn-group-xs">
                        <%--<input type="button" class="btn btn-warning btn-xs" value="Изменить"--%>
                               <%--onclick="document.location='/admins/prods/${prod.id}'">--%>
                            <button type="button" class="btn btn-warning btn-xs" data-toggle="modal"
                                    data-target="#myModal${prod.id}">Изменить</button>
                            <input type="button" class="btn btn-danger btn-xs" value="Удалить"
                               onclick="document.location='/admins/prods/${prod.id}/delete'">
                        </div>
                        <div class="modal fade" id="myModal${prod.id}" role="dialog">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Изменение продукта</h4>
                                    </div>
                                    <div class="modal-body">
                            <form:form class="form-horizontal" method="POST" modelAttribute="prodForm" action="${userActionUrl}">

                                <form:input path="id" type="hidden" id="id" value="${prod.id}" />

                                <spring:bind path="name">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <div class="col-sm-10">
                                            <label class="col-sm-2 control-label">Наименование продукта:&nbsp;</label>
                                            <form:input path="name" type="text" class="form-control"
                                                            id="name" style='width: 200px;' min="0" max="1000"
                                                            value="${prod.name}" onchange="checkParams()"/>
                                                <form:errors path="name" class="control-label" />
                                        </div>
                                    </div>
                                </spring:bind>

                                <spring:bind path="price">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <div class="col-sm-10">
                                            <label class="col-sm-2 control-label">Стоимость:&nbsp;</label>
                                                <form:input path="price" type="text" class="form-control"
                                                            id="price" style='width: 200px;' onkeyup="checkParams()"
                                                            value="${prod.price}"
                                                            placeholder="Необходимое количество продукта" min="0" max="1000" onchange="checkParams()"/>
                                                <form:errors path="price" class="control-label" />
                                        </div>
                                    </div>
                                </spring:bind>

                                <spring:bind path="currency">
                                    <div class="form-group" >
                                        <div class="col-sm-10">
                                            <label class="col-sm-2 control-label">Тип валюты:&nbsp;</label>
                                                <select id="currency" name="currency" size="1" onchange="checkParams()">
                                                    <option name="currency" value="NaN">-Выберите-тип-валюты-</option>
                                                    <c:forEach items="${currencies}" var="item">
                                                        <option name="currency" value="${item}"
                                                            ${item == prod.currency ? 'selected="selected"' : ''}>${item.name}</option>
                                                    </c:forEach>
                                                </select>
                                        </div>
                                    </div>
                                </spring:bind>

                                <spring:bind path="units">
                                    <div class="form-group" >
                                        <div class="col-sm-10">
                                            <label class="col-sm-2 control-label">Единицы измерения:&nbsp;</label>
                                                <select id="units" name="units" size="1">
                                                    <option name="units" value="NaN">-Выберите-единицу-измерения-</option>
                                                    <c:forEach items="${units}" var="item">
                                                        <option name="units" value="${item}"
                                                            ${item == prod.units ? 'selected="selected"' : ''}>${item.name}</option>
                                                    </c:forEach>
                                                </select>
                                        </div>
                                    </div>
                                </spring:bind>

                                <spring:bind path="actual">
                                    <div class="form-group" >
                                        <div class="col-sm-10">
                                            <label class="col-sm-2 control-label">Актуальность: &nbsp;
                                                <select id="actual" name="actual" size="1">
                                                    <option value="false">Нет</option>
                                                    <option value="true" ${prod.actual == 'true' ? 'selected="selected"' : ''}>
                                                        Да</option>
                                                </select>
                                            </label>
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
        <c:if test="${empty products}">
        <br/>
        <br/>
        <br/>
        <h4><i>Продукты еще не добавлены в систему.</i></h4>
        </c:if>
        <br/>
        <br/>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#myModal0">Добавить</button>
    <button class="btn btn-default btn-md" onclick="document.location='/admins/orders'">Вернуться на главную</button> &nbsp;
    <!-- Modal -->
    <div class="modal fade" id="myModal0" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Добавление нового продукта</h4>
                </div>
                <div class="modal-body">
                    <form:form class="form-horizontal" method="POST" modelAttribute="prodForm" action="${userActionUrl}">

                        <form:input path="id" type="hidden" id="id" />

                        <spring:bind path="name">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Наименование продукта:&nbsp;</label>
                                        <form:input path="name" type="text" class="form-control"
                                                    id="name" style='width: 200px;'
                                                    onchange="checkParams()"/>
                                        <form:errors path="name" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="price">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Стоимость:&nbsp;</label>
                                        <form:input path="price" type="text" class="form-control"
                                                    id="price" style='width: 200px;' onkeyup="checkParams()"
                                                    placeholder="Необходимое количество продукта" min="0" max="1000"
                                                    onchange="checkParams()"/>
                                        <form:errors path="price" class="control-label" />
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="currency">
                            <div class="form-group" >
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Тип валюты:&nbsp;</label>
                                        <select id="currency" name="currency" size="1" onchange="checkParams()">
                                            <option name="currency" value="NaN">-Выберите-тип-валюты-</option>
                                            <c:forEach items="${currencies}" var="item">
                                                <option name="currency" value="${item}">${item.name}</option>
                                            </c:forEach>
                                        </select>
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="units">
                            <div class="form-group" >
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Единицы измерения:&nbsp;</label>
                                        <select id="units" name="units" size="1">
                                            <option name="units" value="NaN">-Выберите-единицу-измерения-</option>
                                            <c:forEach items="${units}" var="item">
                                                <option name="units" value="${item}">${item.name}</option>
                                            </c:forEach>
                                        </select>
                                </div>
                            </div>
                        </spring:bind>

                        <spring:bind path="actual">
                            <div class="form-group" >
                                <div class="col-sm-10">
                                    <label class="col-sm-2 control-label">Актуальность:&nbsp;</label>
                                        <select id="actual" name="actual" size="1">
                                            <option value="false">Нет</option>
                                            <option value="true">Да</option>
                                        </select>
                                </div>
                            </div>
                        </spring:bind>
                        <div class="modal-footer">
                            <button type="submit" id="submit" class="btn btn-success btn-md">Добавить</button>
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