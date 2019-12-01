(function($){
    'use strict';

    var transactionTable = $("#transactionTable").DataTable();

    function dealWithTransactionReport()
    {
        $('#enddatepicker').datetimepicker({
            format:'Y-m-d',
            inline:false,
        });
        $('#startdatepicker').datetimepicker({
            format:'Y-m-d',
            inline:false,
        });
        $("#getReportBtn").click(e => {            
            $.get("fetchtransaction", {startDate: $("#startdatepicker").val(), endDate: $("#enddatepicker").val()})
                .done(reports => {

                    transactionTable.clear().draw();

                    reports.forEach(report => {
                        transactionTable.row.add([report.buyer, report.product_name, report.product_price, report.date]).draw(false);
                    });
                })
                .fail(err => {});
        });
    }

    dealWithTransactionReport();
}(jQuery));