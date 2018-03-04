<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<spring:message code="label_admin" var="labelAdmin"/>
<spring:message code="label_to_main" var="labelToMain"/>
<spring:message code="label_production" var="labelProducts"/>
<spring:message code="label_messages" var="labelMessages"/>
<spring:message code="label_password_change" var="labelChangePassword"/>
<spring:message code="label_users_edit" var="labelUsersEdit"/>
<spring:message code="label_calculation_data" var="labelCalculationData"/>
<spring:message code="label_plant_cultures" var="labelPlantCultures"/>
<spring:message code="label_irrigation" var="labelIrrigation"/>
<spring:message code="label_newslatters" var="labelNewslatters"/>
<spring:message code="label_stat" var="labelStat"/>
<spring:message code="label_exit" var="labelExit"/>
<spring:message code="label_changing_your_password" var="labelChangingYourPassword"/>
<spring:message code="label_current_password" var="labelCurrentPassword"/>
<spring:message code="label_new_password" var="labelNewPassword"/>
<spring:message code="label_confirm_new_password" var="labelConfirmNewPassword"/>
<spring:message code="label_save" var="labelSave"/>
<spring:message code="label_close" var="labelClose"/>

<spring:url value="/admins" var="urlHome" />
<spring:url value="/admins/cultures" var="urlCults" />
<spring:url value="/admins/prods" var="urlProducts" />
<spring:url value="/admins/users" var="urlUsers" />
<spring:url value="/admins/quests" var="urlQuestions" />
<spring:url value="/admins/irrs" var="urlIrrs" />
<spring:url value="/admins/stat" var="urlStat" />
<spring:url value="/admins/mailing" var="urlMailing" />
<spring:url value="/static/j_spring_security_logout" var="urlExit" />
<spring:url value="/admins/changepassw" var="urlChangePassword" />
<spring:url value="username" var="userName" />

<head>
    <title>${labelAdmin}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <spring:url value="/resources/styles/standard.css" var="coreCss" />
    <spring:url value="/resources/jqgrid/css/ui.jqgrid.css" var="jqgrid_css" />
    <spring:url value="/resources/jqgrid/js/i18n/grid.locale-en.js" var="jqgrid_locale_url" />
    <spring:url value="/resources/jqgrid/js/jquery.jqGrid.min.js" var="jqgrid_url" />
    <link href="../../../../resources/styles/standard.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="../../../../resources/images/ico/favicon.ico"/>
    <link rel="javascript" type="text/javascript" href="../../../../resources/scripts/admins.js"/>
    <link rel="javascript" type="text/javascript" href="../../../../resources/scripts/jquery-3.2.1.min.js" />
    <link rel="javascript" type="text/javascript" href="../../../../resources/jqgrid/js/jquery.jqGrid.min.js" />
    <link rel="javascript" type="text/javascript" href="../../../../resources/jqgrid/js/i18n/grid.locale-en.js" />
    <link href="${coreCss}" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>



<body class="admins">
<nav class="navbar navbar-inverse">
    <div class="container">
        <div id="navbar-header">
            <div class="navbar-header pull-left" style="padding-top: 0.5%; padding-left: 0;">
                <a href="${urlHome}"><jsp:include page="logo.jsp" /></a>
            </div>
            <ul class="nav navbar-nav navbar-right" style="padding-top: 0.5%;">
                <li class="navbar-brand" style="padding-left: 5px; padding-top: 1px;">
                    <div class="btn-group pull-right" style="padding-left: 5px; padding-top: 1.1%;">
                        <button class="btn btn-basic btn-md" onclick="document.location='${urlHome}'">
                            <img src="../../../../resources/images/png/home.png">&nbsp;${labelToMain}
                            <span class="badge">${count1}</span>
                        </button>
                        <button class="btn btn-basic btn-md" onclick="document.location='${urlProducts}'">
                            <img src="../../../../resources/images/png/list.png"/>&nbsp;${labelProducts}</button>
                        <button class="btn btn-basic btn-md" onclick="document.location='${urlQuestions}'">
                            <img src="../../../../resources/images/png/messages.png"/>&nbsp;${labelMessages}
                            <span class="badge">${count}</span>
                        </button>
                    </div>
                </li>
                <li>
                    <div class="pull-right" style="padding-top: 15%; color: #c5c5c5">&nbsp;&nbsp;<b>
                        <img src="../../../../resources/images/png/usr.png"/>username</b></div>
                </li>
                <li>
                    <div class="dropdown pull-right" style="padding-top: 10%;">
                        <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                            <img src="../../../../resources/images/png/optns.png" />
                            <%--Настройки--%>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li>
                                <a data-toggle="modal" data-target="#myModal">
                                    <img src="../../../../resources/images/png/passw.png"/>&nbsp;${labelChangePassword}
                                </a>
                            </li>
                            <li><a href="${urlUsers}"><img src="../../../../resources/images/png/users.png"/>
                                ${labelUsersEdit}</a></li>
                            <li>
                                <hr/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="../../../../resources/images/png/calc.png"/>&nbsp;${labelCalculationData}...
                            </li>
                            <li><a href="${urlCults}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...${labelPlantCultures}</a></li>
                            <li><a href="${urlIrrs}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;....${labelIrrigation}</a></li>
                            <li>
                                <hr/>
                                <a href="${urlMailing}"><img src="../../../../resources/images/png/mail.png"/>
                                ${labelNewslatters}</a></li>
                            <li><a href="${urlStat}"><img src="../../../../resources/images/png/stat.png"/>&nbsp;
                                ${labelStat}</a></li>
                            <li>
                                <hr/>
                                <a href="${urlExit}"><img src="../../../../resources/images/png/exit.png"/>&nbsp;
                                ${labelExit}</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <!-- Modal -->
    <div class="modal fade" id="myModal" authority="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">${labelChangingYourPassword}</h4>
                </div>
                <div class="modal-body">
                    <form:form method="post" class="form-horizontal" modelAttribute="passwForm" action="${urlChangePassword}">
                            <form:input path="userId" type="hidden" name="currusr" value="${userId}"/>

                            <spring:bind path="oldPassword">
                                <label>${labelCurrentPassword}:&nbsp;</label>
                                <form:input path="oldPassword" type="password" style="width: 200px;" name="oldPassword"/>
                                <form:errors path="oldPassword" class="control-label" />
                            </spring:bind>
                            <br/>
                            <br/>
                            <spring:bind path="newPassword">
                                <label>${labelNewPassword}:&nbsp;</label>
                                <form:input path="newPassword" type="password" style="width: 200px;" name="newPassword"/>
                                <form:errors path="newPassword" class="contol-label" />
                            </spring:bind>
                            <br/>
                            <label>${labelConfirmNewPassword}:&nbsp;</label>
                            <input type="password" style="width: 200px;" name="newpassw2" />
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">${labelSave}</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">${labelClose}</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>