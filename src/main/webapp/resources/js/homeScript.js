//my IIFE front Controller

var controller = (function(){
    jQuery(document).ready(function($) {
        $(".clickable-row").click(function() {
            window.location = $(this).data("href");
        }); 

        $(".clickable-row").mouseenter(function() {
            $(this).find(".tblRow").addClass('bg-success');    
        }); 

        $(".clickable-row").mouseout(function() {
            $(this).find(".tblRow").removeClass('bg-success');    
        });

        //my ajax call to the backend controller
        $.ajax({
            type: "GET",
            url: "getDataFromBackEndController",
            dataType: 'JSON',
            success: function (data) {
                //var obj = JSON.parse(toString(data));
                //console.log(data.totalSalary);
                $(".totalEmpSalary").text(data.totalSalary+"$");
                $(".totalEmpNo").text(data.totalNumberOfEmployees );
            }
        });

    });
   
})();

