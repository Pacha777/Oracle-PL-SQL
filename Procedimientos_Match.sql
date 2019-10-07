
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXMATCH" (
       p_ID_persona IN personaxmatch.id_persona%TYPE,
       p_id_match IN personaxmatch.id_match%TYPE
     )

IS
BEGIN

  INSERT INTO personaxmatch("ID_PERSONA", "ID_MATCH")
  VALUES (p_id_persona, p_id_match);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_TENGO_HIJOS" (
	   p_ID_tengo_hijos IN tengo_hijos.id_tengo_hijos%TYPE,
	   p_nuevo IN tengo_hijos.opinion_hijos%TYPE 
     )
    AS
    BEGIN
    UPDATE tengo_hijos
    SET opinion_hijos = p_nuevo
    WHERE id_tengo_hijos = p_id_tengo_hijos;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_HOBBY_PERSONA" (
p_ID_persona IN persona.id_persona%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_hobby from personaxhobby where id_persona = p_id_persona
  
  order by id_hobby;
END Get_hobby_persona;

  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_RELIGION" (
	   p_ID_religion IN religion.id_religion%TYPE,
	   p_nuevo IN religion.nombre_religion%TYPE 
     )
    AS
    BEGIN
    UPDATE religion
    SET nombre_religion = p_nuevo
    WHERE id_religion = p_id_religion;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_CAMBIAR_ALTURA" (
    p_id_altura IN altura.ID_ALTURA%TYPE,
    p_nuevo  IN altura.tamano%TYPE
)
  AS
  BEGIN
  UPDATE ALTURA 
  SET tamano= p_nuevo 
  WHERE id_altura = p_id_altura;
  END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_FRECUENCIA_EJERCICIO" (
	   p_ID_frecuencia IN frecuencia_ejercicio.ID_frecuencia%TYPE,
	   p_nueva IN frecuencia_ejercicio.cantidad%TYPE
     )
     
    AS
    BEGIN
    UPDATE frecuencia_ejercicio
    SET cantidad = p_nueva
    WHERE id_frecuencia = p_id_frecuencia;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_PERSONA" (
	   p_ID_persona IN persona.id_persona%TYPE,
	   p_nombre_nuevo IN persona.nombre%TYPE,
     p_apellido_nuevo IN persona.apellido%TYPE,
	   p_fumador_nuevo IN persona.fumador%TYPE,
	   p_tiene_mascota_nuevo IN persona.tiene_mascota%TYPE,
	   p_frase_identificadora_nuevo IN persona.frase_identificadora%TYPE,
     p_apodo_nuevo IN persona.apodo%TYPE,
	   p_cantidad_de_hijos_nuevo IN persona.cantidad_de_hijos%TYPE,  
     p_id_altura_nuevo IN persona.cantidad_de_hijos%TYPE, 
     p_id_bebedor_nuevo IN persona.id_bebedor%TYPE, 
     p_id_ciudad_nuevo IN persona.id_ciudad%TYPE, 
     p_id_color_de_ojos_nuevo IN persona.id_color_ojos%TYPE, 
     p_id_color_de_pelo_nuevo IN persona.id_color_pelo%TYPE, 
     p_id_color_de_piel_nuevo IN persona.id_color_piel%TYPE, 
     p_id_estado_civil_nuevo IN persona.id_estado_civil%TYPE, 
     p_id_fecha_de_nacimiento_nuevo IN persona.id_fecha_de_nacimiento%TYPE, 
     p_id_frecuencia_nuevo IN persona.id_frecuencia%TYPE, 
     p_genero_nuevo IN persona.genero%TYPE, 
     p_id_intencion_nuevo IN persona.id_intencion%TYPE, 
     p_id_nivel_de_educacion_nuevo IN persona.id_nivel_de_educacion%TYPE, 
     p_id_ocupacion_nuevo IN persona.id_ocupacion%TYPE, 
     p_id_peso_nuevo IN persona.id_peso%TYPE, 
     p_id_tipo_de_cuerpo_nuevo IN persona.id_tipo_de_cuerpo%TYPE, 
     p_id_religion_nuevo IN persona.id_religion%TYPE, 
     p_id_rango_salarial_nuevo IN persona.id_rango_salarial%TYPE, 
     p_id_tengo_hijos_nuevo IN persona.id_tengo_hijos%TYPE, 
     p_id_zodiacal_nuevo IN persona.id_zodiacal%TYPE
     )
     
    AS
    BEGIN
    UPDATE persona
    SET nombre = p_nombre_nuevo,
     apellido = p_apellido_nuevo,
     fumador = p_fumador_nuevo,
     tiene_mascota = p_tiene_mascota_nuevo,
     frase_identificadora = p_frase_identificadora_nuevo,
     apodo = p_apodo_nuevo,
     cantidad_de_hijos = p_cantidad_de_hijos_nuevo,
     id_altura = p_cantidad_de_hijos_nuevo,
     id_bebedor = p_id_bebedor_nuevo,
     id_ciudad = p_id_ciudad_nuevo,
     id_color_ojos = p_id_color_de_ojos_nuevo,
     id_color_pelo = p_id_color_de_pelo_nuevo,
     id_color_piel = p_id_color_de_piel_nuevo,
     id_estado_civil = p_id_estado_civil_nuevo,
     id_fecha_de_nacimiento = p_id_fecha_de_nacimiento_nuevo,
     id_frecuencia = p_id_frecuencia_nuevo,
     genero = p_genero_nuevo,
     id_intencion = p_id_intencion_nuevo,
     id_nivel_de_educacion = p_id_nivel_de_educacion_nuevo,
     id_ocupacion = p_id_ocupacion_nuevo,
     id_peso = p_id_peso_nuevo,
     id_tipo_de_cuerpo = p_id_tipo_de_cuerpo_nuevo,
     id_religion = p_id_religion_nuevo,
     id_rango_salarial = p_id_rango_salarial_nuevo,
     id_tengo_hijos = p_id_tengo_hijos_nuevo,
     id_zodiacal = p_id_zodiacal_nuevo
    WHERE id_persona = p_ID_persona;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_COLOR_DE_PIEL" (
       p_COLOR_PIEL IN color_de_piel.COLOR%TYPE
     )

IS
BEGIN

  INSERT INTO color_de_piel("COLOR")
  VALUES (p_color_piel);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_COLOR_DE_PIEL" (
	   p_ID_COLOR_PIEL IN color_de_piel.ID_COLOR_PIEL%TYPE,
	   p_nuevo IN color_de_piel.COLOR%TYPE
     )
     
  AS
  BEGIN
  UPDATE color_de_piel 
  SET color = p_nuevo 
  WHERE id_color_piel = p_id_color_piel;
  END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."BUSQUEDA_POR_PAIS" (
       p_pais VARCHAR,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_persona, nombre, apellido
from persona
where id_ciudad = (select id_ciudad from ciudad where id_pais = p_pais)
order by apellido;

END busqueda_por_pais;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_GENERO" (
       p_genero_persona IN genero.genero_persona%TYPE
     )

