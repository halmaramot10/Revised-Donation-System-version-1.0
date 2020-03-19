$(document).ready(function() {
        $('#examples').DataTable( {
        } );
} );


$(document).ready(function() {
        $('#example56').DataTable( {
        } );
} );

function tableshow2(){
    
   var types = document.getElementById("dropdowns");
    
    if(types.value === "Item Category"){
        document.getElementById('itemdrops').style.display='';
        document.getElementById('paydrops').style.display='none';
    }
    else if(types.value === "Payment Method"){
        document.getElementById('itemdrops').style.display='none';
        document.getElementById('paydrops').style.display='';
    }
    else{
        document.getElementById('itemdrops').style.display='none';
        document.getElementById('paydrops').style.display='none';
    }
}
