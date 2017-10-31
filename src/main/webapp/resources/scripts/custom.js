function checkParams() {
    var type = $('#prodName').val();
    var amount = $('#amount').val();
//            var phone = $('#phone').val();
    if(type != "NaN" && amount.length != 0 && amount != 0) {
        $('#submit').removeAttr('disabled');
        document.getElementById('price').innerHTML = '<h2><p style="color: #006942;">Предварительная цена: ' +
            amount + ' гр. </p></h2>';
    } else {
        document.getElementById('price').innerHTML = '';
        $('#submit').attr('disabled', 'disabled');
    }
}