IS
BEGIN

  INSERT INTO genero("GENERO_PERSONA")
  VALUES (p_genero_persona);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_PESO_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select peso.id_peso, peso.kilogramos, Count(persona.id_persona) as total
  from
  persona inner join
  peso on persona.id_persona = peso.id_peso
  group by peso.id_peso
  order by total;
END get_peso_totales;

/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."REGRESAR_PERSONAS" (c OUT SYS_REFCURSOR)
AS
BEGIN
open c for
  select apellido from persona where id_altura !=null;
END regresar_personas;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_CIUDAD" (
       p_nombre_ciudad IN ciudad.nombre_ciudad%TYPE,
       p_ID_pais IN ciudad.id_pais%TYPE
     )

IS
BEGIN

  INSERT INTO ciudad("NOMBRE_CIUDAD", "ID_PAIS")
  VALUES (p_nombre_ciudad, p_id_pais);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_DEPORTES_PERSONA" (
p_ID_persona IN persona.id_persona%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_deporte from personaxdeporte where id_persona = p_id_persona
  
  order by id_deporte;
END Get_deportes_persona;
  

  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PAREJAXINTERESES" (
       p_ID_pareja IN parejaxintereses.id_pareja%TYPE,
       p_id_intereses IN parejaxintereses.id_intereses%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXintereses("ID_PAREJA", "ID_INTERESES")
  VALUES (p_id_pareja, p_id_intereses);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_ZODIACAL" (
       p_signo IN zodiacal.signo%TYPE
     )

IS
BEGIN

  INSERT INTO zodiacal("SIGNO")
  VALUES (p_signo);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONA" (
     p_nombre IN persona.nombre%TYPE,
     p_apellido IN persona.apellido%TYPE,
     p_fumador IN persona.fumador%TYPE,
     p_tiene_mascota IN persona.tiene_mascota%TYPE,
     p_frase_identificadora IN persona.frase_identificadora%TYPE,
     p_apodo IN persona.apodo%TYPE,
     p_cantidad_de_hijos IN persona.cantidad_de_hijos%TYPE,  
     p_id_altura IN persona.id_altura%TYPE, 
     p_id_bebedor IN persona.id_bebedor%TYPE, 
     p_id_ciudad IN persona.id_ciudad%TYPE, 
     p_id_color_de_ojos IN persona.id_color_ojos%TYPE, 
     p_id_color_de_pelo IN persona.id_color_pelo%TYPE, 
     p_id_color_de_piel IN persona.id_color_piel%TYPE, 
     p_id_estado_civil IN persona.id_estado_civil%TYPE, 
     p_id_fecha_de_nacimiento IN persona.id_fecha_de_nacimiento%TYPE, 
     p_id_frecuencia IN persona.id_frecuencia%TYPE, 
     p_genero IN persona.genero%TYPE, 
     p_id_intencion IN persona.id_intencion%TYPE, 
     p_id_nivel_de_educacion IN persona.id_nivel_de_educacion%TYPE, 
     p_id_ocupacion IN persona.id_ocupacion%TYPE, 
     p_id_peso IN persona.id_peso%TYPE, 
     p_id_tipo_de_cuerpo IN persona.id_tipo_de_cuerpo%TYPE, 
     p_id_religion IN persona.id_religion%TYPE, 
     p_id_rango_salarial IN persona.id_rango_salarial%TYPE, 
     p_id_tengo_hijos IN persona.id_tengo_hijos%TYPE, 
     p_id_zodiacal IN persona.id_zodiacal%TYPE,
     p_pass IN persona.pass%TYPE,
     p_email IN persona.email%TYPE
     )
      
IS
BEGIN
 
  INSERT INTO persona("NOMBRE",
                      "APELLIDO",
                      "FUMADOR",
                      "TIENE_MASCOTA",
                      "FRASE_IDENTIFICADORA",
                      "APODO",
                      "CANTIDAD_DE_HIJOS",
                      "ID_ALTURA",
                      "ID_BEBEDOR",
                      "ID_CIUDAD",
                      "ID_COLOR_OJOS",
                      "ID_COLOR_PELO",
                      "ID_COLOR_PIEL",
                      "ID_ESTADO_CIVIL",
                      "ID_FECHA_DE_NACIMIENTO",
                      "ID_FRECUENCIA",
                      "GENERO",
                      "ID_INTENCION",
                      "ID_NIVEL_DE_EDUCACION",
                      "ID_OCUPACION",
                      "ID_PESO",
                      "ID_TIPO_DE_CUERPO",
                      "ID_RELIGION",
                      "ID_RANGO_SALARIAL",
                      "ID_TENGO_HIJOS",
                      "ID_ZODIACAL",
                      "PASS",
                      "EMAIL"
                      ) 
  VALUES (p_nombre, 
          p_apellido,  
          p_fumador, 
          p_tiene_mascota , 
          p_frase_identificadora, 
          p_apodo, 
          p_cantidad_de_hijos,
          p_id_altura,
          p_id_bebedor,
          p_id_ciudad, 
          p_id_color_de_ojos, 
          p_id_color_de_pelo,
          p_id_color_de_piel, 
          p_id_estado_civil, 
          p_id_fecha_de_nacimiento, 
          p_id_frecuencia,  
          p_genero,
          p_id_intencion,
          p_id_nivel_de_educacion, 
          p_id_ocupacion, 
          p_id_peso, 
          p_id_tipo_de_cuerpo,
          p_id_religion, 
          p_id_rango_salarial, 
          p_id_tengo_hijos, 
          p_id_zodiacal,
          p_pass, 
          p_email
          );
 
  COMMIT;
 
END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_IDIOMA_PERSONA" (
p_ID_persona IN persona.id_persona%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_idioma from personaxidioma where id_persona = p_id_persona
  
  order by id_idioma;
END Get_idioma_persona;

  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."VISITAS_PERFIL" (
       p_ID_usuario  IN persona.id_persona%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_clicker
from click
where id_clickd = p_id_usuario;

END visitas_perfil;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_FOTO" (
       p_subir_foto IN foto.subir_foto%TYPE,
     p_descripcion IN foto.descripcion%TYPE,
     p_ID_persona IN foto.ID_persona%TYPE
     )

IS
BEGIN

  INSERT INTO foto("SUBIR_FOTO","DESCRIPCION", "ID_PERSONA")
  VALUES (p_subir_foto, p_descripcion, p_id_persona);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_NIVEL_DE_EDUCACION" (
	   p_ID_nivel_de_educacion IN nivel_de_educacion.ID_nivel_de_educacion%TYPE,
	   p_nuevo IN nivel_de_educacion.nivel_educacion%TYPE
     )
    AS
    BEGIN
    UPDATE nivel_de_educacion 
    SET nivel_educacion = p_nuevo
    WHERE id_nivel_de_educacion = p_id_nivel_de_educacion;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_INTENCION" (
       p_tipo_de_intencion IN intencion.tipo_de_intencion%TYPE
     )

