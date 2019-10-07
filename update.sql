create or replace
PROCEDURE update_cambiar_altura(
    p_id_altura IN altura.ID_ALTURA%TYPE,
    p_nuevo  IN altura.tamano%TYPE
)
  AS
  BEGIN
  UPDATE ALTURA 
  SET tamano= p_nuevo 
  WHERE id_altura = p_id_altura;
  END;

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_color_de_ojos(
	   p_ID_COLOR_DE_OJOS IN color_de_ojos.ID_COLOR_OJOS%TYPE,
	   p_nuevo IN color_de_ojos.COLOR%TYPE
     )
    
  AS
  BEGIN
  UPDATE color_de_ojos 
  SET color = p_nuevo 
  WHERE id_color_ojos = p_id_color_de_ojos;
  END;     
  
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_color_de_pelo(
	   p_ID_COLOR_PELO IN color_de_pelo.ID_COLOR_PELO%TYPE,
	   p_nuevo IN color_de_pelo.COLOR%TYPE
     )
     
  AS
  BEGIN
  UPDATE color_de_pelo 
  SET color = p_nuevo 
  WHERE id_color_pelo = p_id_color_pelo;
  END;
  
--------------------------------------------------------------------
--------------------------------------------------------------------
create or replace PROCEDURE update_color_de_piel(
	   p_ID_COLOR_PIEL IN color_de_piel.ID_COLOR_PIEL%TYPE,
	   p_nuevo IN color_de_piel.COLOR%TYPE
     )
     
  AS
  BEGIN
  UPDATE color_de_piel 
  SET color = p_nuevo 
  WHERE id_color_piel = p_id_color_piel;
  END;

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_deportes(
	   p_ID_deportes IN deportes.ID_deporte%TYPE,
	   p_nuevo IN deportes.tipo_deporte%TYPE
     )
     
  AS
  BEGIN
  UPDATE deportes
  SET tipo_deporte = p_nuevo 
  WHERE id_deporte = p_id_deportes;
  END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_estado_civil(
	   p_ID_estado_civil IN estado_civil.ID_estado_civil%TYPE,
	   p_nuevo IN estado_civil.estado_civil_actual%TYPE
     )
     
  AS
  BEGIN
  UPDATE estado_civil
  SET estado_civil_actual = p_nuevo 
  WHERE id_estado_civil = p_id_estado_civil;
  END;

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_eventos(
	   p_ID_eventos IN eventos.ID_eventos%TYPE,
	   p_nombre_del_evento_nuevo IN eventos.nombre_del_evento%TYPE,
     p_lugar_del_evento_nuevo IN eventos.lugar_del_evento%TYPE,
     p_fecha_de_evento_nuevo IN eventos.id_fecha_de_evento%TYPE
     )
     
     AS
     BEGIN
     UPDATE eventos
     SET nombre_del_evento = p_nombre_del_evento_nuevo, lugar_del_evento = p_lugar_del_evento_nuevo, P_fecha_de_evento_nuevo = ID_fecha_del_evento
     WHERE id_eventos = p_id_eventos;
     END;


--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_fecha_de_eventos(
	   p_ID_fecha_de_evento IN fecha_de_evento.ID_fecha_de_evento%TYPE,
	   p_nuevo IN fecha_de_evento.fecha_evento%TYPE
     )
     
    AS
    BEGIN
    UPDATE fecha_de_evento
    SET fecha_evento = p_nuevo
    WHERE id_fecha_de_evento = p_id_fecha_de_evento;
    END;

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_fecha_de_nacimiento(
	   p_ID_fecha_de_nacimiento IN fecha_de_nacimiento.ID_fecha_de_nacimiento%TYPE,
	   p_nuevo IN fecha_de_nacimiento.nacimiento%TYPE
     )
    
    AS
    BEGIN
    UPDATE fecha_de_nacimiento
    SET nacimiento = p_nuevo
    WHERE id_fecha_de_nacimiento = p_id_fecha_de_nacimiento;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_foto(
	   p_ID_foto IN foto.ID_foto%TYPE,
	   p_subir_foto_nueva IN foto.subir_foto%TYPE,
     p_descripcion_nueva IN foto.descripcion%TYPE,
     p_id_persona_nueva IN foto.id_persona%TYPE
     )
     
    AS
    BEGIN
    UPDATE fecha_de_nacimiento
    SET nacimiento = p_nuevo
    WHERE id_fecha_de_nacimiento = p_id_fecha_de_nacimiento;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace
PROCEDURE update_foto(
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

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_frecuencia_ejercicio(
	   p_ID_frecuencia IN frecuencia_ejercicio.ID_frecuencia%TYPE,
	   p_nueva IN frecuencia_ejercicio.cantidad%TYPE
     )
     
    AS
    BEGIN
    UPDATE frecuencia_ejercicio
    SET cantidad = p_nueva
    WHERE id_frecuencia = p_id_frecuencia;
    END;

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_genero(
	   p_ID_genero IN genero.ID_genero%TYPE,
	   p_nuevo IN genero.genero_persona%TYPE
     )
    AS
    BEGIN
    UPDATE genero
    SET genero_persona = p_nuevo
    WHERE id_genero = p_id_genero;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_hobby(
	   p_ID_hobby IN hobby.id_hobby%TYPE,
	   p_nuevo IN hobby.actividad_hobby%TYPE
     )
    AS
    BEGIN
    UPDATE hobby
    SET actividad_hobby = p_nuevo
    WHERE id_hobby = p_id_hobby;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_idioma(
	   p_ID_IDIOMA IN idioma.ID_IDIOMA%TYPE,
	   p_nuevo IN idioma.nombre_idioma%TYPE
     )
    
    AS
    BEGIN
    UPDATE idioma
    SET nombre_idioma = p_nuevo
    WHERE id_idioma = p_id_idioma;
    END;
     

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_intencion(
	   p_ID_intencion IN intencion.ID_INTENCION%TYPE,
	   p_nuevo IN intencion.tipo_de_intencion%TYPE
     )
    AS
    BEGIN
    UPDATE intencion
    SET tipo_de_intencion = p_nuevo
    WHERE id_intencion = p_id_intencion;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_intereses(
	   p_ID_intereses IN intereses.ID_INTERESES%TYPE,
	   p_nuevo IN intereses.tipo_intereses%TYPE
     )
    AS
    BEGIN
    UPDATE intereses 
    SET tipo_intereses = p_nuevo
    WHERE id_intereses = p_id_intereses;
    END;
    
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_nivel_de_educacion(
	   p_ID_nivel_de_educacion IN nivel_de_educacion.ID_nivel_de_educacion%TYPE,
	   p_nuevo IN nivel_de_educacion.nivel_educacion%TYPE
     )
    AS
    BEGIN
    UPDATE nivel_de_educacion 
    SET nivel_educacion = p_nuevo
    WHERE id_nivel_de_educacion = p_id_nivel_de_educacion;
    END;
    
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_ocupacion(
	   p_ID_ocupacion IN ocupacion.id_ocupacion%TYPE,
	   p_nuevo IN ocupacion.ocupacion%TYPE
     )
    AS
    BEGIN
    UPDATE ocupacion 
    SET  ocupacion = p_nuevo
    WHERE id_ocupacion = p_id_ocupacion;
    END;
    
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_pais(
	   p_ID_pais IN pais.id_pais%TYPE,
	   p_nuevo IN pais.nombre_pais%TYPE
     )
    AS
    BEGIN
    UPDATE pais 
    SET nombre_pais = p_nuevo
    WHERE id_pais = p_id_pais;
    END;
    
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_bebedor(
	   p_ID_bebedor IN bebedor.id_bebedor%TYPE,
	   p_nuevo IN bebedor.frecuencia%TYPE
     )
    AS
    BEGIN
    UPDATE bebedor 
    SET frecuencia = p_nuevo
    WHERE id_bebedor = p_id_bebedor;
    END;
    
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_ciudad(
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
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_click(
	   p_ID_click IN click.id_click%TYPE,
	   p_ID_clicker_nuevo IN click.id_clicker%TYPE,
     p_ID_clickd_nuevo IN click.id_clickd%TYPE,
     p_fecha_del_click_nuevo IN click.fecha_del_click%TYPE
     )
     
    AS
    BEGIN
    UPDATE click 
    SET id_clicker = p_id_clicker_nuevo, id_clickd = p_id_clickd_nuevo, fecha_del_click = p_fecha_del_click_nuevo
    WHERE id_click = p_id_click;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_pareja(
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
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace
PROCEDURE update_persona(
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
     p_id_genero_nuevo IN persona.id_genero%TYPE, 
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
     id_genero = p_id_genero_nuevo,
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

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_peso(
	   p_ID_peso IN peso.id_peso%TYPE,
	   p_nuevo IN peso.kilogramos%TYPE 
     )
    AS
    BEGIN
    UPDATE peso 
    SET kilogramos = p_nuevo
    WHERE id_peso = p_id_peso;
    END;     

--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_rango_de_edad(
	   p_ID_rango_de_edad IN rango_de_edad.id_rango_de_edad%TYPE,
	   p_nuevo IN rango_de_edad.rango_edad%TYPE 
     )
    AS
    BEGIN
    UPDATE rango_de_edad 
    SET rango_edad = p_nuevo
    WHERE id_rango_de_edad = p_id_rango_de_edad;
    END; 
--------------------------------------------------------------------
--------------------------------------------------------------------

create or replace PROCEDURE update_rango_salarial(
	   p_ID_rango_salarial IN rango_salarial.id_rango_salario%TYPE,
	   p_nuevo IN rango_salarial.salario%TYPE 
     )
     AS
    BEGIN
    UPDATE rango_salarial
    SET salario = p_nuevo
    WHERE id_rango_salario = p_id_rango_salarial;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------
create or replace PROCEDURE update_religion(
	   p_ID_religion IN religion.id_religion%TYPE,
	   p_nuevo IN religion.nombre_religion%TYPE 
     )
    AS
    BEGIN
    UPDATE religion
    SET nombre_religion = p_nuevo
    WHERE id_religion = p_id_religion;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------
create or replace PROCEDURE update_tengo_hijos(
	   p_ID_tengo_hijos IN tengo_hijos.id_tengo_hijos%TYPE,
	   p_nuevo IN tengo_hijos.opinion_hijos%TYPE 
     )
    AS
    BEGIN
    UPDATE tengo_hijos
    SET opinion_hijos = p_nuevo
    WHERE id_tengo_hijos = p_id_tengo_hijos;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------
create or replace PROCEDURE update_tipo_de_cuerpo(
	   p_ID_tipo_de_cuerpo IN tipo_de_cuerpo.id_tipo_de_cuerpo%TYPE,
	   p_nuevo IN tipo_de_cuerpo.descripcion%TYPE 
     )
    AS
    BEGIN
    UPDATE tipo_de_cuerpo
    SET descripcion = p_nuevo
    WHERE id_tipo_de_cuerpo = p_id_tipo_de_cuerpo;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------
create or replace
PROCEDURE update_winks(
	   p_ID_winks IN winks.id_winks%TYPE,
	   p_id_winker_nuevo IN winks.id_winker%TYPE, 
     p_id_wind_nuevo IN winks.id_wind%TYPE,
	   p_fecha_del_wink_nuevo IN winks.fecha_del_wink%TYPE 
     )
    AS
    BEGIN
    UPDATE winks
    SET id_winker= p_id_winker_nuevo, id_wind = p_id_wind_nuevo, fecha_del_wink = p_fecha_del_wink_nuevo
    WHERE id_winks = p_id_winks;
    END;
--------------------------------------------------------------------
--------------------------------------------------------------------
create or replace PROCEDURE update_zodiacal(
	   p_ID_zodiacal IN zodiacal.id_signo_zodiacal%TYPE,
	   p_nuevo IN zodiacal.signo%TYPE
     )
    AS
    BEGIN
    UPDATE zodiacal
    SET signo = p_nuevo
    WHERE id_signo_zodiacal = p_id_zodiacal;
    END;