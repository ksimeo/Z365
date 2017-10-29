/**
 * @author Ksimeo. Created on 05.02.2017 at 20:11 for "givorost24x7" project.
 * @version 1.0
 * @since 1.0
 */

function irrTypeChange(){

    var irrigationType = document.getElementById('irrigation').options[document.getElementById('irrigation')
        .selectedIndex].id;

    if (irrigationType == "i0") {
        document.getElementById('result').innerHTML = " ";
        changeAmount();
    } else if (irrigationType == "i1") {
        document.getElementById('i0').setAttribute('hidden', 'hidden');
        document.getElementById('product').innerHTML = "<div class=\"container\"><h4>Вкажіть культуру:</h4> &nbsp; " +
            "<table>" +
                    "<tr>" +
                        "<td>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"1.23\" onchange=\"selCultType()\">" +
                        "Cereals</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"2.84\" onchange=\"selCultType()\">" +
                        "Cucumerario</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"1.8\" onchange=\"selCultType()\">" +
                        "Helianthus</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"0.7\"onchange=\"selCultType()\">" +
                        "Raptus </input>" +
                            "<br/>"+
                            "<input type=\"radio\" name=\"agroculture\" value=\"1.2\" onchange=\"selCultType()\">Soybean" +
                        "</input>" +
                            "<br/>"+
                            "<input type=\"radio\" name=\"agroculture\" value=\"2.4\" onchange=\"selCultType()\">Potatoes" +
                        "</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"0.5\"onchange=\"selCultType()\">Sit amet" +
                        "</input>" +
                            "</td>" +
                            "<td>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"0.5\" onchange=\"selCultType()\">Cereals" +
                        "</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"2.4\" onchange=\"selCultType()\">Frumentum" +
                        "</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"1.2\" onchange=\"selCultType()\">Helianthus" +
                        "</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"0.7\" onchange=\"selCultType()\">Gardens" +
                        "</input>" +
                            "<br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"2.84\" onchange=\"selCultType()\">" +
                        "Uvarum</input><br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"1.23\" onchange=\"selCultType()\">" +
                        "Brassica</input><br/>" +
                            "<input type=\"radio\" name=\"agroculture\" value=\"0.5\" onchange=\"selCultType()\">" +
                        "Houseplants</input>" +
                    "</td>" +
                "</tr>" +
            "</table>"+
        "</div>";
        changeAmount();
    } else if (irrigationType == "i2") {
        document.getElementById('i0').setAttribute('hidden', 'hidden');
        document.getElementById('product').innerHTML = "<div class=\"container\"><h4>Вкажіть культуру:</h4> &nbsp; " +
            "<table>" +
                "<tr>" +
                    "<td>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.14\" onchange=\"selCultType()\">" +
                    "Houseplants</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.33\" onchange=\"selCultType()\">Bacas" +
                    "</input><br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.12\" onchange=\"selCultType()\">Uvarum" +
                    "</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.11\" onchange=\"selCultType()\">Gardens" +
                    "</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.10\" onchange=\"selCultType()\">Solanaceae" +
                    "</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.9\" onchange=\"selCultType()\">Brassica" +
                    "</input>" +
                        "<br/>" +
                    "</td>" +
                    "<td>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.66\" onchange=\"selCultType()\">Cucumerario" +
                    "</input>" +
                    "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.5\" onchange=\"selCultType()\">Sit amet" +
                    "</input><br/>"+
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.21\" onchange=\"selCultType()\">Potatoes" +
                    "</input><br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.44\"onchange=\"selCultType()\">Soybean" +
                        "</input>" +
                        "<br/>"+
                    "<input type=\"radio\" name=\"agroculture\" value=\"0.38\" onchange=\"selCultType()\">Raptus" +
                        "</input>" +
                        "<br/>" +
                    "<input type=\"radio\" name=\"groculture\" value=\"0.17\" onchange=\"selCultType()\">Helianthus" +
                        "</input><br/>" +
                    "</td>" +
                "</tr>" +
            "</table>" +
        "</div>";
        changeAmount();
    } else if (irrigationType == "i3") {
        document.getElementById('i0').setAttribute('hidden', 'hidden');
        document.getElementById('product').innerHTML = "<div class=\"container\"><h4>Вкажіть культуру:</h4> &nbsp; " +
            "<table>" +
                "<tr>" +
                    "<td>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.56\" onchange=\"selCultType()\">" +
                    "Cereals</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.78\" onchange=\"selCultType()\">" +
                    "Frumentum</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.96\" onchange=\"selCultType()\">" +
                    "Helianthus</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.24\"onchange=\"selCultType()\">" +
                    "Raptus </input>" +
                        "<br/>"+
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.39\" onchange=\"selCultType()\">Soybean" +
                    "</input>" +
                        "<br/>"+
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.16\" onchange=\"selCultType()\">Potatoes" +
                    "</input><br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.71\"onchange=\"selCultType()\">Sit amet" +
                    "</input>" +
                    "</td>" +
                    "<td>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.88\" onchange=\"selCultType()\">Cucumerario" +
                    "</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.9\" onchange=\"selCultType()\">Brassica" +
                    "</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.10\" onchange=\"selCultType()\">" +
                    "Solanaceae\"</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.31\" onchange=\"selCultType()\">Gardens" +
                    "</input>" +
                        "<br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.42\" onchange=\"selCultType()\">Uvarum" +
                    "</input><br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.18\" onchange=\"selCultType()\">Bacas" +
                    "</input><br/>" +
                        "<input type=\"radio\" name=\"agroculture\" value=\"0.27\" onchange=\"selCultType()\">" +
                        "Houseplants</input>" +
                "</td>" +
            "</tr>" +
        "</table>" +
    "</div>";
     changeAmount();
    }
}