IS
BEGIN

  INSERT INTO intencion("TIPO_DE_INTENCION")
  VALUES (p_tipo_de_intencion);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_CLICK" (
       p_ID_clicker IN click.id_clicker%TYPE,
     p_ID_clickd IN click.id_clickd%TYPE,
     p_fecha_del_click IN click.fecha_del_click%TYPE
     )

IS
BEGIN

  INSERT INTO click("ID_CLICKER", "ID_CLICKD", "FECHA_DEL_CLICK")
  VALUES (p_id_clicker, p_id_clickd, p_fecha_del_click);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_IDIOMA_PAREJA" (
p_ID_pareja IN pareja.id_pareja%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_idioma from parejaxidioma where id_pareja = p_id_pareja
  
  order by id_idioma;
END Get_idioma_pareja;
  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_INTERESES_PAREJA" (
p_ID_pareja IN pareja.id_pareja%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_intereses from parejaxintereses where id_pareja = p_id_pareja
  
  order by id_intereses;
END Get_intereses_pareja;
  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_BEBEDOR_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
   open p_recordset for
  select bebedor.id_bebedor, bebedor.frecuencia, Count(persona.id_bebedor) as total
  from
  persona inner join
  bebedor on persona.id_bebedor = bebedor.id_bebedor
  group by bebedor.id_bebedor
  order by total;
END get_bebedor_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PAREJAXHOBBY" (
       p_ID_pareja IN parejaxhobby.id_pareja%TYPE,
       p_id_hobby IN parejaxhobby.id_hobby%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXhobby("ID_PAREJA", "ID_HOBBY")
  VALUES (p_id_pareja, p_id_hobby);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_HOBBY" (
	   p_ID_hobby IN hobby.id_hobby%TYPE,
	   p_nuevo IN hobby.actividad_hobby%TYPE
     )
    AS
    BEGIN
    UPDATE hobby
    SET actividad_hobby = p_nuevo
    WHERE id_hobby = p_id_hobby;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_FECHA_DE_NACIMIENTO" (
	   p_ID_fecha_de_nacimiento IN fecha_de_nacimiento.ID_fecha_de_nacimiento%TYPE,
	   p_nuevo IN fecha_de_nacimiento.nacimiento%TYPE
     )
    
    AS
    BEGIN
    UPDATE fecha_de_nacimiento
    SET nacimiento = p_nuevo
    WHERE id_fecha_de_nacimiento = p_id_fecha_de_nacimiento;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_OCUPACION" (
	   p_ID_ocupacion IN ocupacion.id_ocupacion%TYPE,
	   p_nuevo IN ocupacion.ocupacion%TYPE
     )
    AS
    BEGIN
    UPDATE ocupacion 
    SET  ocupacion = p_nuevo
    WHERE id_ocupacion = p_id_ocupacion;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_ALTURA_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
open p_recordset for
  select altura.id_altura, altura.tamano, Count(persona.id_altura) as total
  from
  persona inner join
  altura on persona.id_altura = altura.id_altura
  group by altura.id_altura
  order by total;
END get_altura_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."BUSQUEDA_POR_CIUDAD" (
       p_ciudad IN ciudad.id_ciudad%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_persona, nombre, apellido
from persona
where id_ciudad = p_ciudad
order by apellido;

END busqueda_por_ciudad;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_CIUDAD" (
	   p_ID_ciudad IN ciudad.id_ciudad%TYPE,
	   p_nombre_ciudad_nuevo IN ciudad.nombre_ciudad%TYPE,
     p_id_pais_nuevo IN ciudad.id_pais%TYPE
     )
      
    AS
    BEGIN
    UPDATE ciudad 
    SET nombre_ciudad = p_nombre_ciudad_nuevo, id_pais = p_id_pais_nuevo
    WHERE id_ciudad = p_id_ciudad;
    END; 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_NIVEL_DE_EDUCACION" (
       p_nivel_educacion IN nivel_de_educacion.nivel_educacion%TYPE
     )

IS
BEGIN

  INSERT INTO nivel_de_educacion("NIVEL_EDUCACION")
  VALUES (p_nivel_educacion);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXIDIOMA" (
       p_ID_persona IN personaxidioma.id_persona%TYPE,
       p_id_idioma IN personaxidioma.id_idioma%TYPE
     )

IS
BEGIN

  INSERT INTO personaxidioma("ID_PERSONA", "ID_IDIOMA")
  VALUES (p_id_persona, p_id_idioma);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_NO_MATCH" (
       p_id_no_matchee IN no_match.id_no_matcher%TYPE,
     p_id_no_matcher IN no_match.id_no_matchee%TYPE
     )

IS
BEGIN

  INSERT INTO no_match("ID_NO_MATCHER", "ID_NO_MATCHEE")
  VALUES (p_id_no_matcher ,p_id_no_matchee);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_MUJERES_PARA_HOMBRE_HETERO" (p_recordset OUT SYS_REFCURSOR)
AS
  BEGIN
open p_recordset for
  Select persona.id_persona from persona 
  inner join pareja on persona.genero = 'Mujer' and
  pareja.id_genero = 1 or pareja.id_genero = 3 where pareja.id_persona = persona.id_persona;
  
  END Get_mujeres_para_hombre_hetero;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_OCUPACION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select ocupacion.id_ocupacion, ocupacion.ocupacion, Count(persona.id_ocupacion) as total
  from
  persona inner join
  ocupacion on persona.id_ocupacion = ocupacion.id_ocupacion
  group by ocupacion.id_ocupacion
  order by total;
END get_ocupacion_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_ESTADO_CIVIL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select estado_civil.id_estado_civil, estado_civil.estado_civil_actual, Count(persona.id_estado_civil) as total
  from
  persona inner join
  estado_civil on persona.id_estado_civil = estado_civil.id_estado_civil
  group by estado_civil.id_estado_civil
  order by total;
END get_estado_civil_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."CONSULTAR_MATCH_LIST" (
       p_ID_usuario  IN persona.id_persona%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_matchee
from match_positivo
where id_matcher = p_id_usuario;

END consultar_match_list;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_WINKS_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select persona.id_persona, persona.nombre, persona.apellido, Count(winks.id_winked) as total
  from
  winks inner join
  persona on persona.id_persona = winks.id_winked
  group by persona.id_persona
  order by total;
END get_winks_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_EVENTOS" (
	   p_ID_eventos IN eventos.ID_eventos%TYPE,
	   p_nombre_del_evento_nuevo IN eventos.nombre_del_evento%TYPE,
     p_lugar_del_evento_nuevo IN eventos.lugar_del_evento%TYPE,
     p_fecha_de_evento_nuevo IN eventos.id_fecha_de_evento%TYPE
     )
     
     AS
     BEGIN
     UPDATE eventos
     SET nombre_del_evento = p_nombre_del_evento_nuevo, lugar_del_evento = p_lugar_del_evento_nuevo, id_fecha_de_evento = p_fecha_de_evento_nuevo
     WHERE id_eventos = p_id_eventos;
     END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_HOMBRES_PARA_HOMBRE_HOMO" (p_recordset OUT SYS_REFCURSOR)
