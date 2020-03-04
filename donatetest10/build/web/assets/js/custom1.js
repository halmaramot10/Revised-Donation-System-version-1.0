/*Datatables for all Donation Types Table*/
$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example1').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Received Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Received Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example2').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Pending Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Pending Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example3').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Released Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Released Donations'
            }
        ]
    } );
} );
/*For Showing All Donation Types Tables from all Statuses to Specific Statuses*/
function showgenrec(){  
    document.getElementById('genrec').style.display= '';
    document.getElementById('genall').style.display= 'none';
    document.getElementById('genpen').style.display= 'none';
    document.getElementById('genrel').style.display= 'none';
}
function showgenpen(){
    document.getElementById('genrec').style.display= 'none';
    document.getElementById('genall').style.display= 'none';
    document.getElementById('genpen').style.display= '';
    document.getElementById('genrel').style.display= 'none';
}
function showgenrel(){
    document.getElementById('genrec').style.display= 'none';
    document.getElementById('genall').style.display= 'none';
    document.getElementById('genpen').style.display= 'none';
    document.getElementById('genrel').style.display= '';
}
function showgenall(){
    document.getElementById('genrec').style.display= 'none';
    document.getElementById('genall').style.display= '';
    document.getElementById('genpen').style.display= 'none';
    document.getElementById('genrel').style.display= 'none';
}
//Datatables for All School Donation Types
$(document).ready(function() {
    $('#example4').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all School Supplies Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all School Supplies Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example5').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Received School Supplies Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Received School Supplies Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example6').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Pending School Supplies Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Pending School Supplies Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example7').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Released School Supplies Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Released School Supplies Donations'
            }
        ]
    } );
} );
/*For Showing All Donation Types Tables from all Statuses to Specific Statuses*/
function showschrec(){  
    document.getElementById('schrec').style.display= '';
    document.getElementById('schall').style.display= 'none';
    document.getElementById('schpen').style.display= 'none';
    document.getElementById('schrel').style.display= 'none';
}
function showschpen(){
    document.getElementById('schrec').style.display= 'none';
    document.getElementById('schall').style.display= 'none';
    document.getElementById('schpen').style.display= '';
    document.getElementById('schrel').style.display= 'none';
}
function showschrel(){
    document.getElementById('schrec').style.display= 'none';
    document.getElementById('schall').style.display= 'none';
    document.getElementById('schpen').style.display= 'none';
    document.getElementById('schrel').style.display= '';
}
function showschall(){
    document.getElementById('schrec').style.display= 'none';
    document.getElementById('schall').style.display= '';
    document.getElementById('schpen').style.display= 'none';
    document.getElementById('schrel').style.display= 'none';
}
//Datatable for Food Donations
$(document).ready(function() {
    $('#example8').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Food Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Food Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example9').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Received Food Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Received Food Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example10').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Pending Food Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Pending Food Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example11').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Released Food Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Released Food Donations'
            }
        ]
    } );
} );
/*For Showing All Donation Types Tables from all Statuses to Specific Statuses*/
function showfoorec(){  
    document.getElementById('foorec').style.display= '';
    document.getElementById('fooall').style.display= 'none';
    document.getElementById('foopen').style.display= 'none';
    document.getElementById('foorel').style.display= 'none';
}
function showfoopen(){
    document.getElementById('foorec').style.display= 'none';
    document.getElementById('fooall').style.display= 'none';
    document.getElementById('foopen').style.display= '';
    document.getElementById('foorel').style.display= 'none';
}
function showfoorel(){
    document.getElementById('foorec').style.display= 'none';
    document.getElementById('fooall').style.display= 'none';
    document.getElementById('foopen').style.display= 'none';
    document.getElementById('foorel').style.display= '';
}
function showfooall(){
    document.getElementById('foorec').style.display= 'none';
    document.getElementById('fooall').style.display= '';
    document.getElementById('foopen').style.display= 'none';
    document.getElementById('foorel').style.display= 'none';
}
//
$(document).ready(function() {
    $('#example12').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Other Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Other Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example13').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Received Other Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Received Other Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example14').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Pending Other Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Pending Other Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example15').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Released Other Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Released Other Donations'
            }
        ]
    } );
} );
function showothrec(){  
    document.getElementById('othrec').style.display= '';
    document.getElementById('othall').style.display= 'none';
    document.getElementById('othpen').style.display= 'none';
    document.getElementById('othrel').style.display= 'none';
}
function showothpen(){
    document.getElementById('othrec').style.display= 'none';
    document.getElementById('othall').style.display= 'none';
    document.getElementById('othpen').style.display= '';
    document.getElementById('othrel').style.display= 'none';
}
function showothrel(){
    document.getElementById('othrec').style.display= 'none';
    document.getElementById('othall').style.display= 'none';
    document.getElementById('othpen').style.display= 'none';
    document.getElementById('othrel').style.display= '';
}
function showothall(){
    document.getElementById('othrec').style.display= 'none';
    document.getElementById('othall').style.display= '';
    document.getElementById('othpen').style.display= 'none';
    document.getElementById('othrel').style.display= 'none';
}
//
$(document).ready(function() {
    $('#example16').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Money Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Money Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example17').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Received Money Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Received Money Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example18').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Pending Money Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Pending Money Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example19').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Released Money Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Released Money Donations'
            }
        ]
    } );
} );
function showmonrec(){  
    document.getElementById('monrec').style.display= '';
    document.getElementById('monall').style.display= 'none';
    document.getElementById('monpen').style.display= 'none';
    document.getElementById('monrel').style.display= 'none';
}
function showmonpen(){
    document.getElementById('monrec').style.display= 'none';
    document.getElementById('monall').style.display= 'none';
    document.getElementById('monpen').style.display= '';
    document.getElementById('monrel').style.display= 'none';
}
function showmonrel(){
    document.getElementById('monrec').style.display= 'none';
    document.getElementById('monall').style.display= 'none';
    document.getElementById('monpen').style.display= 'none';
    document.getElementById('monrel').style.display= '';
}
function showmonall(){
    document.getElementById('monrec').style.display= 'none';
    document.getElementById('monall').style.display= '';
    document.getElementById('monpen').style.display= 'none';
    document.getElementById('monrel').style.display= 'none';
}
$(document).ready(function() {
    $('#example20').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Clothes Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Clothes Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example21').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Received Clothes Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Received Clothes Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example22').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Pending Clothes Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Pending Clothes Donations'
            }
        ]
    } );
} );
$(document).ready(function() {
    $('#example23').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'List of all Released Clothes Donations'
            },
            {
                extend: 'pdfHtml5',
                title: 'List of all Released Clothes Donations'
            }
        ]
    } );
} );
function showclorec(){  
    document.getElementById('clorec').style.display= '';
    document.getElementById('cloall').style.display= 'none';
    document.getElementById('clopen').style.display= 'none';
    document.getElementById('clorel').style.display= 'none';
}
function showclopen(){
    document.getElementById('clorec').style.display= 'none';
    document.getElementById('cloall').style.display= 'none';
    document.getElementById('clopen').style.display= '';
    document.getElementById('clorel').style.display= 'none';
}
function showclorel(){
    document.getElementById('clorec').style.display= 'none';
    document.getElementById('cloall').style.display= 'none';
    document.getElementById('clopen').style.display= 'none';
    document.getElementById('clorel').style.display= '';
}
function showcloall(){
    document.getElementById('clorec').style.display= 'none';
    document.getElementById('cloall').style.display= '';
    document.getElementById('clopen').style.display= 'none';
    document.getElementById('clorel').style.display= 'none';
}


