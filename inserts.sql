CREATE OR REPLACE PROCEDURE insert_color_de_ojos(
	   p_ID_COLOR_DE_OJOS IN color_de_ojos.ID_COLOR_OJOS%TYPE,
	   p_COLOR_OJOS IN color_de_ojos.COLOR%TYPE
     )
     
IS
BEGIN

  INSERT INTO color_de_ojos("ID_COLOR_OJOS", "COLOR") 
  VALUES (p_id_color_de_ojos, p_color_ojos);

  COMMIT;

END;
----------------------------------------------------------------------------
----------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE insert_altura(
     p_id_altura IN altura.ID_ALTURA%TYPE,
     p_tamano IN altura.tamano%TYPE
     )

IS
BEGIN

  INSERT INTO altura ("ID_ALTURA", "TAMANO")
  VALUES (p_id_altura, p_tamano);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_idioma(
	   p_ID_IDIOMA IN idioma.ID_IDIOMA%TYPE,
	   p_nombre_idioma IN idioma.nombre_idioma%TYPE
     )
     
IS
BEGIN

  INSERT INTO idioma("ID_IDIOMA", "NOMBRE_IDIOMA") 
  VALUES (p_id_idioma, p_nombre_idioma);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insert_intencion(
	   p_ID_intencion IN intencion.ID_INTENCION%TYPE,
	   p_tipo_de_intencion IN intencion.tipo_de_intencion%TYPE
     )
     
IS
BEGIN

  INSERT INTO intencion("ID_INTENCION", "TIPO_DE_INTENCION") 
  VALUES (p_id_intencion, p_tipo_de_intencion);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insert_intereses(
	   p_ID_intereses IN intereses.ID_INTERESES%TYPE,
	   p_tipo_de_intereses IN intereses.tipo_intereses%TYPE
     )
     
IS
BEGIN

  INSERT INTO intereses("ID_INTERESES", "TIPO_INTERESES") 
  VALUES (p_id_intereses, p_tipo_de_intereses);

  COMMIT;

END;



----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insert_nivel_de_educacion(
	   p_ID_nivel_de_educacion IN nivel_de_educacion.ID_nivel_de_educacion%TYPE,
	   p_nivel_educacion IN nivel_de_educacion.nivel_educacion%TYPE
     )
     
IS
BEGIN

  INSERT INTO nivel_de_educacion("ID_NIVEL_DE_EDUCACION", "NIVEL_EDUCACION") 
  VALUES (p_id_nivel_de_educacion, p_nivel_educacion);

  COMMIT;

END;
----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insert_ocupacion(
	   p_ID_ocupacion IN ocupacion.id_ocupacion%TYPE,
	   p_ocupacion IN ocupacion.ocupacion%TYPE
     )
     
IS
BEGIN

  INSERT INTO ocupacion("ID_OCUPACION", "OCUPACION") 
  VALUES (p_id_ocupacion, p_ocupacion);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insert_pais(
	   p_ID_pais IN pais.id_pais%TYPE,
	   p_nombre_pais IN pais.nombre_pais%TYPE
     )
     
IS
BEGIN

  INSERT INTO pais("ID_PAIS", "NOMBRE_PAIS") 
  VALUES (p_id_pais, p_nombre_pais);

  COMMIT;

END;
----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_pareja(
     p_ID_pareja IN pareja.id_pareja%TYPE,
     p_fumador IN pareja.fumador%TYPE,
     p_tiene_mascota IN pareja.tiene_mascota%TYPE,
     p_tiene_hijos IN pareja.tiene_hijos%TYPE,
     p_id_bebedor IN pareja.id_bebedor%TYPE,
     p_id_intencion IN pareja.id_intencion%TYPE,
     p_id_rango_de_edad IN pareja.id_rango_de_edad%TYPE,
     p_id_rango_salarial IN pareja.id_rango_salarial%TYPE,
     p_id_tengo_hijos IN pareja.id_tengo_hijos%TYPE,
     p_id_tipo_de_cuerpo IN pareja.id_tipo_de_cuerpo%TYPE
     )
     