AS
  BEGIN
open p_recordset for
  Select persona.id_persona from persona 
  inner join pareja on persona.genero = 'Hombre' and
  pareja.id_genero = 1 or pareja.id_genero = 3 where pareja.id_persona = persona.id_persona;
  
  END Get_hombres_para_hombre_homo;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_RANGO_SALARIAL" (
	   p_ID_rango_salarial IN rango_salarial.id_rango_salario%TYPE,
	   p_nuevo IN rango_salarial.salario%TYPE 
     )
     AS
    BEGIN
    UPDATE rango_salarial
    SET salario = p_nuevo
    WHERE id_rango_salario = p_id_rango_salarial;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_EVENTOS" (
       p_nombre_del_evento IN eventos.nombre_del_evento%TYPE,
     p_lugar_del_evento IN eventos.lugar_del_evento%TYPE,
     p_ID_fecha_de_evento IN eventos.ID_fecha_de_evento%TYPE
     )

IS
BEGIN

  INSERT INTO eventos( "NOMBRE_DEL_EVENTO","LUGAR_DEL_EVENTO", "ID_FECHA_DE_EVENTO")
  VALUES (p_nombre_del_evento, p_lugar_del_evento, p_ID_fecha_de_evento);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_INTERESES" (
       p_tipo_de_intereses IN intereses.tipo_intereses%TYPE
     )

IS
BEGIN

  INSERT INTO intereses("TIPO_INTERESES")
  VALUES (p_tipo_de_intereses);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_TIPO_DE_CUERPO" (
       p_descripcion IN tipo_de_cuerpo.descripcion%TYPE
     )

IS
BEGIN

  INSERT INTO tipo_de_cuerpo("DESCRIPCION")
  VALUES (p_descripcion);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_PAREJA" (
	   p_ID_pareja IN pareja.id_pareja%TYPE,
	   p_fumador_nuevo IN pareja.fumador%TYPE,
     p_tiene_mascota_nuevo IN pareja.tiene_mascota%TYPE,
	   p_tiene_hijos_nuevo IN pareja.tiene_hijos%TYPE,
     p_id_bebedor_nuevo IN pareja.id_bebedor%TYPE,
     p_id_intencion_nuevo IN pareja.id_intencion%TYPE,
     p_id_rango_de_edad_nuevo IN pareja.id_rango_de_edad%TYPE,
     p_id_rango_salarial_nuevo IN pareja.id_rango_salarial%TYPE,
     p_id_tengo_hijos_nuevo IN pareja.id_tengo_hijos%TYPE,
     p_id_tipo_de_cuerpo_nuevo IN pareja.id_tipo_de_cuerpo%TYPE
     )
     
    AS
    BEGIN
    UPDATE pareja 
    SET fumador = p_fumador_nuevo, tiene_mascota = p_tiene_mascota_nuevo, tiene_hijos = p_tiene_hijos_nuevo, id_bebedor = p_id_bebedor_nuevo, id_intencion = p_id_intencion_nuevo, id_rango_de_edad = p_id_rango_de_edad_nuevo, id_rango_salarial = p_id_rango_salarial_nuevo, id_tengo_hijos = p_id_tengo_hijos_nuevo, id_tipo_de_cuerpo = id_tipo_de_cuerpo
    WHERE id_pareja = p_ID_pareja;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_BEBEDOR" (
       p_frecuencia IN bebedor.frecuencia%TYPE
     )

IS
BEGIN

  INSERT INTO bebedor("FRECUENCIA")
  VALUES (p_frecuencia);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_ESTADO_CIVIL" (
       p_estado_civil_actual IN estado_civil.estado_civil_actual%TYPE
     )

IS
BEGIN

  INSERT INTO estado_civil("ESTADO_CIVIL_ACTUAL")
  VALUES (p_estado_civil_actual);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXDEPORTE" (
       p_ID_persona IN personaxdeporte.id_persona%TYPE,
       p_id_deporte IN personaxdeporte.id_deporte%TYPE
     )

IS
BEGIN

  INSERT INTO personaxdeporte("ID_PERSONA", "ID_DEPORTE")
  VALUES (p_id_persona, p_id_deporte);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."BUSQUEDA_POR_ESTADO_CIVIL" (
       p_estado IN estado_civil.id_estado_civil%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_persona, nombre, apellido
from persona
where id_estado_civil = p_estado
order by apellido;

END busqueda_por_estado_civil;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_DEPORTES" (
       p_deportes IN deportes.tipo_deporte%TYPE
     )

IS
BEGIN

  INSERT INTO deportes( "TIPO_DEPORTE")
  VALUES ( p_deportes);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_PESO" (
	   p_ID_peso IN peso.id_peso%TYPE,
	   p_nuevo IN peso.kilogramos%TYPE 
     )
    AS
    BEGIN
    UPDATE peso 
    SET kilogramos = p_nuevo
    WHERE id_peso = p_id_peso;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_GENERO" (
	   p_ID_genero IN genero.ID_genero%TYPE,
	   p_nuevo IN genero.genero_persona%TYPE
     )
    AS
    BEGIN
    UPDATE genero
    SET genero_persona = p_nuevo
    WHERE id_genero = p_id_genero;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_COLOR_OJOS_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select color_de_ojos.id_color_ojos, color_de_ojos.color, Count(persona.id_color_ojos) as total
  from
  persona inner join
  color_de_ojos on persona.id_color_ojos = color_de_ojos.id_color_ojos
  group by color_de_ojos.id_color_ojos
  order by total;
END get_color_ojos_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_HOMBRES_PARA_MUJER_HETERO" (p_recordset OUT SYS_REFCURSOR)
AS
  BEGIN
open p_recordset for
  Select persona.id_persona from persona 
  inner join pareja on persona.genero = 'Hombre' and
  pareja.id_genero = 2 or pareja.id_genero = 3 where pareja.id_persona = persona.id_persona;
  
  END Get_hombres_para_mujer_hetero;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_CIUDAD_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select ciudad.id_ciudad, ciudad.nombre_ciudad, Count(persona.id_ciudad) as total
  from
  persona inner join
  ciudad on persona.id_ciudad = ciudad.id_ciudad
  group by ciudad.id_ciudad
  order by total;
END get_ciudad_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_RANGO_SALARIAL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select rango_salarial.id_rango_salario, rango_salarial.salario, Count(persona.id_rango_salarial) as total
  from
  persona inner join
  rango_salarial on persona.id_rango_salarial = rango_salarial.id_rango_salario
  group by rango_salarial.id_rango_salario
  order by total;
END get_rango_salarial_totales;
 
 
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."REGRESAR_NOMBRE_APELLIDOS" (c OUT SYS_REFCURSOR)

AS

BEGIN

  open c for
  select nombre,apellido from persona where nombre != null;

