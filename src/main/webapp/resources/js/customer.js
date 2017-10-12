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