function selCultType() {
    document.getElementById('producttype').removeAttribute('hidden');
    document.getElementById('proxy').setAttribute('hidden', "hidden");
    changeAmount();
}

function changeProdType() {
    document.getElementById('prod0').setAttribute('hidden', 'hidden');
    changeAmount();
}

function changeDim() {
    document.getElementById('dim0').setAttribute('hidden', 'hidden');
    changeAmount();
}

function changeAmount() {
    var coeff1 = parseFloat(document.getElementById('irrigation').options[document.getElementById('irrigation')
        .selectedIndex].value);
    var coeff2 = NaN;
    var elems = document.getElementsByName('agroculture');
    for (var i = 0; i < elems.length; i++) {
        if (document.getElementsByName('agroculture')[i].checked == true) {
            coeff2 = document.getElementsByName('agroculture')[i].value;
        }
    }
    var coeff3 = parseFloat(document.getElementById('prodType').options[document.getElementById('prodType')
        .selectedIndex].value );
    var amount = parseInt(document.getElementById('amount').value);
    if (amount == 0) amount = NaN;
    var coeff4 = parseFloat(document.getElementById('dimension').value);


    var pes = coeff1 * coeff2 * coeff3 * coeff4 * amount;
    var res = Math.round(pes);

    var prodId = document.getElementById('prodType').options[document.getElementById('prodType').selectedIndex].id;


    if ("" + res != "NaN") {
        if (res > 1) {
        document.getElementById('result').innerHTML =
            "<br/><h3><p style=\"color:#0EB956;\">Вам знадобиться " + res + " л обраної марки бiогумату</p></h3> " +
            "&nbsp; <br/><input type=\"button\" class=\"btn-lg btn-primary pull-left\" value=\"Замовити\" onclick=\"document.location = \'/order/" +
            res + "/" + prodId + "\'\"/>" +
            "&nbsp;<input type=\"button\" class=\"btn-lg btn-primary pull-left\" value=\"Повернутися на головну\" onclick=\"document.location = \'/\'\"/>" +
            "<br/><br/><br/>";
        } else if (res == 0 || res == 1) {
            document.getElementById('result').innerHTML =
                    "<br/>" +
                    "<h3><p style=\"color:#0EB956;\">Вам вистачить 1 литру обраної марки бiогумату</p></h3> &nbsp;" +
                    "<br/><input type=\"button\" class=\"btn-lg btn-primary pull-left\" value=\"Замовити\" onclick=\"document.location = \'/order/1/" + prodId + "\'\"/> &nbsp; &nbsp; &nbsp; &nbsp; <input type=\"button\" class=\"btn-lg btn-primary pull-left\" value=\"Повернутися на головну\" onclick=\"document.location = \'/\'\"/><br/><br/><br/>";
        } else {
            document.getElementById('result').innerHTML = "" +
                "<br/>" +
                "<br/>" +
                "<br/>" +
                "<br/>" +
                "<br/><br/>";
        }
    } else {
        document.getElementById('result').innerHTML = "" +
            "<br/>" +
            "<br/>" +
            "<br/>" +
            "<br/>" +
            "<br/>";
    }
}

function changeProd() {
    document.getElementById('prod0').setAttribute('hidden', 'hidden');
}

