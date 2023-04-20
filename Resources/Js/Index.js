//Load the datatable with list of uniforms products
$(document).ready(function () {
    $('#myTable').DataTable({
        "ajax": {
               "url": '../../Config/routes.php',
               "type": 'GET',
               "datatype": "Html",
               "data": function ( d ) {
                return $('#formFilter').serialize();
                }
           },
        columns: [
            { data: 'id' },
            { data: 'model' },
            { data: 'size' },
            { data: 'color' },
            { data: 'amount' },
        ],
    });
});