END  regresar_nombre_apellidos;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_TENGO_HIJOS_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select tengo_hijos.id_tengo_hijos, tengo_hijos.opinion_hijos, Count(persona.id_tengo_hijos) as total
  from
  persona inner join
  tengo_hijos on persona.id_tengo_hijos = tengo_hijos.id_tengo_hijos
  group by tengo_hijos.id_tengo_hijos
  order by total;
END get_tengo_hijos_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PESO" (
       p_kilogramos IN peso.kilogramos%TYPE
     )

IS
BEGIN

  INSERT INTO peso("KILOGRAMOS")
  VALUES (p_kilogramos);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXNO_MATCH" (
       p_ID_persona IN personaxno_match.id_persona%TYPE,
       p_id_no_match IN personaxno_match.id_no_match%TYPE
     )

IS
BEGIN

  INSERT INTO personaxno_match("ID_PERSONA", "ID_NO_MATCH")
  VALUES (p_id_persona, p_id_no_match);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXCLICKS" (
       p_ID_persona IN personaxclicks.id_persona%TYPE,
       p_id_clicks IN personaxclicks.id_clicks%TYPE
     )

IS
BEGIN

  INSERT INTO personaxclicks("ID_PERSONA", "ID_CLICKS")
  VALUES (p_id_persona, p_id_clicks);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXHOBBY" (
       p_ID_persona IN personaxhobby.id_persona%TYPE,
       p_id_hobby IN personaxhobby.id_hobby%TYPE
     )

IS
BEGIN

  INSERT INTO personaxhobby("ID_PERSONA", "ID_HOBBY")
  VALUES (p_id_persona, p_id_hobby);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."MATCH_MAKER" (
p_ID_persona IN persona.id_persona%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
candidatos SYS_REFCURSOR;
preferencia NUMBER;
genero_usuario VARCHAR2(20);
individuo NUMBER;
contador number;
extra number;
pareja_preferida number;
comparacion1 varchar2(20);
comparacion2 varchar2(20);
comparacion3 number;
comparacion4 number;
comparacion5 number;
comparacion6 number;
lista_pareja SYS_REFCURSOR;
lista_persona SYS_REFCURSOR;
resultado temp_table;
  BEGIN
  
  delete from match_container;
  contador := 0;
  extra := 0;
  SELECT pareja.id_genero into preferencia 
  from pareja inner join persona
  on pareja.id_persona = persona.id_persona ;
  
  SELECT genero into genero_usuario
  from persona where p_id_persona = id_persona;
  
  SELECT pareja.id_pareja into pareja_preferida
  from pareja where pareja.id_persona = p_id_persona;
  
  CASE
  when genero_usuario = 'Hombre' and preferencia = 1 THEN get_mujeres_para_hombre_hetero(candidatos);
  when genero_usuario = 'Hombre' and preferencia = 2 THEN get_hombres_para_hombre_homo(candidatos);
  when genero_usuario = 'Hombre' and preferencia = 3 THEN get_para_hombres_bi(candidatos);
  when genero_usuario = 'Mujer' and preferencia = 1 THEN get_hombres_para_mujer_hetero(candidatos);
  when genero_usuario = 'Mujer' and preferencia = 2 THEN get_mujeres_para_mujeres_homo(candidatos);
  when genero_usuario = 'Mujer' and preferencia = 3 THEN get_para_mujeres_bi(candidatos);
  
  END CASE;

  
  LOOP
  fetch candidatos into individuo;
  EXIT WHEN candidatos%NOTFOUND;
  contador := 0;
  extra := 0;
  SELECT persona.fumador into comparacion1 from persona where persona.id_persona = individuo;
  SELECT pareja.fumador into comparacion2 from pareja where pareja.id_pareja = pareja_preferida;
  IF comparacion1 = comparacion2 
  then
  contador := contador + 1;
  END IF;
  
  SELECT persona.tiene_mascota into comparacion1 from persona where persona.id_persona = individuo;
  SELECT pareja.tiene_mascota into comparacion2 from pareja where pareja.id_pareja = pareja_preferida;
   IF comparacion1 = comparacion2 
  then
  contador := contador + 1;
  END IF;
  
  SELECT persona.id_bebedor into comparacion3 from persona where persona.id_persona = individuo;
  SELECT pareja.id_bebedor into comparacion4 from pareja where pareja.id_pareja = pareja_preferida;
  IF comparacion3 = comparacion4 
  then
  contador := contador + 1;
  END IF;

  SELECT persona.id_intencion into comparacion3 from persona where persona.id_persona = individuo;
  SELECT pareja.id_intencion into comparacion4 from pareja where pareja.id_pareja = pareja_preferida;
  IF comparacion3 = comparacion4 
  then
  contador := contador + 1;
  END IF;
  
  SELECT persona.id_tengo_hijos into comparacion3 from persona where persona.id_persona = individuo;
  SELECT pareja.id_tengo_hijos into comparacion4 from pareja where pareja.id_pareja = pareja_preferida;
  IF comparacion3 = comparacion4 
  then
  contador := contador + 1;
  END IF;
  
  SELECT persona.id_tipo_de_cuerpo into comparacion3 from persona where persona.id_persona = individuo;
  SELECT pareja.id_tipo_de_cuerpo into comparacion4 from pareja where pareja.id_pareja = pareja_preferida;
  IF comparacion3 = comparacion4 
  then
  contador := contador + 1;
  END IF;
  
  SELECT persona.id_fecha_de_nacimiento into comparacion3 from persona where persona.id_persona = individuo;
  SELECT pareja.id_rango_de_edad into comparacion6 from pareja where pareja.id_pareja = pareja_preferida;
  SELECT trunc( months_between(sysdate, nacimiento) / 12 ) into comparacion5
  from fecha_de_nacimiento where id_fecha_de_nacimiento = comparacion3; 
  SELECT piso into comparacion3 from rango_de_edad where rango_de_edad.id_rango_de_edad = comparacion6;
  SELECT techo into comparacion4 from rango_de_edad where rango_de_edad.id_rango_de_edad = comparacion6;
  IF comparacion5 between comparacion3 and comparacion4
  then
  contador := contador + 1;
  END IF;



 get_hobby_pareja(pareja_preferida, lista_pareja);
      LOOP
      get_hobby_persona(individuo, lista_persona);
      fetch lista_pareja into comparacion3;
      EXIT WHEN lista_pareja%NOTFOUND;
           LOOP
            fetch lista_persona into comparacion4;
            EXIT WHEN lista_persona%NOTFOUND;
            IF comparacion3 = comparacion4
            then contador := contador + 1;
            extra := extra + 1;
            EXIT;
            END IF;
           END LOOP;
 
      END LOOP;
      
  get_idioma_pareja(pareja_preferida, lista_pareja);
      LOOP
      get_idioma_persona(individuo, lista_persona);
      fetch lista_pareja into comparacion3;
      EXIT WHEN lista_pareja%NOTFOUND;
           LOOP
            fetch lista_persona into comparacion4;
            EXIT WHEN lista_persona%NOTFOUND;
            IF comparacion3 = comparacion4
            then contador := contador + 1;
            extra := extra + 1;
            EXIT;
            END IF;
           END LOOP;
 
      END LOOP;
  
   get_intereses_pareja(pareja_preferida, lista_pareja);
      LOOP
      get_intereses_persona(individuo, lista_persona);
      fetch lista_pareja into comparacion3;
      EXIT WHEN lista_pareja%NOTFOUND;
           LOOP
            fetch lista_persona into comparacion4;
            EXIT WHEN lista_persona%NOTFOUND;
            IF comparacion3 = comparacion4
            then contador := contador + 1;
            extra := extra + 1;
            EXIT;
            END IF;
           END LOOP;
 
      END LOOP;
      
    get_deportes_pareja(pareja_preferida, lista_pareja);
      LOOP
      get_deportes_persona(individuo, lista_persona);
      fetch lista_pareja into comparacion3;
      EXIT WHEN lista_pareja%NOTFOUND;
           LOOP
            fetch lista_persona into comparacion4;
            EXIT WHEN lista_persona%NOTFOUND;
            IF comparacion3 = comparacion4
            then contador := contador + 1;
            extra := extra + 1;
            EXIT;
            END IF;
           END LOOP;
 
      END LOOP;
      
      IF
      contador/(8 + extra) >= 0.8 then
      INSERT INTO MATCH_CONTAINER("ID_PERSONA") values(individuo);
      END IF;
  
  END LOOP;
  open p_recordset for
  Select ID_PERSONA from match_container;
  
  END match_maker;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_COLOR_PIEL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select color_de_piel.id_color_piel,color_de_piel.color, Count(persona.id_color_piel) as total
  from
  persona inner join
  color_de_piel on persona.id_color_piel = color_de_piel.id_color_piel
  group by color_de_piel.id_color_piel
  order by total;
END get_color_piel_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_RELIGION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
 open p_recordset for
  select religion.id_religion, religion.nombre_religion, Count(persona.id_religion) as total
  from
  persona inner join
  religion on persona.id_religion = religion.id_religion
  group by religion.id_religion
  order by total;
END get_religion_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_COLOR_PELO_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
   open p_recordset for
  select color_de_pelo.id_color_pelo, color_de_pelo.color, Count(persona.id_color_pelo) as total
  from
  persona inner join
  color_de_pelo on persona.id_color_pelo = color_de_pelo.id_color_pelo
  group by color_de_pelo.id_color_pelo
  order by total;
END get_color_pelo_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."BUSQUEDA_POR_NOMBRE" (
       p_nombre VARCHAR,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_persona, nombre, apellido, apodo
from persona
where nombre like p_nombre
or apellido like p_nombre
or apodo like p_nombre
order by apellido;

END busqueda_por_nombre;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_HOBBY_PAREJA" (
p_ID_pareja IN pareja.id_pareja%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_hobby from parejaxhobby where id_pareja = p_id_pareja
  
  order by id_hobby;
END Get_hobby_pareja;
  

  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_FECHA_DE_EVENTOS" (
       p_fecha_evento IN fecha_de_evento.fecha_evento%TYPE
     )

IS
BEGIN

  INSERT INTO fecha_de_evento("FECHA_EVENTO")
  VALUES (p_fecha_evento);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_NIVEL_DE_EDUCACION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select nivel_de_educacion.id_nivel_de_educacion, nivel_de_educacion.nivel_educacion, Count(persona.id_nivel_de_educacion) as total
  from
  persona inner join
  nivel_de_educacion on persona.id_persona = nivel_de_educacion.id_nivel_de_educacion
  group by nivel_de_educacion.id_nivel_de_educacion
  order by total;
END get_nivel_de_educacion_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_OCUPACION" (
       p_ocupacion IN ocupacion.ocupacion%TYPE
     )

