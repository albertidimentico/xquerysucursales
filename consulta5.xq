for $suc in doc("sucursales")/sucursales/sucursal/@codigo
let $debe:=  max($suc/../cuenta/saldodebe/data())
return  concat($suc, "--" , $debe )