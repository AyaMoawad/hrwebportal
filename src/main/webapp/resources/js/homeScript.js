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


        $(".addEmployee").click(function(){
            var fd = new FormData();
            var files = $('#file')[0].files[0];
            fd.append('file',files);
            console.log(fd);
            $.ajax({
                url:'fileUpload',
                data: fd,
                contentType: false,
                processData: false,
                type:'POST',
                success: function(response){
                    if(response.Status == 200){
                        alert(response.SucessfulList);
                    }else{
                        alert('Error');
                    }    
                },				
            });
        });
            

        /***********************************************
         * AJAX call to the backend controller to..
         * (1) get the total no of employees,
         * (2) get the total salary of all employees.
         * Then;
         * show them to the UI
         ***********************************************/
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
