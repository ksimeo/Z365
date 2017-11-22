$(function(){
    $("#list").jqGrid({
        url:'../admins/orders/listgrid',
        datatype: 'json',
        mtype: 'GET',
        colNames:['#ID',
            'Дата',
            'Ім\'я',
            'Фамилия',
            'Тел',
            'e-mail',
            'Тип продукции',
            'Кол-во',
            'Единицы изм.',
            'Просмотрено'
        ],
        colModel :[
            {name:'id', index:'id', width:150},
            {name:'createDate', index:'createDate', width:150},
            {name:'customer.name', index:'customer.name', width:150},
            {name:'customer.surname', index:'customer.surname', width:150},
            {name:'customer.phoneNumber', index:'customer.phoneNumber', width:150},
            {name:'customer.email', index:'customer.email', width:150},
            {name:'product.name', index:'product.name', width:150},
            {name:'amount', index:'amount', width:150},
            {name:'product.units.name', index:'product.units.name', width:150},
            {name:'reviewDate', index:'reviewDate', width:150}
        ],
        jsonReader : {
            root:"orderData",
            page: "currentPage",
            total: "totalPages",
            records: "totalRecords",
            repeatitems: false,
            id: "id"
        },
        pager: '#pager',
        rowNum:15,
        //rowList:[10,20,30],
        sortname: 'id',
        sortorder: 'asc',
        viewrecords: true,
        gridview: true,
        height: 335,
        width: 1150,
        caption: 'Замовлення які поступили на ций момент4',
        onSelectRow: function(id){
            document.location.href = "/admins/orders/" + id;
        }
    });
});