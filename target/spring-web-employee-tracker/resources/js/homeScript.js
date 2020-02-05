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
            var imgdata = new FormData();

            jQuery.each(jQuery('#file')[0].files, function(i, file) {
                imgdata.append('file-'+i, file);
            });
            
            $.ajax({
                url:'fileUpload',
                data: imgdata,
                type:'POST',
                success: function(response){
                    if(response.Status == 200){
                        alert(response.SucessfulList);
                    }else{
                        alert('Error');
                    }
                
                        
                }				
            });
        })();

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