function tableshow1(){
        var tshow = document.getElementById("tshows");
        
        if(tshow.value === "All Donation Types"){
            document.getElementById('genrow').style.display='';
            document.getElementById('schrow').style.display= 'none';
            document.getElementById('foorow').style.display='none';
            document.getElementById('othrow').style.display='none';
            document.getElementById('monrow').style.display='none';
            document.getElementById('clorow').style.display='none';
        }
        else if(tshow.value === "School Supplies"){
           document.getElementById('genrow').style.display='none';
           document.getElementById('schrow').style.display='';
           document.getElementById('foorow').style.display='none';
           document.getElementById('othrow').style.display='none';
           document.getElementById('monrow').style.display='none';
           document.getElementById('clorow').style.display='none';
        }
        else if(tshow.value === "Food"){
           document.getElementById('genrow').style.display='none';
           document.getElementById('schrow').style.display='none';
           document.getElementById('foorow').style.display='';
           document.getElementById('othrow').style.display='none';
           document.getElementById('monrow').style.display='none';
           document.getElementById('clorow').style.display='none';
        }
        else if(tshow.value === "Others"){
           document.getElementById('genrow').style.display='none';
           document.getElementById('schrow').style.display='none';
           document.getElementById('foorow').style.display='none';
           document.getElementById('othrow').style.display='';
           document.getElementById('monrow').style.display='none';
           document.getElementById('clorow').style.display='none';
        }
        else if(tshow.value === "Money"){
           document.getElementById('genrow').style.display='none';
           document.getElementById('schrow').style.display='none';
           document.getElementById('foorow').style.display='none';
           document.getElementById('othrow').style.display='none';
           document.getElementById('monrow').style.display='';
           document.getElementById('clorow').style.display='none';
        }
        else if(tshow.value === "Clothes"){
           document.getElementById('genrow').style.display='none';
           document.getElementById('schrow').style.display='none';
           document.getElementById('foorow').style.display='none';
           document.getElementById('othrow').style.display='none';
           document.getElementById('monrow').style.display='none';
           document.getElementById('clorow').style.display='';
        }
        else{
           document.getElementById('genrow').style.display='none';
           document.getElementById('schrow').style.display= 'none';
           document.getElementById('foorow').style.display='none';
           document.getElementById('othrow').style.display='none';
           document.getElementById('monrow').style.display='none';
           document.getElementById('clorow').style.display='none';
        }
}