IS
BEGIN

  INSERT INTO pareja("ID_PAREJA", "FUMADOR", "TIENE_MASCOTA", "TIENE_HIJOS", "ID_BEBEDOR", "ID_INTENCION", "ID_RANGO_DE_EDAD", "ID_RANGO_SALARIAL", "ID_TENGO_HIJOS", "ID_TIPO_DE_CUERPO") 
  VALUES (p_id_pareja, p_fumador, p_tiene_mascota, p_tiene_hijos, p_id_bebedor, p_id_intencion, p_id_rango_de_edad, p_id_rango_salarial, p_id_tengo_hijos, p_id_tipo_de_cuerpo);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace
PROCEDURE insertar_persona(
     p_ID_persona IN persona.id_persona%TYPE,
     p_nombre IN persona.nombre%TYPE,
     p_apellido IN persona.apellido%TYPE,
     p_fumador IN persona.fumador%TYPE,
     p_tiene_mascota IN persona.tiene_mascota%TYPE,
     p_frase_identificadora IN persona.frase_identificadora%TYPE,
     p_apodo IN persona.apodo%TYPE,
     p_cantidad_de_hijos IN persona.cantidad_de_hijos%TYPE,  
     p_id_altura IN persona.cantidad_de_hijos%TYPE, 
     p_id_bebedor IN persona.id_bebedor%TYPE, 
     p_id_ciudad IN persona.id_ciudad%TYPE, 
     p_id_color_de_ojos IN persona.id_color_ojos%TYPE, 
     p_id_color_de_pelo IN persona.id_color_pelo%TYPE, 
     p_id_color_de_piel IN persona.id_color_piel%TYPE, 
     p_id_estado_civil IN persona.id_estado_civil%TYPE, 
     p_id_fecha_de_nacimiento IN persona.id_fecha_de_nacimiento%TYPE, 
     p_id_frecuencia IN persona.id_frecuencia%TYPE, 
     p_id_genero IN persona.id_genero%TYPE, 
     p_id_intencion IN persona.id_intencion%TYPE, 
     p_id_nivel_de_educacion IN persona.id_nivel_de_educacion%TYPE, 
     p_id_ocupacion IN persona.id_ocupacion%TYPE, 
     p_id_peso IN persona.id_peso%TYPE, 
     p_id_tipo_de_cuerpo IN persona.id_tipo_de_cuerpo%TYPE, 
     p_id_religion IN persona.id_religion%TYPE, 
     p_id_rango_salarial IN persona.id_rango_salarial%TYPE, 
     p_id_tengo_hijos IN persona.id_tengo_hijos%TYPE, 
     p_id_zodiacal IN persona.id_zodiacal%TYPE
     )
     
IS
BEGIN

  INSERT INTO persona("ID_PERSONA", "NOMBRE","APELLIDO","FUMADOR", "TIENE_MASCOTA", "FRASE_IDENTIFICADORA", "APODO", "CANTIDAD_DE_HIJOS", "ID_ALTURA", "ID_BEBEDOR", "ID_CIUDAD", "ID_COLOR_OJOS", "ID_COLOR_PELO", "ID_COLOR_PIEL", "ID_ESTADO_CIVIL", "ID_FECHA_DE_NACIMIENTO", "ID_FRECUENCIA", "ID_GENERO", "ID_INTENCION", "ID_NIVEL_DE_EDUCACION", "ID_OCUPACION", "ID_PESO", "ID_TIPO_DE_CUERPO", "ID_RELIGION", "ID_RANGO_SALARIAL", "ID_TENGO_HIJOS", "ID_ZODIACAL") 
  VALUES (p_id_persona, p_nombre, p_apellido, p_fumador, p_tiene_mascota , p_frase_identificadora, p_apodo, p_cantidad_de_hijos, p_id_altura, p_id_bebedor, p_id_ciudad, p_id_color_de_ojos, p_id_color_de_pelo, p_id_color_de_piel, p_id_estado_civil, p_id_fecha_de_nacimiento, p_id_frecuencia, p_id_genero, p_id_intencion, p_id_nivel_de_educacion, p_id_ocupacion, p_id_peso, p_id_tipo_de_cuerpo, p_id_religion, p_id_rango_salarial, p_id_tengo_hijos, p_id_zodiacal);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_peso(
	   p_ID_peso IN peso.id_peso%TYPE,
	   p_kilogramos IN peso.kilogramos%TYPE 
     )
     
