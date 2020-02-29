
/*For Donation Types*/
function show1()
{
/*Get value from Donation Types*/
    var types=document.getElementById("type");

    if(types.value==="Food"){
        /*Show expiration date Input Form*/
        document.getElementById('expform').style.display= '';

        /*Hide Input Forms not related to Foods*/
        document.getElementById('moneysss').style.display= 'none';
        document.getElementById('condform').style.display= 'none';
        document.getElementById('sizeform').style.display= 'none';
        document.getElementById('clform').style.display= 'none';
        
        //hide other item dropdowns
        document.getElementById('item1').style.display= 'none';
        document.getElementById('item3').style.display= 'none';
        document.getElementById('item4').style.display= 'none';
        document.getElementById('item5').style.display= 'none';
        
        //show item dropdown for food
        document.getElementById('item2').style.display= '';
        
        
        /*Adjust other input forms relevant to Foods*/
        document.getElementById('qtytxt').innerHTML = "Quantity";
        document.getElementById('frform').className = "form-group col-3"; 
        document.getElementById('toform').className = "form-group col-3"; 
        document.getElementById('statform').className = "form-group col-3"; 
        
    }

    else if(types.value==="Clothes"){
        /*Hide Input Forms not related to clothes*/
        document.getElementById('condform').style.display= 'none';
        document.getElementById('expform').style.display= 'none';
        document.getElementById('moneysss').style.display= 'none';
        
        //hide other item dropdowns
        document.getElementById('item1').style.display= 'none';
        document.getElementById('item2').style.display= 'none';
        document.getElementById('item4').style.display= 'none';
        document.getElementById('item5').style.display= 'none';
        
        
        //for showiing item dropdown clothes
        document.getElementById('item3').style.display= '';

        /*Show size and cl rows Input Form*/
        document.getElementById('clform').style.display= '';
        document.getElementById('sizeform').style.display= '';

        /*Adjust other input forms relevant to clothes*/
        document.getElementById('qtytxt').innerHTML = "Quantity";
        document.getElementById('frform').className = "form-group col-3"; 
        document.getElementById('toform').className = "form-group col-3"; 
        document.getElementById('statform').className = "form-group col-3"; 
    }
    else if (types.value==="School Supplies"){
        /*Hide Input Forms not related to School Supplies*/
        document.getElementById('condform').style.display= 'none';
        document.getElementById('expform').style.display= 'none';
        document.getElementById('clform').style.display= 'none';
        document.getElementById('sizeform').style.display= 'none';
        document.getElementById('moneysss').style.display= 'none';
        
        //hide other item dropdowns
        document.getElementById('item1').style.display= 'none';
        document.getElementById('item2').style.display= 'none';
        document.getElementById('item3').style.display= 'none';
        document.getElementById('item4').style.display= 'none';
        
        //for school supplies
        document.getElementById('item5').style.display= '';

        /*Adjust other input forms relevant to school*/
        document.getElementById('qtytxt').innerHTML = "Quantity";
        document.getElementById('frform').className = "form-group col-4"; 
        document.getElementById('toform').className = "form-group col-4"; 
        document.getElementById('statform').className = "form-group col-4";
    }
    else if (types.value==="Money"){
        /*Hide Input Forms not related to School Supplies*/
        document.getElementById('condform').style.display= 'none';
        document.getElementById('expform').style.display= 'none';
        document.getElementById('clform').style.display= 'none';
        document.getElementById('sizeform').style.display= 'none';
        
        //hide other item dropdowns
        document.getElementById('item1').style.display= 'none';
        document.getElementById('item2').style.display= 'none';
        document.getElementById('item3').style.display= 'none';
        document.getElementById('item5').style.display= 'none';
        
        //for item Money
        document.getElementById('item4').style.display= '';
        
        /*show money form*/
        document.getElementById('moneysss').style.display= '';
        
        /*Adjust other input forms relevant to school*/
        document.getElementById('qtytxt').innerHTML = "Amount"; 
        document.getElementById('frform').className = "form-group col-4"; 
        document.getElementById('toform').className = "form-group col-4"; 
        document.getElementById('statform').className = "form-group col-4";
    }

    /*For Other Donation Type*/
    else{
        /*Show Condition Input Form*/
        document.getElementById('condform').style.display= '';
        /*Hide Input Forms not related to Others*/
        document.getElementById('expform').style.display= 'none';
        document.getElementById('clform').style.display= 'none';
        document.getElementById('sizeform').style.display= 'none';
        document.getElementById('moneysss').style.display= 'none';
        
        //for others
        document.getElementById('item1').style.display= '';
        
        //hide other item dropdowns
        document.getElementById('item2').style.display= 'none';
        document.getElementById('item3').style.display= 'none';
        document.getElementById('item4').style.display= 'none';
        document.getElementById('item5').style.display= 'none';

        /*Adjust other input forms relevant to Other*/
        document.getElementById('qtytxt').innerHTML = "Quantity";
        document.getElementById('frform').className = "form-group col-3"; 
        document.getElementById('toform').className = "form-group col-3"; 
        document.getElementById('statform').className = "form-group col-3";
    }
}

/*For Adding New Item*/
function shows2()
{
    var nt=document.getElementById("item01");
    var nt1=document.getElementById("item02");
    var nt2=document.getElementById("item03");
    var nt3=document.getElementById("item04");
    var nt4=document.getElementById("item05");
    if(nt.value==="Add New Item" || nt1.value==="Add New Item" || nt2.value==="Add New Item"|| nt3.value==="Add New Item"|| nt4.value==="Add New Item"){
        //show form
        document.getElementById('ntform').style.display= '';
        //adjust form
        document.getElementById('descform').className = "form-group col-6"; 
        document.getElementById('qtyform').className = "form-group col-3";
    }
    else{
        //hide form
        document.getElementById('ntform').style.display= 'none';
        //adjust form
        document.getElementById('descform').className = "form-group col-9"; 
        document.getElementById('qtyform').className = "form-group col-3";
    }
}
/*for method in Money Form*/
function shows3()
{
    var mt=document.getElementById("method");
    if(mt.value==="Bank"){
        //show form
        document.getElementById('bnkform').style.display='';
        document.getElementById('otherss').style.display= 'none';
        document.getElementById('olform').style.display= 'none';
        //adjust form
        document.getElementById('metform').className = "form-group col-4"; 
        document.getElementById('reform').className = "form-group col-4";
    }
    else if(mt.value==="Online"){
        //show form
        document.getElementById('bnkform').style.display= 'none';
        document.getElementById('otherss').style.display= 'none';
        document.getElementById('olform').style.display= '';
        //adjust form
        document.getElementById('metform').className = "form-group col-4"; 
        document.getElementById('reform').className = "form-group col-4";
    }
    else{
        //hide form
        document.getElementById('bnkform').style.display= 'none';
        document.getElementById('otherss').style.display= 'none';
        document.getElementById('olform').style.display= 'none';
        //adjust form
        document.getElementById('metform').className = "form-group col-6"; 
        document.getElementById('reform').className = "form-group col-6";
    }
}