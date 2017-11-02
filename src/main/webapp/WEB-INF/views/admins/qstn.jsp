<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="../fragments/header.jsp" />

<body class="main" onload="checkParams()">

<spring:url value="/questions" var="userActionUrl" />

<div class="container">
    <jsp:include page="../fragments/lang.jsp"/>
        <br/>
        <br/>
    <div class="well">
    <h3>Для того, чтобы задать вопрос или оставить пожелание,<br/>
        пожалуйста, укажите номер телефона и(или) ваш эл.адрес и<br/>
        введите ваш вопрос или пожелание в текстовое поле:</h3>
    <hr/>

    <form:form class="form-horizontal" method="POST" modelAttribute="questionForm" action="${userActionUrl}">

      <spring:bind path="id">
        <div class="form-group ${status.error ? 'has-error' : ''}" >
          <div class="col-sm-10 pull-left">
            <label class="col-sm-2 control-label">Ваше имя:</label>
            <form:input path="id" type="text" class="form-control"
                        id="id" style="width: 200px;" readonly="true"
                        placeholder="Как к Вам обращаться?!" onchange="checkParams()"/>
            <form:errors path="id" class="control-label" />

          </div>
        </div>
      </spring:bind>


    <spring:bind path="customerName">
        <div class="form-group ${status.error ? 'has-error' : ''}" >
            <div class="col-sm-10 pull-left">
                <label class="col-sm-2 control-label">Ваше имя:</label>
                    <form:input path="customerName" type="text" class="form-control"
                                id="customerName" style="width: 200px;" readonly="true"
                                placeholder="Как к Вам обращаться?!" onchange="checkParams()"/>
                    <form:errors path="customerName" class="control-label" />

            </div>
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="phoneNumber">
        <div class="form-group ${status.error ? 'has-error' : ''}">
        <div class="col-sm-10">
            <label class="col-sm-2 control-label">Ваш телефон: </label>
                <form:input path="phoneNumber" type="text" class="form-control"
                            id="phoneNumber" style="width: 200px;" autocomplete="false"
                            value="+380" readonly="true"
                            placeholder="Ваш контактный номер телефона" onchange="checkParams()"/>
                <form:errors path="phoneNumber" class="control-label" />
        </div>
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="eMail">
        <div class="form-group ${status.error ? 'has-error' : ''}">
        <div class="col-sm-10">
            <label class="col-sm-2 control-label">Ваша электронная почта:</label>
                <form:input path="eMail" type="text" class="form-control"
                            id="eMail" style="width: 200px;" readonly="true"
                            placeholder="Необходимое количество продукта" min="0" max="1000" onchange="checkParams()"/>
                <form:errors path="eMail" class="control-label" />
        </div>
    </spring:bind>
    <br/>
    <spring:bind path="messageBody">
        <div class="form-group ${status.error ? 'has-error' : ''}">
        <div class="col-sm-10">
            <label class="col-sm-2 control-label">Ваше сообщение:</label>
                <form:textarea path="messageBody" type="textarea" class="form-control" cols="5" rows="6"
                            id="messageBody" maxlength="1000" style="width: 200px; height: 70px;"
                            placeholder="Введите текст вашего сообщения" onchange="checkParams()" readonly="true"/>
                <form:errors path="messageBody" class="control-label" />
        </div>
        </div>
    </spring:bind>


    <%--<div class="form-group">--%>
<div class="col-sm-offset-2 col-sm-10">
  <button type="submit" id="submit" class="btn btn-success btn-md">Назад</button>
  <button type="button" onclick="document.location='/'" class="btn btn-md">
    Вернуться на главную
  </button>
</div>
<%--</div>--%>
<%--TODO Предварительный подсчёт цены (on-line) --%>
</form:form>
</div>
</div>

<jsp:include page="../fragments/footer.jsp" />

</body>
</html>