IS
BEGIN

  INSERT INTO peso("ID_PESO", "KILOGRAMOS") 
  VALUES (p_id_peso, p_kilogramos);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_rango_de_edad(
	   p_ID_rango_de_edad IN rango_de_edad.id_rango_de_edad%TYPE,
	   p_rango_edad IN rango_de_edad.rango_edad%TYPE 
     )
     
IS
BEGIN

  INSERT INTO rango_de_edad("ID_RANGO_DE_EDAD", "RANGO_EDAD") 
  VALUES (p_id_rango_de_edad, p_rango_edad);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_rango_salarial(
	   p_ID_rango_salarial IN rango_salarial.id_rango_salario%TYPE,
	   p_salario IN rango_salarial.salario%TYPE 
     )
     
IS
BEGIN

  INSERT INTO rango_salarial("ID_RANGO_SALARIO", "SALARIO") 
  VALUES (p_id_rango_salarial, p_salario);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_religion(
	   p_ID_religion IN religion.id_religion%TYPE,
	   p_nombre_religion IN religion.nombre_religion%TYPE 
     )
     
IS
BEGIN

  INSERT INTO religion("ID_RELIGION", "NOMBRE_RELIGION") 
  VALUES (p_id_religion, p_nombre_religion);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_tengo_hijos(
	   p_ID_tengo_hijos IN tengo_hijos.id_tengo_hijos%TYPE,
	   p_opinion_hijos IN tengo_hijos.opinion_hijos%TYPE 
     )
     
IS
BEGIN

  INSERT INTO tengo_hijos("ID_TENGO_HIJOS", "OPINION_HIJOS") 
  VALUES (p_id_tengo_hijos, p_opinion_hijos);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_tipo_de_cuerpo(
	   p_ID_tipo_de_cuerpo IN tipo_de_cuerpo.id_tipo_de_cuerpo%TYPE,
	   p_descripcion IN tipo_de_cuerpo.descripcion%TYPE 
     )
     
IS
BEGIN

  INSERT INTO tipo_de_cuerpo("ID_TIPO_DE_CUERPO", "DESCRIPCION") 
  VALUES (p_id_tipo_de_cuerpo, p_descripcion);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------
create or replace PROCEDURE insertar_winks(
	   p_ID_winks IN winks.id_winks%TYPE,
	   p_id_winker IN winks.id_winker%TYPE, 
     p_id_wind IN winks.id_wind%TYPE,
	   p_fecha_del_wink IN winks.fecha_del_wink%TYPE 
     )
     
IS
BEGIN

  INSERT INTO winks("ID_WINKS", "ID_WINKER", "ID_WIND", "FECHA_DEL_WINK") 
  VALUES (p_id_winks, p_id_winker ,p_id_wind,  p_fecha_del_wink);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_zodiacal(
	   p_ID_zodiacal IN zodiacal.id_signo_zodiacal%TYPE,
	   p_signo IN zodiacal.signo%TYPE
     )
     
IS
BEGIN

  INSERT INTO zodiacal("ID_SIGNO_ZODIACAL", "SIGNO") 
  VALUES (p_id_zodiacal, p_signo);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_bebedor(
	   p_ID_bebedor IN bebedor.id_bebedor%TYPE,
	   p_frecuencia IN bebedor.frecuencia%TYPE
     )
     
IS
BEGIN

  INSERT INTO bebedor("ID_BEBEDOR", "FRECUENCIA") 
  VALUES (p_id_bebedor, p_frecuencia);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_ciudad(
	   p_ID_ciudad IN ciudad.id_ciudad%TYPE,
	   p_nombre_ciudad IN ciudad.nombre_ciudad%TYPE,
     p_id_pais IN ciudad.id_pais%TYPE
     )
     
