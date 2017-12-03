<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="../fragments/header.jsp"/>

<div class="container">
    <jsp:include page="../fragments/logo.jsp"/>
    <br/>
    <br/>
    <br/>
    <div class="well">
        <h2>Вы у нас впервые?!</h2>
        <h3>Пожалуйста, заполните по возможности поля нашей <br/>
            формы, чтобы мы могли знать о Вас больше.</h3>

        <form:form type="userform" class="form-horizontal" method="POST" modelAttribute="usrForm" action="userform" >

            <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}" >
                <div class="col-sm-10">
                <label class="col-sm-2 control-label">Имя:</label>
                    <form:input path="name" size="10" id="user_name" class="form-control"
                                style="width: 200px;" placeholder="Введите ваше имя"/>
                    <form:errors path="name" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="surname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                <label for="user_surname" class="col-sm-2 control-label">Фамилия:</label>
                    <sf:input path="surname" size="10" id="user_surname" class="form-control"
                              style="width: 200px;" placeholder="Введите вашу фамилию"/>
                    <form:errors path="surname" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                <label for="user_email" class="col-sm-2 control-label">Электронная почта:</label>
                    <sf:input path="email" size="10" class="form-control" id="user_email" style="width: 200px;"
                            placeholder="Введите ваш электронный адрес"/>
                    <form:errors path="email" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="region">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                <label for="region" class="col-sm-2 control-label">Ваш регион:</label>
                    <form:select path="region" multiple="false" size="1" style="width: 200px;" class="form-control">
                        <form:option value="NONE" label="-Выберите-ваш-регион-" />
                        <form:option value="Крим">АР Крым</form:option>
                        <form:option value="Віннічина">Винницкая обл.</form:option>
                        <form:option value="Волинщина">Волынская обл.</form:option>
                        <form:option value="Дніпропетровщина">Днепропетровская обл.</form:option>
                        <form:option value="Донеччина">Донецкая обл.</form:option>
                        <form:option value="Житомирщина">Житомирская обл.</form:option>
                        <form:option value="Закарпаття">Закарпатская обл.</form:option>
                        <form:option value="Запоріжчина">Запорожская обл.</form:option>
                        <form:option value="Івано-Франківщина">Ивано-Франковская обл.</form:option>
                        <form:option value="Київщина">Киевская обл.</form:option>
                        <form:option value="Кіровоградчина">Кировоградская обл.</form:option>
                        <form:option value="Луганщина">Луганская обл.</form:option>
                        <form:option value="Львівщина">Львовская обл.</form:option>
                        <form:option value="Миколаївщина">Николаевская обл.</form:option>
                        <form:option value="Одесчина">Одесская обл.</form:option>
                        <form:option value="Полтавщина">Полтавская обл.</form:option>
                        <form:option value="Рівненщина">Ровненская обл.</form:option>
                        <form:option value="Сумщина">Сумская обл.</form:option>
                        <form:option value="Тернопільщина">Тернопольская обл.</form:option>
                        <form:option value="Харківщина">Харьковская обл.</form:option>
                        <form:option value="Херсонщина">Херсонская обл.</form:option>
                        <form:option value="Хмельниччина">Хмельницкая обл.</form:option>
                        <form:option value="Черкасчина">Черкасская обл.</form:option>
                        <form:option value="Чернівеччина">Черновецкая обл.</form:option>
                        <form:option value="Чернігівщина">Черниновская обл.</form:option>
                        <%--<form:option value=" " selected="true"></form:option>--%>
                    </form:select>
                </div>
            </div>
        </spring:bind>
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" id="submit" class="btn btn-success btn-md">Готово</button>
                    <button type="button" onclick="document.location='/'" class="btn btn-md">
                        Вернуться на главную
                    </button>
                    <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                        <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>
                    <%--<button type="button" class="btn btn-md btn-info" onclick="document.location='/questions?form'">--%>
                        <%--<img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>--%>
                </div>
            <br/>
            <br/>
    </form:form>

    <jsp:include page="fragments/messageform.jsp"/>

    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</html>