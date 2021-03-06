<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="uk">

    <jsp:include page="fragments/header.jsp" />

    <link rel="stylesheet" href="../../../resources/jquery-ui/jquery-ui.css">
    <link rel="stylesheet" href="../../../resources/jqgrid/css/ui.jqgrid.css">
    <script src="../../../resources/jquery-ui/external/jquery/jquery.js"></script>
    <script src="../../../resources/jqgrid/js/i18n/grid.locale-ua.js"></script>
    <script src="../../../resources/jqgrid/js/jquery.jqGrid.min.js"></script>
    <script src="../../../resources/jquery-ui/jquery-ui.js"></script>
    <script src="../../../resources/scripts/quest.js"></script>

    <div class="container">
        <h2>Журнал повідомлень від клієнтів</h2>

        <table id="list">
            <tr>
                <td />
            </tr>
        </table>
        <div id="pager"></div>
    </div>

    <jsp:include page="fragments/footer.jsp" />
</html>