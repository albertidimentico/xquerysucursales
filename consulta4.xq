for $suc in doc("sucursales")/sucursales/sucursal/@codigo
let $cu:=count(/sucursales/sucursal[@codigo=$suc]/cuenta)
let $director:= $suc/../director
let $poblacion:= $suc/../poblacion
where $cu > 3
return concat($director , " -- " ,$suc, " = ",$cu , " -- ", $poblacion )