IS
BEGIN

  INSERT INTO ocupacion("OCUPACION")
  VALUES (p_ocupacion);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_EDAD_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select fecha_de_nacimiento.nacimiento, Count(persona.id_fecha_de_nacimiento) as total
  from
  persona inner join
  fecha_de_nacimiento on persona.id_fecha_de_nacimiento = fecha_de_nacimiento.id_fecha_de_nacimiento
  group by fecha_de_nacimiento.nacimiento
  order by total;
END get_edad_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXEVENTOS" (
       p_ID_persona IN personaxeventos.id_persona%TYPE,
       p_id_eventos IN personaxeventos.id_eventos%TYPE
     )

IS
BEGIN

  INSERT INTO personaxeventos("ID_PERSONA", "ID_EVENTOS")
  VALUES (p_id_persona, p_id_eventos);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PAREJA" (
     p_fumador IN pareja.fumador%TYPE,
     p_tiene_mascota IN pareja.tiene_mascota%TYPE,
     p_tiene_hijos IN pareja.tiene_hijos%TYPE,
     p_id_bebedor IN pareja.id_bebedor%TYPE,
     p_id_intencion IN pareja.id_intencion%TYPE,
     p_id_rango_de_edad IN pareja.id_rango_de_edad%TYPE,
     p_id_rango_salarial IN pareja.id_rango_salarial%TYPE,
     p_id_tengo_hijos IN pareja.id_tengo_hijos%TYPE,
     p_id_tipo_de_cuerpo IN pareja.id_tipo_de_cuerpo%TYPE,
     p_ID_persona IN pareja.id_persona%TYPE
     )

IS
BEGIN

  INSERT INTO pareja("FUMADOR", "TIENE_MASCOTA", "TIENE_HIJOS", "ID_BEBEDOR", "ID_INTENCION", "ID_RANGO_DE_EDAD", "ID_RANGO_SALARIAL", "ID_TENGO_HIJOS", "ID_TIPO_DE_CUERPO", "ID_PERSONA")
  VALUES ( p_fumador, p_tiene_mascota, p_tiene_hijos, p_id_bebedor, p_id_intencion, p_id_rango_de_edad, p_id_rango_salarial, p_id_tengo_hijos, p_id_tipo_de_cuerpo, p_id_persona);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_FRECUENCIA_EJERCICIO" (
       p_cantidad IN frecuencia_ejercicio.cantidad%TYPE
     )

IS
BEGIN

  INSERT INTO frecuencia_ejercicio("CANTIDAD")
  VALUES (p_cantidad);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_PAIS" (
	   p_ID_pais IN pais.id_pais%TYPE,
	   p_nuevo IN pais.nombre_pais%TYPE
     )
    AS
    BEGIN
    UPDATE pais 
    SET nombre_pais = p_nuevo
    WHERE id_pais = p_id_pais;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_COLOR_DE_PELO" (
	   p_ID_COLOR_PELO IN color_de_pelo.ID_COLOR_PELO%TYPE,
	   p_nuevo IN color_de_pelo.COLOR%TYPE
     )
     
  AS
  BEGIN
  UPDATE color_de_pelo 
  SET color = p_nuevo 
  WHERE id_color_pelo = p_id_color_pelo;
  END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_BEBEDOR" (
	   p_ID_bebedor IN bebedor.id_bebedor%TYPE,
	   p_nuevo IN bebedor.frecuencia%TYPE
     )
    AS
    BEGIN
    UPDATE bebedor 
    SET frecuencia = p_nuevo
    WHERE id_bebedor = p_id_bebedor;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_INTERESES" (
	   p_ID_intereses IN intereses.ID_INTERESES%TYPE,
	   p_nuevo IN intereses.tipo_intereses%TYPE
     )
    AS
    BEGIN
    UPDATE intereses 
    SET tipo_intereses = p_nuevo
    WHERE id_intereses = p_id_intereses;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_COLOR_DE_OJOS" (

       p_COLOR_OJOS IN color_de_ojos.COLOR%TYPE
     )

