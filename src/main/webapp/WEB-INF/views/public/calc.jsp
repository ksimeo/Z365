<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="uk-UA">

    <jsp:include page="fragments/header.jsp" />

    <body class="main">
    <div class="container">
        <br/>
        <h3 class="title">Розрахунок потрібної кiлькостi</h3>
        <br/>
        <br/>
    </div>
    <div class="container">
        <h4>Вкажіть тип зрошення яку потрiбно орошувати:</h4>
        <br/>
        <label>
            <select id="irrigation" name="irrigation" size="1" onchange="irrTypeChange()">
                <option id="i0" value="0">-Виберіть-тип-зрошення-</option>
                <option id="i1" value="0.14">Обработка насiння</option>
                <option id="i2" value="0.24">Позакорнева обробка</option>
                <option id="i3" value="0.34">Капельне зрошення</option>
            </select>
        </label>
    </div>
    <br/>
    <div сlass="container">
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
    </div>
    <br/>
    <br/>

<jsp:include page="fragments/footer.jsp" />

</body>
</html>