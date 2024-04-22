
use uva1
select * from agromas_rvr_local_uva_2018.comercial_programa;

select cp.cod_programa , cc.razon_social, cp.booking,  cd.nombre, lv.nombre, cn.nombre, cna.nave_viaje,
cp.n_cajas, cp.n_pallets, mi.nombre, cp.fecha_creacion
from agromas_rvr_local_uva_2018.comercial_programa as cp inner join agromas_rvr_local_uva_2018.comercial_clientes as cc on cp.id_cliente=cc.id_cliente
inner join agromas_rvr_local_uva_2018.laborp_variedades as lv on cp.id_variedad=lv.id_variedad
inner join agromas_rvr_local_uva_2018.comercial_destinos as cd on cp.id_destino=cd.id_destino
inner join  agromas_rvr_local_uva_2018.comercial_navieras as cn  on cp.id_naviera=cn.id_naviera
inner join agromas_rvr_local_uva_2018.comercial_naves as cna on cp.id_nave=cna.id_nave
inner join agromas_rvr_local_uva_2018.material_producto as mi on cp.id_m_producto=mi.id_m_producto