IS
BEGIN

  INSERT INTO ciudad("ID_CIUDAD", "NOMBRE_CIUDAD", "ID_PAIS") 
  VALUES (p_id_ciudad, p_nombre_ciudad, p_id_pais);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

create or replace PROCEDURE insertar_click(
	   p_ID_click IN click.id_click%TYPE,
	   p_ID_clicker IN click.id_clicker%TYPE,
     p_ID_clickd IN click.id_clickd%TYPE,
     p_fecha_del_click IN click.fecha_del_click%TYPE
     )
     
IS
BEGIN

  INSERT INTO click("ID_CLICK", "ID_CLICKER", "ID_CLICKD", "FECHA_DEL_CLICK") 
  VALUES (p_id_click, p_id_clicker, p_id_clickd, p_fecha_del_click);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_color_de_pelo(
	   p_ID_COLOR_PELO IN color_de_pelo.ID_COLOR_PELO%TYPE,
	   p_COLOR_PELO IN color_de_pelo.COLOR%TYPE
     )
     
IS
BEGIN

  INSERT INTO color_de_pelo("ID_COLOR_PELO", "COLOR") 
  VALUES (p_id_color_pelo, p_color_pelo);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_color_de_piel(
	   p_ID_COLOR_PIEL IN color_de_piel.ID_COLOR_PIEL%TYPE,
	   p_COLOR_PIEL IN color_de_piel.COLOR%TYPE
     )
     
IS
BEGIN

  INSERT INTO color_de_piel("ID_COLOR_PIEL", "COLOR") 
  VALUES (p_id_color_piel, p_color_piel);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_deportes(
	   p_ID_deportes IN deportes.ID_deporte%TYPE,
	   p_deportes IN deportes.tipo_deporte%TYPE
     )
     
IS
BEGIN

  INSERT INTO deportes("ID_DEPORTE", "TIPO_DEPORTE") 
  VALUES (p_id_deportes, p_deportes);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_estado_civil(
	   p_ID_estado_civil IN estado_civil.ID_estado_civil%TYPE,
	   p_estado_civil_actual IN estado_civil.estado_civil_actual%TYPE
     )
     
IS
BEGIN

  INSERT INTO estado_civil("ID_ESTADO_CIVIL", "ESTADO_CIVIL_ACTUAL") 
  VALUES (p_id_estado_civil, p_estado_civil_actual);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_eventos(
	   p_ID_eventos IN eventos.ID_eventos%TYPE,
	   p_nombre_del_evento IN eventos.nombre_del_evento%TYPE,
     p_lugar_del_evento IN eventos.lugar_del_evento%TYPE
     )
     
IS
BEGIN

  INSERT INTO eventos("ID_EVENTOS", "NOMBRE_DEL_EVENTO","LUGAR_DEL_EVENTO") 
  VALUES (p_id_eventos, p_nombre_del_evento, p_lugar_del_evento);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_fecha_de_eventos(
	   p_ID_fecha_de_evento IN fecha_de_evento.ID_fecha_de_evento%TYPE,
	   p_fecha_evento IN fecha_de_evento.fecha_evento%TYPE
     )
     
IS
BEGIN

  INSERT INTO fecha_de_evento("ID_FECHA_DE_EVENTO","FECHA_EVENTO") 
  VALUES (p_id_fecha_de_evento, p_fecha_evento);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_fecha_de_nacimiento(
	   p_ID_fecha_de_nacimiento IN fecha_de_nacimiento.ID_fecha_de_nacimiento%TYPE,
	   p_nacimiento IN fecha_de_nacimiento.nacimiento%TYPE
     )
     
IS
BEGIN

  INSERT INTO fecha_de_nacimiento("ID_FECHA_DE_NACIMIENTO","NACIMIENTO") 
  VALUES (p_id_fecha_de_nacimiento, p_nacimiento);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_foto(
	   p_ID_foto IN foto.ID_foto%TYPE,
	   p_subir_foto IN foto.subir_foto%TYPE,
     p_descripcion IN foto.descripcion%TYPE
     )
     
