window.addEventListener('load',function(){
    document.getElementById("btniniciar").addEventListener('click', function(){
        let nombre = document.getElementById('textusuario').value;
        let pass = document.getElementById('textpass').value;
        
        let bandera = false;
        
        if(nombre.length>0 && pass.length>0){
            bandera = true;
        }
        
        if(bandera){
            document.getElementById('forminicio').submit();
        }else{
            alert('Por favor rellene los campos');
        }
    });
});