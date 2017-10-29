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

<jsp:include page="fragments/header.jsp" />

<div>
    <body class="main">
        <sf:form action="phone" method="POST" modelAttribute="phoneForm">
            <fieldset>
                <table cellspacing="0">
                    <tr>
                        <div>
                            <h2>Сервис заказов "Живорост365" приветствует Вас!</h2>
                            <hr/>
                        </div>
                    </tr>
                    <tr>
                        <div>
                            <h3>Для начала совершения заказа введите ваш номер телефона:</h3>
                            +380 &nbsp; (
                                <sf:input type="text" path="parth1" name="parth1" size="1" placeholder="--"
                                          maxlength="2" tabindex="1" autofocus="autofocus"
                                          requiered="required" />
                                ) &nbsp;
                                <sf:input type="text" path="parth2" name="parth2" size="1" placeholder="---"
                                          maxlength="3" tabindex="2" required="required" /> -
                                <sf:input type="text" path="parth3" name="parth3" size="1" placeholder="--"
                                          maxlength="2" tabindex="3" required="required" /> -
                                <sf:input type="text" path="parth4" name="parth4" size="1" placeholder="--"
                                          maxlength="2"  tabindex="4" required="required" />
                                <button type="submit">OK</button>
                        </div>
                </table>
            </fieldset>
        </sf:form>
    </body>
</div>

<jsp:include page="fragments/footer.jsp" />

</html>