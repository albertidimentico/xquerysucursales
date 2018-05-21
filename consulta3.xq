for $suc in doc("sucursales")/sucursales/sucursal
let $codigo_sucursal := $suc/@codigo/data()
let $director := $suc/director
let $poblacion := $suc/poblacion
let $totalhaber := sum($suc/cuenta/saldohaber/data())
let $totaldebe := sum($suc/cuenta/saldodebe/data())
return concat($codigo_sucursal , "--" , $director , "--" , $poblacion, "--", $totalhaber, "--", $totaldebe)