IS
BEGIN

  INSERT INTO foto("ID_FOTO","SUBIR_FOTO","DESCRIPCION") 
  VALUES (p_id_foto, p_subir_foto, p_descripcion);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_frecuencia_ejercicio(
	   p_ID_frecuencia IN frecuencia_ejercicio.ID_frecuencia%TYPE,
	   p_cantidad IN frecuencia_ejercicio.cantidad%TYPE
     )
     
IS
BEGIN

  INSERT INTO frecuencia_ejercicio("ID_FRECUENCIA","CANTIDAD") 
  VALUES (p_id_frecuencia, p_cantidad);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_genero(
	   p_ID_genero IN genero.ID_genero%TYPE,
	   p_genero_persona IN genero.genero_persona%TYPE
     )
     
IS
BEGIN

  INSERT INTO genero("ID_GENERO","GENERO_PERSONA") 
  VALUES (p_id_genero, p_genero_persona);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_hobby(
	   p_ID_hobby IN hobby.ID_hobby%TYPE,
	   p_actividad_hobby IN hobby.actividad_hobby%TYPE
     )
     
IS
BEGIN

  INSERT INTO hobby("ID_HOBBY","ACTIVIDAD_HOBBY") 
  VALUES (p_id_hobby, p_actividad_hobby);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE insertar_match_positivo(
       p_ID_positivo_match IN match_positivo.id_positivo_match%TYPE,
       p_id_matchee IN match_positivo.id_matcher%TYPE,
     p_id_matcher IN match_positivo.id_matchee%TYPE
     )

IS
BEGIN

  INSERT INTO match_positivo("ID_POSITIVO_MATCH", "ID_MATCHER", "ID_MATCHEE")
  VALUES (p_id_positivo_match, p_id_matcher ,p_id_matchee);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_no_match(
       p_ID_negativo_match IN no_match.id_negativo_match%TYPE,
       p_id_no_matchee IN no_match.id_no_matcher%TYPE,
     p_id_no_matcher IN no_match.id_no_matchee%TYPE
     )

IS
BEGIN

  INSERT INTO no_match("ID_NEGATIVO_MATCH", "ID_NO_MATCHER", "ID_NO_MATCHEE")
  VALUES (p_id_negativo_match, p_id_no_matcher ,p_id_no_matchee);

  COMMIT;

END;


