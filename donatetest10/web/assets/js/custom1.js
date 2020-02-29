function show1(){
    var types = document.getElementbyId("type");
    
    if(types.value==="Food"){
        document.getElementById('otfrm1').style.display='';
        document.getElementById('otfrm2').style.display='';
    }
    else{
        document.getElementById('otfrm1').style.display='none';
    }
}