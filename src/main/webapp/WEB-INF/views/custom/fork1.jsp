<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<html>

    <jsp:include page="fragments/header.jsp" />

    <body>
        <div>
            <div>
                <br/>
                <h2>Необходим ли Вам предварительный расчет количества продукта?!</h2>
                <br/>
                <br/>
            </div>
            <div>
                <span>
                    <input type="button" class="btn btn-success" value="Да, необходим"
                           onclick="document.location='calc'"/>
                    &nbsp; &nbsp;
                    <input type="button" class="btn" value="Нет, перейти сразу к заказу"
                           onclick="document.location='order?amount=0&type=0'"/>
                </span>
            </div>
        </div>

        <jsp:include page="fragments/footer.jsp" />

    </body>
</html>