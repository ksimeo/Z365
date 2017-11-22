$(function(){
    $("#list").jqGrid({
        url:'../admins/questions/listgrid',
        datatype: 'json',
        mtype: 'GET',
        colNames:['#ID', 'Час звернення','Ім\'я', 'Телефон', 'Електронная адреса', 'Повідомлення', 'Дата прочитання'],
        colModel :[
            {name:'id', index:'id', width:15},
            {name:'createDate', index:'createDate', width:35},
            {name:'customerName', index:'customerName', width:50},
            {name:'phoneNumber', index:'phoneNumber', width:40},
            {name:'eMail', index:'eMail', width:60},
            {name:'messageBody', index:'messageBody', width:150},
            {name:'reviewDate', index:'reviewDate', width:50}
        ],
        jsonReader : {
            root:"questionData",
            page: "currentPage",
            total: "totalPages",
            records: "totalRecords",
            repeatitems: false,
            id: "id"
        },
        pager: '#pager',
        rowNum:15,
        //rowList:[16],
        sortname: 'id',
        sortorder: 'asc',
        viewrecords: true,
        gridview: true,
        height: 335,
        width: 1150,
        caption: 'Повідомлення',
        onSelectRow: function(id){
            document.location.href ="/admins/questions/" + id;
        }
    });
});