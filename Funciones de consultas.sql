-- Busqueda por ciudad especifica
  CREATE OR REPLACE FUNCTION "PRUEBA"."BUSQUEDA_POR_CIUDAD" (
       p_ciudad NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_persona
from persona
where id_ciudad = p_ciudad;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
-- Busqueda por Estado civil especifico
  CREATE OR REPLACE FUNCTION "PRUEBA"."BUSQUEDA_POR_ESTADO_CIVIL" (
       p_estado NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_persona
from persona
where id_estado_civil = p_estado;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
-- Busqueda por nombre donde regresa los valores que cumplen con lo que se busca ya sea en el nombre o apellido
  CREATE OR REPLACE FUNCTION "PRUEBA"."BUSQUEDA_POR_NOMBRE" (
       p_nombre VARCHAR
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_persona
from persona
where nombre like p_nombre
or apellido like p_nombre;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
-- busqueda de persona por pais especifico
  CREATE OR REPLACE FUNCTION "PRUEBA"."BUSQUEDA_POR_PAIS" (
       p_pais NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_persona
from persona
where id_ciudad = (select id_ciudad from ciudad where id_pais = p_pais);

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
--- consulta el match list de un usuario especifico
  CREATE OR REPLACE FUNCTION "PRUEBA"."CONSULTAR_MATCH_LIST" (
       p_ID_usuario NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_matchee
from match_positivo
where id_matcher = p_id_usuario;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
--- consulta el no-match list de un usuario especifico
  CREATE OR REPLACE FUNCTION "PRUEBA"."CONSULTAR_NO_MATCH_LIST" (
       p_ID_usuario NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_no_matchee
from no_match
where id_no_matcher = p_id_usuario;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
---  agarra todos los ids de las personas registradas
  CREATE OR REPLACE FUNCTION "PRUEBA"."GET_ALL_PERSONAS" 
return number
IS
ids number;
cursor c1 is
SELECT id_persona from persona;

BEGIN
open c1;
  fetch c1 into ids;
  
  close c1;
RETURN ids;
END;
/
 

--- Total de usuarios en el sitio
  CREATE OR REPLACE FUNCTION "PRUEBA"."USUARIOS_TOTALES_CONTEO" 
     
RETURN NUMBER
IS
return_count NUMBER;
cursor c1 is
select count(*)
from persona;

BEGIN

  open c1;
  fetch c1 into return_count;
  
  close c1;
RETURN return_count;
END;
/
 
-- Ver winks hechos por usuario especifico
  CREATE OR REPLACE FUNCTION "PRUEBA"."VER_WINKS" (
       p_ID_usuario NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_winked
from winks
where id_winker = p_id_usuario;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 
--- ver visitas de perfil a un usuario especifico
  CREATE OR REPLACE FUNCTION "PRUEBA"."VISITAS_PERFIL" (
       p_ID_usuario NUMBER
     )
RETURN NUMBER
IS
return_id NUMBER;
cursor c1 is
select id_clicker
from click
where id_clickd = p_id_usuario;

BEGIN

  open c1;
  fetch c1 into return_id;
  
  close c1;
RETURN return_id;
END;
/
 




-- Queries que representan estadisticas de cada table donde se dice el ID del valor y cuantas personas cumplen con ese valor
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_ALTURA_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select altura.id_altura, Count(persona.id_altura) as total
  from
  persona inner join
  altura on persona.id_altura = altura.id_altura
  group by altura.id_altura
  order by total;
END get_altura_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_BEBEDOR_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select bebedor.id_bebedor, Count(persona.id_bebedor) as total
  from
  persona inner join
  bebedor on persona.id_bebedor = bebedor.id_bebedor
  group by bebedor.id_bebedor
  order by total;
END get_bebedor_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_CIUDAD_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select ciudad.id_ciudad, Count(persona.id_ciudad) as total
  from
  persona inner join
  ciudad on persona.id_ciudad = ciudad.id_ciudad
  group by ciudad.id_ciudad
  order by total;
END get_ciudad_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_COLOR_OJOS_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select color_de_ojos.id_color_ojos, Count(persona.id_color_ojos) as total
  from
  persona inner join
  color_de_ojos on persona.id_color_ojos = color_de_ojos.id_color_ojos
  group by color_de_ojos.id_color_ojos
  order by total;
END get_color_ojos_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_COLOR_PELO_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select color_de_pelo.id_color_pelo, Count(persona.id_color_pelo) as total
  from
  persona inner join
  color_de_pelo on persona.id_color_pelo = color_de_pelo.id_color_pelo
  group by color_de_pelo.id_color_pelo
  order by total;
END get_color_pelo_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_COLOR_PIEL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select color_de_piel.id_color_piel, Count(persona.id_color_piel) as total
  from
  persona inner join
  color_de_piel on persona.id_color_piel = color_de_piel.id_color_piel
  group by color_de_piel.id_color_piel
  order by total;
END get_color_piel_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_ESTADO_CIVIL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select estado_civil.id_estado_civil, Count(persona.id_estado_civil) as total
  from
  persona inner join
  estado_civil on persona.id_estado_civil = estado_civil.id_estado_civil
  group by estado_civil.id_estado_civil
  order by total;
END get_estado_civil_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_FRECUENCIA_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select frecuencia_ejercicio.id_frecuencia, Count(persona.id_frecuencia) as total
  from
  persona inner join
  frecuencia_ejercicio on persona.id_frecuencia = frecuencia_ejercicio.id_frecuencia
  group by frecuencia_ejercicio.id_frecuencia
  order by total;
END get_frecuencia_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_INTENCION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select intencion.id_intencion, Count(persona.id_intencion) as total
  from
  persona inner join
  intencion on persona.id_persona = intencion.id_intencion
  group by intencion.id_intencion
  order by total;
END get_intencion_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_NIVEL_DE_EDUCACION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select nivel_de_educacion.id_nivel_de_educacion, Count(persona.id_nivel_de_educacion) as total
  from
  persona inner join
  nivel_de_educacion on persona.id_persona = nivel_de_educacion.id_nivel_de_educacion
  group by nivel_de_educacion.id_nivel_de_educacion
  order by total;
END get_nivel_de_educacion_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_OCUPACION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select ocupacion.id_ocupacion, Count(persona.id_ocupacion) as total
  from
  persona inner join
  ocupacion on persona.id_ocupacion = ocupacion.id_ocupacion
  group by ocupacion.id_ocupacion
  order by total;
END get_ocupacion_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_RANGO_SALARIAL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select rango_salarial.id_rango_salario, Count(persona.id_rango_salarial) as total
  from
  persona inner join
  rango_salarial on persona.id_rango_salarial = rango_salarial.id_rango_salario
  group by rango_salarial.id_rango_salario
  order by total;
END get_rango_salarial_totales;
 
 
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_RELIGION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select religion.id_religion, Count(persona.id_religion) as total
  from
  persona inner join
  religion on persona.id_religion = religion.id_religion
  group by religion.id_religion
  order by total;
END get_religion_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_TENGO_HIJOS_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select tengo_hijos.id_tengo_hijos, Count(persona.id_tengo_hijos) as total
  from
  persona inner join
  tengo_hijos on persona.id_tengo_hijos = tengo_hijos.id_tengo_hijos
  group by tengo_hijos.id_tengo_hijos
  order by total;
END get_tengo_hijos_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_TIPO_DE_CUERPO_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select tipo_de_cuerpo.id_tipo_de_cuerpo, Count(persona.id_tipo_de_cuerpo) as total
  from
  persona inner join
  tipo_de_cuerpo on persona.id_tipo_de_cuerpo = tipo_de_cuerpo.id_tipo_de_cuerpo
  group by tipo_de_cuerpo.id_tipo_de_cuerpo
  order by total;
END get_tipo_de_cuerpo_totales;
 
 
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_WINKS_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select persona.id_persona, Count(winks.id_winked) as total
  from
  winks inner join
  persona on persona.id_persona = winks.id_winked
  group by persona.id_persona
  order by total;
END get_winks_totales;
/
 
  CREATE OR REPLACE PROCEDURE "PRUEBA"."GET_ZODIACAL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select zodiacal.id_signo_zodiacal, Count(persona.id_zodiacal) as total
  from
  persona inner join
  zodiacal on persona.id_zodiacal = zodiacal.id_signo_zodiacal
  group by zodiacal.id_signo_zodiacal
  order by total;
END get_zodiacal_totales;
 
/
 