IS
BEGIN

  INSERT INTO color_de_ojos( "COLOR")
  VALUES (p_color_ojos);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_ALTURA" (
       p_tamano IN altura.tamano%TYPE
     )

IS
BEGIN

  INSERT INTO altura("TAMANO")
  VALUES (p_tamano);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_RANGO_DE_EDAD" (
       p_piso IN rango_de_edad.piso%TYPE,
       p_techo IN rango_de_edad.techo%TYPE
     )

IS
BEGIN

  INSERT INTO rango_de_edad("PISO", "TECHO")
  VALUES (p_piso, p_techo);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXINTERESES" (
       p_ID_persona IN personaxintereses.id_persona%TYPE,
       p_id_intereses IN personaxintereses.id_intereses%TYPE
     )

IS
BEGIN

  INSERT INTO personaxintereses("ID_PERSONA", "ID_INTERESES")
  VALUES (p_id_persona, p_id_intereses);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_DEPORTES" (
	   p_ID_deportes IN deportes.ID_deporte%TYPE,
	   p_nuevo IN deportes.tipo_deporte%TYPE
     )
     
  AS
  BEGIN
  UPDATE deportes
  SET tipo_deporte = p_nuevo 
  WHERE id_deporte = p_id_deportes;
  END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."CONSULTAR_NO_MATCH_LIST" (
       p_ID_usuario  IN persona.id_persona%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_no_matchee
from no_match
where id_no_matcher = p_ID_usuario;

END consultar_no_match_list;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_HOBBY" (
       p_actividad_hobby IN hobby.actividad_hobby%TYPE
     )

IS
BEGIN

  INSERT INTO hobby("ACTIVIDAD_HOBBY")
  VALUES (p_actividad_hobby);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_FOTO" (
	   p_ID_foto IN foto.ID_foto%TYPE,
	   p_subir_foto_nueva IN foto.subir_foto%TYPE,
     p_descripcion_nueva IN foto.descripcion%TYPE,
     p_id_persona_nueva IN foto.id_persona%TYPE
     )
     
    AS
    BEGIN
    UPDATE foto
    SET subir_foto = p_subir_foto_nueva, descripcion = p_descripcion_nueva, id_persona = p_id_persona_nueva
    WHERE id_foto = p_id_foto;
    END; 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_DEPORTES_PAREJA" (
p_ID_pareja IN pareja.id_pareja%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_deporte from parejaxdeporte where id_pareja = p_id_pareja
  
  order by id_deporte;
END Get_deportes_pareja;
  

  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_TENGO_HIJOS" (
       p_opinion_hijos IN tengo_hijos.opinion_hijos%TYPE
     )

IS
BEGIN

  INSERT INTO tengo_hijos("OPINION_HIJOS")
  VALUES (p_opinion_hijos);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_INTENCION_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select intencion.id_intencion, intencion.tipo_de_intencion, Count(persona.id_intencion) as total
  from
  persona inner join
  intencion on persona.id_persona = intencion.id_intencion
  group by intencion.id_intencion
  order by total;
END get_intencion_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_TIPO_DE_CUERPO" (
	   p_ID_tipo_de_cuerpo IN tipo_de_cuerpo.id_tipo_de_cuerpo%TYPE,
	   p_nuevo IN tipo_de_cuerpo.descripcion%TYPE 
     )
    AS
    BEGIN
    UPDATE tipo_de_cuerpo
    SET descripcion = p_nuevo
    WHERE id_tipo_de_cuerpo = p_id_tipo_de_cuerpo;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_MUJERES_PARA_MUJERES_HOMO" (p_recordset OUT SYS_REFCURSOR)
AS
  BEGIN
open p_recordset for
  Select persona.id_persona from persona 
  inner join pareja on persona.genero = 'Mujer' and
  pareja.id_genero = 2 or pareja.id_genero = 3 where pareja.id_persona = persona.id_persona;
  
  END Get_Mujeres_para_mujeres_homo;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_COLOR_DE_PELO" (
       p_COLOR_PELO IN color_de_pelo.COLOR%TYPE
     )

IS
BEGIN

  INSERT INTO color_de_pelo("COLOR")
  VALUES (p_color_pelo);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_TIPO_DE_CUERPO_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select tipo_de_cuerpo.id_tipo_de_cuerpo, tipo_de_cuerpo.descripcion, Count(persona.id_tipo_de_cuerpo) as total
  from
  persona inner join
  tipo_de_cuerpo on persona.id_tipo_de_cuerpo = tipo_de_cuerpo.id_tipo_de_cuerpo
  group by tipo_de_cuerpo.id_tipo_de_cuerpo
  order by total;
END get_tipo_de_cuerpo_totales;
 
 
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_RELIGION" (
       p_nombre_religion IN religion.nombre_religion%TYPE
     )

IS
BEGIN

  INSERT INTO religion("NOMBRE_RELIGION")
  VALUES (p_nombre_religion);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_PARA_MUJERES_BI" (p_recordset OUT SYS_REFCURSOR)
AS
  BEGIN
open p_recordset for
  Select persona.id_persona from persona 
  inner join pareja on 
  pareja.id_genero = 3 or pareja.id_genero = 2 where pareja.id_persona = persona.id_persona;
  
  END Get_para_Mujeres_bi ;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PAREJAXDEPORTE" (
       p_ID_pareja IN parejaxdeporte.id_pareja%TYPE,
       p_id_deporte IN parejaxdeporte.id_deporte%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXdeporte("ID_PAREJA", "ID_DEPORTE")
  VALUES (p_id_pareja, p_id_deporte);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."VER_WINKS_RECIBIDOS" (
       p_ID_usuario  IN persona.id_persona%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_winker
from winks
where id_winked = p_id_usuario;

END ver_winks_recibidos;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_FRECUENCIA_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select frecuencia_ejercicio.id_frecuencia,frecuencia_ejercicio.cantidad, Count(persona.id_frecuencia) as total
  from
  persona inner join
  frecuencia_ejercicio on persona.id_frecuencia = frecuencia_ejercicio.id_frecuencia
  group by frecuencia_ejercicio.id_frecuencia
  order by total;
END get_frecuencia_totales;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_WINKS" (
       p_id_winker IN winks.id_winker%TYPE,
     p_id_winked IN winks.id_winked%TYPE,
       p_fecha_del_wink IN winks.fecha_del_wink%TYPE
     )