----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_parejaXdeporte(
       p_ID_pareja IN parejaxdeporte.id_pareja%TYPE,
       p_id_deporte IN parejaxdeporte.id_deporte%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXdeporte("ID_PAREJA", "ID_DEPORTE")
  VALUES (p_id_pareja, p_id_deporte);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_parejaXgenero(
       p_ID_pareja IN parejaxgenero.id_pareja%TYPE,
       p_id_genero IN parejaxgenero.id_genero%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXgenero("ID_PAREJA", "ID_GENERO")
  VALUES (p_id_pareja, p_id_genero);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_parejaXhobby(
       p_ID_pareja IN parejaxhobby.id_pareja%TYPE,
       p_id_hobby IN parejaxhobby.id_hobby%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXhobby("ID_PAREJA", "ID_HOBBY")
  VALUES (p_id_pareja, p_id_hobby);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_parejaXidioma(
       p_ID_pareja IN parejaxidioma.id_pareja%TYPE,
       p_id_idioma IN parejaxidioma.id_idioma%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXidioma("ID_PAREJA", "ID_IDIOMA")
  VALUES (p_id_pareja, p_id_idioma);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_parejaXintereses(
       p_ID_pareja IN parejaxintereses.id_pareja%TYPE,
       p_id_intereses IN parejaxintereses.id_intereses%TYPE
     )

IS
BEGIN

  INSERT INTO parejaXintereses("ID_PAREJA", "ID_INTERESES")
  VALUES (p_id_pareja, p_id_intereses);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxclicks(
       p_ID_persona IN personaxclicks.id_persona%TYPE,
       p_id_clicks IN personaxclicks.id_clicks%TYPE
     )

IS
BEGIN

  INSERT INTO personaxclicks("ID_PERSONA", "ID_CLICKS")
  VALUES (p_id_persona, p_id_clicks);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxdeporte(
       p_ID_persona IN personaxdeporte.id_persona%TYPE,
       p_id_deporte IN personaxdeporte.id_deporte%TYPE
     )

IS
BEGIN

  INSERT INTO personaxdeporte("ID_PERSONA", "ID_DEPORTE")
  VALUES (p_id_persona, p_id_deporte);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxeventos(
       p_ID_persona IN personaxeventos.id_persona%TYPE,
       p_id_eventos IN personaxeventos.id_eventos%TYPE
     )

IS
BEGIN

  INSERT INTO personaxeventos("ID_PERSONA", "ID_EVENTOS")
  VALUES (p_id_persona, p_id_eventos);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxhobby(
       p_ID_persona IN personaxhobby.id_persona%TYPE,
       p_id_hobby IN personaxhobby.id_hobby%TYPE
     )

IS
BEGIN

  INSERT INTO personaxhobby("ID_PERSONA", "ID_HOBBY")
  VALUES (p_id_persona, p_id_hobby);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxidioma(
       p_ID_persona IN personaxidioma.id_persona%TYPE,
       p_id_idioma IN personaxidioma.id_idioma%TYPE
     )

IS
BEGIN

  INSERT INTO personaxidioma("ID_PERSONA", "ID_IDIOMA")
  VALUES (p_id_persona, p_id_idioma);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxintereses(
       p_ID_persona IN personaxintereses.id_persona%TYPE,
       p_id_intereses IN personaxintereses.id_intereses%TYPE
     )

IS
BEGIN

  INSERT INTO personaxintereses("ID_PERSONA", "ID_INTERESES")
  VALUES (p_id_persona, p_id_intereses);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxmatch(
       p_ID_persona IN personaxmatch.id_persona%TYPE,
       p_id_match IN personaxmatch.id_match%TYPE
     )

IS
BEGIN

  INSERT INTO personaxmatch("ID_PERSONA", "ID_MATCH")
  VALUES (p_id_persona, p_id_match);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxno_match(
       p_ID_persona IN personaxno_match.id_persona%TYPE,
       p_id_no_match IN personaxno_match.id_no_match%TYPE
     )

IS
BEGIN

  INSERT INTO personaxno_match("ID_PERSONA", "ID_NO_MATCH")
  VALUES (p_id_persona, p_id_no_match);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxwinks(
       p_ID_persona IN personaxwinks.id_persona%TYPE,
       p_id_winks IN personaxwinks.id_winks%TYPE
     )

IS
BEGIN

  INSERT INTO personaxwinks("ID_PERSONA", "ID_WINKS")
  VALUES (p_id_persona, p_id_winks);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_personaxwinks(
       p_ID_persona IN personaxwinks.id_persona%TYPE,
       p_id_winks IN personaxwinks.id_winks%TYPE
     )

IS
BEGIN

  INSERT INTO personaxwinks("ID_PERSONA", "ID_WINKS")
  VALUES (p_id_persona, p_id_winks);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_pais(
       p_ID_pais IN pais.id_pais%TYPE,
       p_nombre_pais IN pais.nombre_pais%TYPE
     )

IS
BEGIN

  INSERT INTO pais("ID_PAIS", "NOMBRE_PAIS")
  VALUES (p_id_pais, p_nombre_pais);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_pais(
       p_ID_pais IN pais.id_pais%TYPE,
       p_nombre_pais IN pais.nombre_pais%TYPE
     )

IS
BEGIN

  INSERT INTO pais("ID_PAIS", "NOMBRE_PAIS")
  VALUES (p_id_pais, p_nombre_pais);

  COMMIT;

END;

----------------------------------------------------------------------------
----------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_ciudad(
       p_ID_ciudad IN ciudad.id_ciudad%TYPE,
       p_nombre_ciudad IN ciudad.nombre_ciudad%TYPE,
       p_ID_pais IN ciudad.id_pais%TYPE
     )

IS
BEGIN

  INSERT INTO ciudad("ID_CIUDAD", "NOMBRE_CIUDAD", "ID_PAIS")
  VALUES (p_id_ciudad, p_nombre_ciudad, p_id_pais);

  COMMIT;

END;