function post(path, params, method) {
    method = method || "post";

    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);

    for ( var key in params) {
        if (params.hasOwnProperty(key)) {
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", key);
            hiddenField.setAttribute("value", params[key]);

            form.appendChild(hiddenField);
        }
    }

    document.body.appendChild(form);
    form.submit();
}

function checkParams() {
    var type = $('#prodName').val();
    var amount = $('#amount').val();
//            var phone = $('#phone').val();
    if (type != "NaN" && amount.length != 0 && amount != 0) {
        $('#submit').removeAttr('disabled');
        document.getElementById('price').innerHTML = '<h2><p style="color: #006942;">Предварительная цена: ' +
            amount + ' гр. </p></h2>';
    } else {
        document.getElementById('price').innerHTML = '';
        $('#submit').attr('disabled', 'disabled');
    }


    function checkParams2() {
        var login = $('#login').val();
        var role = $('#role').val();
        var pass1 = $('#pass1').val();
        var pass2 = $('#pass2').val();

        if (login.length > 0 && role != "NaN" && pass1.length > 5 && pass1 == pass2) {
            $('#submit').removeAttr('disabled');
        } else {
            $('#submit').attr('disabled', 'disabled');
        }
    }

    function checkPassword2() {
        var pass1 = $('#pass1').val();
        var pass2 = $('#pass2').val();
        if (pass1.length >= 5) {
            document.getElementById('pass1warning').innerHTML = '<h6><br/></h6>';
            document.getElementById('pass2warning').innerHTML = '<h6><br/></h6>';
            $('#pass2').removeAttr('disabled');
        } else {
            document.getElementById('pass1warning').innerHTML =
                '<h6><p style="color: dimgrey">Длина пароля не менее пяти символов</p></h6>';
            document.getElementById('pass2warning').innerHTML = '<h6><br/></h6>';
            $('#pass2').attr('disabled', 'disabled');
        }
    }

    function checkConfPassw2() {
        var passw1 = $('#pass1').val();
        var passw2 = $('#pass2').val();
        if (passw2.length >= passw1.length) {
            if (passw2 == passw1) {
                document.getElementById('pass2warning').innerHTML =
                    '<h6><p style="color: green">Пароли совпадают</p></h6>';
            } else {
                document.getElementById('pass2warning').innerHTML =
                    '<h6><p style="color: red">Пароли не совпадают</p></h6>';
            }
        } else {
            document.getElementById('pass2warning').innerHTML =
                '<h6><br/></h6>';
        }
    }

    var min_length = 6; //минимальная длина пароля

    function passValid2(form, pass1, pass12, submit) {//проверка длины пароля

        PASS12 = document.getElementById(pass12);//индикатор длины пароля
        PASS1count = document.forms[form].pass1.value.length;//количество символов в пароле
        MARG_LEFT = 10 * PASS1count - 100;//высчитываем смещение индикатора в зависимости от количества символов в пароле
        if (MARG_LEFT < 0)//если индикатор не полностью выдвинут, тогда выдвигаем
        {
            PASS12.style.marginLeft = MARG_LEFT + "px";
        }
        if (MARG_LEFT >= 0)//если индикатор полностью выдвинут, тогда не выдвигаем
        {
            PASS12.style.marginLeft = "0px";
        }
        //задаем цвет индикатора в зависимости от количества символов
        if (PASS1count < 4) {
            PASS12.style.background = "#f00";
        }
        else if ((PASS1count >= 4) && (PASS1count < 6)) {
            PASS12.style.background = "#FF9F00";
        }
        else if ((PASS1count >= 6) && (PASS1count < 8)) {
            PASS12.style.background = "#CBFE01";
        }
        else if ((PASS1count >= 8)) {
            PASS12.style.background = "#0EFE01";
        }
    }

    //сравниваем пароли
    function isRavno2(form, pass1, pass2, pass22, submit) {
        PASS1 = document.forms[form].pass1.value;//первый пароль
        PASS1count = document.forms[form].pass1.value.length;//количество символов в 1 пароле
        PASS2 = document.forms[form].pass2.value;//второй пароль
        PASS22 = document.getElementById(pass22);//индикатор совпадения паролей
        SUBMIT = document.forms[form].submit; //кнопка отправки формы
        //если совпадают формируем индикатор совпадения паролей
        if (PASS1 == PASS2) {
            PASS22.style.border = "1px solid #446B01";
            PASS22.style.background = "#E0FFB3";
            PASS22.style.color = "#558701";
            PASS22.innerHTML = "Пароли совпадают";
            //если количество символов в пароле больше или равно минимальной длине, делаем кнопку отправки активной
            if (PASS1count >= min_length)
                SUBMIT.disabled = 0;
        }
        //если не совпадают формируем индикатор совпадения паролей
        else {
            PASS22.style.border = "1px solid #A40004";
            PASS22.style.background = "#FFD7E9";
            PASS22.style.color = "#D5172B";
            PASS22.innerHTML = "Пароли не совпадают";
            SUBMIT.disabled = 1; // делаем кнопку отправки неактивной
        }
    }
}

