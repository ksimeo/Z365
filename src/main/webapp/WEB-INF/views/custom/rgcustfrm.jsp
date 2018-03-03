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

<spring:message code="label_we_see" var="labelWeSee"/>
<spring:message code="label_please_fill_in" var="labelPleaseFillIn"/>
<spring:message code="label_name" var="labelName"/>
<spring:message code="label_enter_your_name" var="labelEnterYourName"/>
<spring:message code="label_surname" var="labelSurname"/>
<spring:message code="label_enter_surname" var="labelEnterSurname"/>
<spring:message code="label_email" var="labelEMail"/>
<spring:message code="label_enter_email" var="labelEnterEMail"/>
<spring:message code="label_region" var="labelYourRegion"/>
<spring:message code="label_select_region" var="labelSelectYourRegion"/>
<spring:message code="label_ok" var="labelOk"/>
<spring:message code="label_ask_a_question" var="labelAskAQuestion"/>
<spring:message code="label_back_to_main" var="labelBackToMainPage"/>
<spring:message code="label_AR_of_Crimea" var="labelARCrimea"/>
<spring:message code="label_Vinnichchina" var="labelVinnichchina"/>
<spring:message code="label_Volynschyna" var="labelVolynschyna"/>
<spring:message code="label_Dniprianschina" var="labelDniprianschina"/>
<spring:message code="label_Donechchina" var="labelDonechchina"/>
<spring:message code="label_Zhytomyrshchyna" var="labelZhytomyrshchyna"/>
<spring:message code="label_Transcarpathia" var="labelTranscarpathia"/>
<spring:message code="label_Zaporizhzhya" var="labelZaporizhzhya"/>
<spring:message code="label_Ivano-Frankivshchyna" var="labelIvanoFrankivshchyna"/>
<spring:message code="label_Kyyivshchyna" var="labelKyyivshchyna"/>
<spring:message code="label_Kropivnichchina" var="labelKropivnichchina"/>
<spring:message code="label_Luganshchyna" var="labelLuganshchyna"/>
<spring:message code="label_Lʹvivshchyna" var="labelLʹvivshchyna"/>
<spring:message code="label_Mykolayivshchyna" var="labelMykolayivshchyna"/>
<spring:message code="label_Odeshchyna" var="labelOdeshchyna"/>
<spring:message code="label_Poltavshchyna" var="labelPoltavshchyna"/>
<spring:message code="label_Rivnenshchyna" var="labelRivnenshchyna"/>
<spring:message code="label_Sumshchyna" var="labelSumshchyna"/>
<spring:message code="label_Ternopilʹshchyna" var="labelTernopilʹshchyna"/>
<spring:message code="label_Kharkivshchyna" var="labelKharkivshchyna"/>
<spring:message code="label_Khersonshchyna" var="labelKhersonshchyna"/>
<spring:message code="label_Khmelʹnychchyna" var="labelKhmelʹnychchyna"/>
<spring:message code="label_Cherkasshchyna" var="labelCherkasshchyna"/>
<spring:message code="label_Chernivechchyna" var="labelChernivechchyna"/>
<spring:message code="label_Chernihivshchyna" var="labelChernihivshchyna"/>

<div class="container">
    <jsp:include page="../fragments/logo.jsp"/>
    <br/>
    <br/>
    <br/>
    <div class="well">
        <h2>${labelWeSee}!</h2>
        <h3>${labelPleaseFillIn}</h3>

        <form:form type="userform" class="form-horizontal" method="POST" modelAttribute="usrForm" action="userform" >

            <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}" >
                <div class="col-sm-10">
                <label class="col-sm-2 control-label">${labelName}:</label>
                    <form:input path="name" size="10" id="user_name" class="form-control"
                                style="width: 200px;" placeholder="${labelEnterYourName}"/>
                    <form:errors path="name" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="surname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                <label for="user_surname" class="col-sm-2 control-label">${labelSurname}:</label>
                    <sf:input path="surname" size="10" id="user_surname" class="form-control"
                              style="width: 200px;" placeholder="${labelEnterSurname}"/>
                    <form:errors path="surname" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                <label for="user_email" class="col-sm-2 control-label">${labelEMail}:</label>
                    <sf:input path="email" size="10" class="form-control" id="user_email" style="width: 200px;"
                            placeholder="${labelEnterEMail}"/>
                    <form:errors path="email" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="region">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <div class="col-sm-10">
                <label for="region" class="col-sm-2 control-label">${labelYourRegion}:</label>
                    <form:select path="region" multiple="false" size="1" style="width: 200px;" class="form-control">
                        <form:option value="NONE" label="${labelSelectYourRegion}" />
                        <%--<form:option value="Crimea">${labelARCrimea}</form:option>--%>
                        <form:option value="Vinnichchina">${labelVinnichchina}</form:option>
                        <form:option value="Volynschyna">${labelVolynschyna}</form:option>
                        <form:option value="Dniprianschina">${labelDniprianschina}</form:option>
                        <form:option value="Donechchina">${labelDonechchina}</form:option>
                        <form:option value="Zhytomyrshchyna">${labelZhytomyrshchyna}</form:option>
                        <form:option value="Transcarpathia">${labelTranscarpathia}</form:option>
                        <form:option value="Zaporizhzhya">${labelZaporizhzhya}</form:option>
                        <form:option value="Ivano-Frankivshchyna">${labelIvanoFrankivshchyna}</form:option>
                        <form:option value="Kyyivshchyna">${labelKyyivshchyna}</form:option>
                        <form:option value="Kropivnichchina">${labelKropivnichchina}</form:option>
                        <form:option value="Luganshchyna">${labelLuganshchyna}</form:option>
                        <form:option value="Lʹvivshchyna">${labelLʹvivshchyna}</form:option>
                        <form:option value="Mykolayivshchyna">${labelMykolayivshchyna}</form:option>
                        <form:option value="Odeshchyna">${labelOdeshchyna}</form:option>
                        <form:option value="Poltavshchyna">${labelPoltavshchyna}</form:option>
                        <form:option value="Rivnenshchyna">${labelRivnenshchyna}</form:option>
                        <form:option value="Sumshchyna">${labelSumshchyna}</form:option>
                        <form:option value="Ternopilʹshchyna">${labelTernopilʹshchyna}</form:option>
                        <form:option value="Kharkivshchyna">${labelKharkivshchyna}</form:option>
                        <form:option value="Khersonshchyna">${labelKhersonshchyna}</form:option>
                        <form:option value="Khmelʹnychchyna">${labelKhmelʹnychchyna}</form:option>
                        <form:option value="Cherkasshchyna">${labelCherkasshchyna}</form:option>
                        <form:option value="Chernivechchyna">${labelChernivechchyna}</form:option>
                        <form:option value="Chernihivshchyna">${labelChernihivshchyna}</form:option>
                    </form:select>
                </div>
            </div>
        </spring:bind>
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" id="submit" class="btn btn-success btn-md">${labelOk}</button>
                    <button type="button" onclick="document.location='/'" class="btn btn-md">${labelBackToMainPage}
                    </button>
                    <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                        <img src="../../../resources/images/png/question.png">&nbsp;${labelAskAQuestion}</button>
                </div>
            <br/>
            <br/>
    </form:form>

    <jsp:include page="fragments/messageform.jsp"/>

    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</html>