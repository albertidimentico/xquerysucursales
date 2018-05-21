for $suc in distinct-values(doc("sucursales")/sucursales/sucursal/cuenta/@tipo)
let $cu:=count(/sucursales/sucursal/cuenta[@tipo=$suc])
return concat($suc, " = ",$cu)