function checkParams3() {
    var login = $('#login').val();
    var role = $('#role').val();
    var pass1 = $('#pass1').val();
    var pass2 = $('#pass2').val();

    if(login.length > 0 && role != "NaN" && pass1.length > 5 && pass1 == pass2) {
        $('#submit').removeAttr('disabled');
    } else {
        $('#submit').attr('disabled', 'disabled');
    }
}

function checkPassword3() {
    var pass1 = $('#pass1').val();
    var pass2 = $('#pass2').val();
    if (pass1.length >= 5) {
        document.getElementById('pass1warning').innerHTML = '<h6><br/></h6>';
        document.getElementById('pass2warning').innerHTML = '<h6><br/></h6>';
        $('#pass2').removeAttr('disabled');
    } else {
        document.getElementById('pass1warning').innerHTML =
            '<h6><p style="color: dimgrey">Длина пароля не менее пяти символов</p></h6>';
        document.getElementById('pass2warning').innerHTML = '<h6><br/></h6>';
        $('#pass2').attr('disabled', 'disabled');
    }
}

function checkConfPassw3() {
    var passw1 = $('#pass1').val();
    var passw2 = $('#pass2').val();
    if (passw2.length >= passw1.length) {
        if (passw2 == passw1) {
            document.getElementById('pass2warning').innerHTML =
                '<h6><p style="color: green">Пароли совпадают</p></h6>';
        } else {
            document.getElementById('pass2warning').innerHTML =
                '<h6><p style="color: red">Пароли не совпадают</p></h6>';
        }
    } else {
        document.getElementById('pass2warning').innerHTML =
            '<h6><br/></h6>';
    }
}

var min_length = 6; //минимальная длина пароля

function passValid3(form, pass1, pass12, submit) {//проверка длины пароля

    PASS12 = document.getElementById(pass12);//индикатор длины пароля
    PASS1count = document.forms[form].pass1.value.length;//количество символов в пароле
    MARG_LEFT = 10 * PASS1count - 100;//высчитываем смещение индикатора в зависимости от количества символов в пароле
    if (MARG_LEFT < 0)//если индикатор не полностью выдвинут, тогда выдвигаем
    {
        PASS12.style.marginLeft = MARG_LEFT + "px";
    }
    if (MARG_LEFT >= 0)//если индикатор полностью выдвинут, тогда не выдвигаем
    {
        PASS12.style.marginLeft = "0px";
    }
    //задаем цвет индикатора в зависимости от количества символов
    if (PASS1count < 4) {
        PASS12.style.background = "#f00";
    }
    else if ((PASS1count >= 4) && (PASS1count < 6)) {
        PASS12.style.background = "#FF9F00";
    }
    else if ((PASS1count >= 6) && (PASS1count < 8)) {
        PASS12.style.background = "#CBFE01";
    }
    else if ((PASS1count >= 8)) {
        PASS12.style.background = "#0EFE01";
    }
}
//сравниваем пароли
function isRavno3(form, pass1, pass2, pass22, submit)  {
    PASS1 = document.forms[form].pass1.value;//первый пароль
    PASS1count = document.forms[form].pass1.value.length;//количество символов в 1 пароле
    PASS2 = document.forms[form].pass2.value;//второй пароль
    PASS22 = document.getElementById(pass22);//индикатор совпадения паролей
    SUBMIT = document.forms[form].submit; //кнопка отправки формы
    //если совпадают формируем индикатор совпадения паролей
    if (PASS1 == PASS2) {
        PASS22.style.border = "1px solid #446B01";
        PASS22.style.background = "#E0FFB3";
        PASS22.style.color = "#558701";
        PASS22.innerHTML = "Пароли совпадают";
        //если количество символов в пароле больше или равно минимальной длине, делаем кнопку отправки активной
        if (PASS1count >= min_length)
            SUBMIT.disabled = 0;
    }
    //если не совпадают формируем индикатор совпадения паролей
    else {
        PASS22.style.border = "1px solid #A40004";
        PASS22.style.background = "#FFD7E9";
        PASS22.style.color = "#D5172B";
        PASS22.innerHTML = "Пароли не совпадают";
        SUBMIT.disabled = 1; // делаем кнопку отправки неактивной
    }
}