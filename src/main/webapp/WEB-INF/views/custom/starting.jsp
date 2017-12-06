<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="us" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="uk">

<jsp:include page="../fragments/header.jsp" />

<body>
    <div class="container">
        <jsp:include page="fragments/lang.jsp"/>
        <br/>
        <br/>
        <div class="well">
            <h1>
                <%--Добрый день!--%>
                <script language="JavaScript"> day = new Date();
                hour = day.getHours();
                if (hour >= 5 && hour < 12) greeting = "Доброе утро!";
                else {
                    if (hour >= 12 && hour < 18) greeting = "Добрый день!";
                    else {
                        if (hour >= 18 && hour < 24) greeting = "Добрый вечер!";
                        else {
                            if (hour >= 0 && hour < 5) greeting = "Доброй ночи!";
                        }
                    }
                }
                document.write(greeting); </script>
            </h1>
            <h1>Вас приветствует <img src="../../../resources/images/png/logo_mini.png"/></h1>
            <h2>- круглосуточная служба заказа Биогумата Живорост&trade;!</h2>
            <hr/>
            <h3>Для начала введите ваш номер телефона:</h3>

        <div class="btn-group">
            <h3>
            <%--TODO Сделать единое поле для введения номера телефона с форматированием --%>
            <sf:form action="phone" method="POST" modelAttribute="phoneForm">
                +380 (
            <sf:input type="text" path="parth1" customerName="parth1" size="1" placeholder="--" maxlength="2"
                      tabindex="1" style="width: 35px;" autofocus="autofocus" /> )
            <sf:input type="text" path="parth2" customerName="parth2" size="1" placeholder="---"
                  maxlength="3" style="width: 45px;" tabindex="2" /> -
            <sf:input type="text" path="parth3" customerName="parth3" size="1" placeholder="--"
                  maxlength="2" tabindex="3" style="width: 35px;" /> -
            <sf:input type="text" path="parth4" customerName="parth4" size="1" placeholder="--"
                  maxlength="2"  tabindex="4" style="width: 35px;" /> &nbsp;
            <button class="btn btn-md btn-success" type="submit">OK</button>
                <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                    <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>
            <%--<button type="button" class="btn btn-md btn-info" onclick="document.location='/questions?form'">--%>
                    <%--<img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>--%>
            </sf:form>
            </h3>
            <br/>
            <br/>
        </div>
        </div>
    </div>

   <jsp:include page="fragments/messageform.jsp"/>
</body>

<jsp:include page="fragments/footer.jsp" />

</html>