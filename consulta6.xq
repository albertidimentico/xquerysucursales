for $suc in doc("sucursales")/sucursales/sucursal/cuenta[@tipo="PENSIONES"]
let $nombre:=  $suc/nombre/data()
let $masaporta:=  $suc/aportacion/data()
order by $suc/aportacion descending

return   concat($nombre, "--" , $masaporta )