IS
BEGIN

  INSERT INTO winks("ID_WINKER", "ID_WINKED", "FECHA_DEL_WINK")
  VALUES (p_id_winker ,p_id_winked,  p_fecha_del_wink);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_RANGO_SALARIAL" (
       p_salario IN rango_salarial.salario%TYPE
     )

IS
BEGIN

  INSERT INTO rango_salarial("SALARIO")
  VALUES (p_salario);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PAIS" (
       p_nombre_pais IN pais.nombre_pais%TYPE
     )

IS
BEGIN

  INSERT INTO pais("NOMBRE_PAIS")
  VALUES (p_nombre_pais);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."VER_WINKS_REALIZADOS" (
       p_ID_usuario  IN persona.id_persona%TYPE,
       p_recordset OUT SYS_REFCURSOR
     )
AS
BEGIN
open p_recordset for
select id_winked
from winks
where id_winker = p_id_usuario;

END ver_winks_realizados;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_IDIOMA" (
	   p_ID_IDIOMA IN idioma.ID_IDIOMA%TYPE,
	   p_nuevo IN idioma.nombre_idioma%TYPE
     )
    
    AS
    BEGIN
    UPDATE idioma
    SET nombre_idioma = p_nuevo
    WHERE id_idioma = p_id_idioma;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_IDIOMA" (
       p_nombre_idioma IN idioma.nombre_idioma%TYPE
     )

IS
BEGIN

  INSERT INTO idioma("NOMBRE_IDIOMA")
  VALUES (p_nombre_idioma);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PERSONAXWINKS" (
       p_ID_persona IN personaxwinks.id_persona%TYPE,
       p_id_winks IN personaxwinks.id_winks%TYPE
     )

IS
BEGIN

  INSERT INTO personaxwinks("ID_PERSONA", "ID_WINKS")
  VALUES (p_id_persona, p_id_winks);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_WINKS" (
	   p_ID_winks IN winks.id_winks%TYPE,
	   p_id_winker_nuevo IN winks.id_winker%TYPE, 
     p_id_wind_nuevo IN winks.id_winked%TYPE,
	   p_fecha_del_wink_nuevo IN winks.fecha_del_wink%TYPE 
     )
    AS
    BEGIN
    UPDATE winks
    SET id_winker= p_id_winker_nuevo, id_winked = p_id_wind_nuevo, fecha_del_wink = p_fecha_del_wink_nuevo
    WHERE id_winks = p_id_winks;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_INTENCION" (
	   p_ID_intencion IN intencion.ID_INTENCION%TYPE,
	   p_nuevo IN intencion.tipo_de_intencion%TYPE
     )
    AS
    BEGIN
    UPDATE intencion
    SET tipo_de_intencion = p_nuevo
    WHERE id_intencion = p_id_intencion;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_FECHA_DE_EVENTOS" (
	   p_ID_fecha_de_evento IN fecha_de_evento.ID_fecha_de_evento%TYPE,
	   p_nuevo IN fecha_de_evento.fecha_evento%TYPE
     )
     
    AS
    BEGIN
    UPDATE fecha_de_evento
    SET fecha_evento = p_nuevo
    WHERE id_fecha_de_evento = p_id_fecha_de_evento;
    END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_PARA_HOMBRES_BI" (p_recordset OUT SYS_REFCURSOR)
AS
  BEGIN
open p_recordset for
  Select persona.id_persona from persona 
  inner join pareja on 
  pareja.id_genero = 3 or pareja.id_genero = 1 where pareja.id_persona = persona.id_persona;
  
  END Get_para_Hombres_bi;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_FECHAS" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select fecha_de_nacimiento.id_fecha_de_nacimiento, fecha_de_nacimiento.nacimiento
  from
  fecha_de_nacimiento inner join
  persona on persona.id_fecha_de_nacimiento = fecha_de_nacimiento.id_fecha_de_nacimiento
  order by id_fecha_de_nacimiento;
END get_fechas;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."UPDATE_COLOR_DE_OJOS" (
	   p_ID_COLOR_DE_OJOS IN color_de_ojos.ID_COLOR_OJOS%TYPE,
	   p_nuevo IN color_de_ojos.COLOR%TYPE
     )
    
  AS
  BEGIN
  UPDATE color_de_ojos 
  SET color = p_nuevo 
  WHERE id_color_ojos = p_id_color_de_ojos;
  END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_INTERESES_PERSONA" (
p_ID_persona IN persona.id_persona%TYPE,
p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select id_intereses from personaxintereses where id_persona = p_id_persona
  
  order by id_intereses;
END Get_intereses_persona;
  
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_MATCH_POSITIVO" (
       p_id_matchee IN match_positivo.id_matcher%TYPE,
     p_id_matcher IN match_positivo.id_matchee%TYPE
     )

IS
BEGIN

  INSERT INTO match_positivo("ID_MATCHER", "ID_MATCHEE")
  VALUES (p_id_matcher ,p_id_matchee);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."PERSONAS_POR_RANGO_EDAD" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
open p_recordset for
select fecha , count(*) as total
from(
    select 
        case 
            when trunc( months_between(sysdate, nacimiento) / 12 ) <= 25 then '18-25'
            when trunc( months_between(sysdate, nacimiento) / 12 ) <= 30 then '26-30'
            when trunc( months_between(sysdate, nacimiento) / 12 ) <= 35 then '31-35'
            when trunc( months_between(sysdate, nacimiento) / 12 ) <= 40 then '36-40'

            
            -- and so on... 
            
            else '40+'
        end fecha
    from fecha_de_nacimiento 
    inner join persona 
    on persona.id_fecha_de_nacimiento = fecha_de_nacimiento.id_fecha_de_nacimiento
)
group by fecha
order by fecha;
END personas_por_rango_edad;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_FECHA_DE_NACIMIENTO" (
       p_nacimiento IN fecha_de_nacimiento.nacimiento%TYPE
     )

IS
BEGIN

  INSERT INTO fecha_de_nacimiento("NACIMIENTO")
  VALUES (p_nacimiento);

  COMMIT;

END;
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."GET_ZODIACAL_TOTALES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
  open p_recordset for
  select zodiacal.id_signo_zodiacal, zodiacal.signo, Count(persona.id_zodiacal) as total
  from
  persona inner join
  zodiacal on persona.id_zodiacal = zodiacal.id_signo_zodiacal
  group by zodiacal.id_signo_zodiacal
  order by total;
END get_zodiacal_totales;
 
/
 
  CREATE OR REPLACE PROCEDURE "BDWEB"."INSERTAR_PAREJAXIDIOMA" (
       p_ID_pareja IN parejaxidioma.id_pareja%TYPE,
       p_id_idioma IN parejaxidioma.id_idioma%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXidioma("ID_PAREJA", "ID_IDIOMA")
  VALUES (p_id_pareja, p_id_idioma);

  COMMIT;

END;
/
 