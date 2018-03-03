<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="uk">

<jsp:include page="fragments/header.jsp" />

<!-- jqGrid -->
<spring:url value="/resources/jqgrid/css/ui.jqgrid.css" var="jqgrid_css" />
<spring:url value="/resources/jqgrid/js/i18n/grid.locale-en.js"
            var="jqgrid_locale_url" />
<spring:url value="/resources/jqgrid/js/jquery.jqGrid.min.js" var="jqgrid_url" />
<link rel="stylesheet" type="text/css" media="screen" href="${jqgrid_css}" />
<script type="text/javascript" src="${jqgrid_locale_url}"><jsp:text/></script>
<script type="text/javascript" src="${jqgrid_url}"><jsp:text/></script>

<spring:url value="/admins" var="urlHome" />
<spring:url value="/admins/cultures" var="urlCalculation" />
<spring:url value="/admins/prods" var="urlProducts" />
<spring:url value="/admins/users" var="urlUsers" />
<spring:url value="/admins/questions" var="urlQuestions" />
<spring:url value="/admins/stat" var="urlStat" />
<spring:url value="/admins/mailing" var="urlMailing" />
<spring:url value="/static/j_spring_security_logout" var="urlExit" />

<spring:url value="/admins/users/1/pswrd" var="urlChangePassword" />
<%--<spring:url value="/j_spring_security_logout" var="logoutUrl" />--%>
<spring:url value="username" var="userName" />

<%--<spring:message code="label_contact_list" var="labelID"/>--%>
<%--<spring:message code="label_contact_first_name" var="labelContactFirstName"/>--%>
<%--<spring:message code="label_contact_last_name" var="labelContactLastName"/>--%>
<%--<spring:message code="label_contact_birth_date" var="labelContactBirthDate"/>--%>
<spring:url value="admins/questions/" var="showContactUrl"/>

<script type="text/javascript">
  $(function(){
    $("#list").jqGrid({
      url:'${showContactUrl}/listgrid',
      datatype: 'json',
      mtype: 'GET',
      colNames:['Имя', 'Сообщение'],
//            'Фамилия', 'Тел.', 'e-mail', 'Тип продукции', 'Кол-во', 'Единицы изм.', '', ''
      colModel :[
        {name:'customerName', index:'customerName', width:150},
        {name:'messageBody', index:'messageBody', width:100}
//        {name:'createDate', index:'createDate', width:100}
      ],
      jsonReader : {
        root:"questionData",
        page: "currentPage",
        total: "totalPages",
        records: "totalRecords",
        repeatitems: false,
        id: "id"
      },
      pager: '#pager',
      rowNum:10,
      rowList:[10,20,30],
      sortname: 'id',
      sortorder: 'asc',
      viewrecords: true,
      gridview: true,
      height: 250,
      width: 500,
      caption: 'Сообщения от клиентов поступившие на данный момент',
      onSelectRow: function(id){
        document.location.href ="/admins/questions/" + id;
      }
    });
  });
</script>

<%--<body>--%>

<div class="container">

  <spring:url value="/admins/questions" var="userActionUrl" />

  <%--<c:if test="${not empty message}">--%>
  <%--<div id="message" class=""></div>--%>
  <%--</c:if>--%>

  <h2>Сообщения поступившие на данный момент</h2>

  <div>
    <table id="list"><tr><td/></tr></table>
  </div>
  <div id="pager"></div>
</div>

<jsp:include page="fragments/footer.jsp" />


<%--<!-- Trigger the modal with a button -->--%>
<%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">--%>
<%--Open Large Modal</button>--%>

<%--<!-- Modal -->--%>
<%--<div class="modal fade" id="myModal" authority="dialog">--%>
<%--<div class="modal-dialog modal-lg">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
<%--<h4 class="modal-title">Modal Header</h4>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<p>This is a large modal.</p>--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</body>--%>
</html>