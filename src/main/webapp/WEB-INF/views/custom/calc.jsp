<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="uk">

    <jsp:include page="fragments/header_calc.jsp" />

    <div class="container">
        <!--//banner-->
        <jsp:include page="../fragments/logo.jsp" />
        <br/>
        <br/>
        <br/>
        <div class="well">
            <div class="title">
                <h2>Розрахунок потрібної кiлькостi</h2>
            </div>
            <div class="form-horizontal">
                <h4>Оберіть тип зрошення яку потрiбно орошувати:</h4>
                <br/>
                <label>
                    <select id="irrigation" name="irrigation" size="1" onchange="irrTypeChange()">
                        <option id="i0" value="0">-Виберіть-тип-зрошення-</option>
                        <c:forEach var="irr" items="${irrigations}">
                            <option id="i${irr.id}" value="${irr.coefficient}">${irr.name}</option>
                        </c:forEach>
                        <%--<option id="i1" value="0.14">Обработка насiння</option>--%>
                        <%--<option id="i2" value="0.24">Позакорнева обробка</option>--%>
                        <%--<option id="i3" value="0.34">Капельне зрошення</option>--%>
                    </select>
                </label>
            <br/>
            <div>
                <h4>
                    <output id="product">
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                    </output>
                </h4>
            </div>
            <br/>
            <div id="proxy">
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
            </div>
            <div id = "producttype" class="container" hidden>
                <h4>Вкажіть марку продукту та введіть розмiр площi яку необхідно удобрювати:</h4>
                <br/>
                <label>
                    <select id="prodType" name="prodType" onchange="changeProdType()" size="1">
                        <option name="prodName" id="prod0" value="NaN">-Виберіть-тип-продукту-</option>
                        <c:forEach items="${prods}" var="item">
                            <option name="prodName" id="${item.id}" value="${item.coeff}">${item.name}</option>
                        </c:forEach>
                    </select>
                    <input type="number" id="amount" min="1" max="999999" onchange="changeAmount()" required>
                    <select id="dimension" name="dimension" size="1"  onchange="changeDim()">
                        <option id="dim0" value="NaN">-виберiть-розмiрнiсть-</option>
                        <option value="1">кв.м</option>
                        <option value="100">Ар</option>
                        <option value="10000">Га</option>
                    </select>
                </label>
                <output id="result">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                </output>
                <jsp:include page="fragments/messageform.jsp"/>
            </div>
            <br/>
            <br/>
            </div>
        </div>
    </div>
</html>

<%--<jsp:include page="fragments/footer.jsp" />--%>