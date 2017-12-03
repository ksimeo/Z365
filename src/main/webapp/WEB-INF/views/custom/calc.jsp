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
        <!--//logotype-->
        <jsp:include page="../fragments/logo.jsp" />
        <br/>
        <br/>
        <br/>
        <div class="well" style="width: 1150px; height: 530px;">
            <div class="title">
                <h3>Розрахунок потрібної кiлькостi</h3>
            </div>
            <hr/>
            <div class="form-horizontal">
                <label>Оберіть тип зрошення:&nbsp;</label>
                <select id="irrigation" name="irrigation" size="1" onchange="irrTypeSelect()">
                        <option id="i0" value="0">-Виберіть-тип-зрошення-</option>
                        <c:forEach var="irr" items="${irrigations}">
                            <option id="i${irr.id}" value="${irr.coefficient}">${irr.name}</option>
                        </c:forEach>
                </select>
                <br/>
                <div id="cults" class="col-sm-10" hidden>
                    <label>Вкажить культуру:&nbsp;</label>
                    <table style="width: 430px; /* Ширина таблицы */
                                    /*border: 1px solid green; /!* Рамка вокруг таблицы *!/*/
                                    margin: auto; /* Выравниваем таблицу по центру окна  */">
                        <tr>
                            <td style="text-align: left;">
                                <c:forEach var="cult" items="${cultures1}">

                                    <input type="radio" name="agroculture" value="${cult.coefficient}"
                                           onchange="selCultType()"/>${cult.name}
                                        <br/>
                                    </c:forEach>
                                </td>
                                <td>
                                    <c:forEach var="cult" items="${cultures2}">
                                        <input type="radio" class="pull-left" name="agroculture"
                                               value="${cult.coefficient}" onchange="selCultType()">${cult.name}</input>
                                        <br/>
                                    </c:forEach>
                                </td>
                            </tr>
                        </table>
                    <br/>
                </div>
                <br/>
                </div>
                <div id = "producttype" hidden>
                    <label>Вкажіть марку продукту та<br/>площу удобрювання:&nbsp;</label>
                    <select id="prodType" name="prodType" onchange="changeProdType()" size="1">
                        <option name="prodName" id="prod0" value="NaN">-Виберіть-тип-продукту-</option>
                        <c:forEach items="${prods}" var="item">
                            <option name="prodName" id="${item.id}" value="${item.coeff}">${item.name}</option>
                        </c:forEach>
                    </select>
                    <input type="number" style="width: 65px" id="amount" min="1" max="999999" onchange="changeAmount()"/>
                    <select id="dimension" name="dimension" size="1" onchange="changeDim()">
                        <option id="dim0" value="NaN">-виберiть-розмiрнiсть-</option>
                        <option value="1">кв.м</option>
                        <option value="100">Ар</option>
                        <option value="10000">Га</option>
                    </select>
                </div>
                <output id="result"></output>
                <div id="prodoutput" hidden>
                    <%--<hr/>--%>
                    <button type="button" class="btn btn-md btn-success"
                            onclick="goOrder()">Замовити</button>
                    &nbsp;
                    <button type="button" class="btn btn-md" onclick="document.location='/phone'">
                        Повернутися на Головну
                    </button>
                    &nbsp;
                    <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal1">
                        <img src="../../../resources/images/png/question.png">&nbsp;Задать вопрос</button>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="fragments/messageform.jsp"/>
    <jsp:include page="fragments/footer.jsp" />
</html>
