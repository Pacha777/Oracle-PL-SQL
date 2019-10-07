
  CREATE OR REPLACE FUNCTION "BDWEB"."ASIGNAR_ZODIACAL" (
 p_nacimiento IN fecha_de_nacimiento.nacimiento%TYPE
 )
 return VARCHAR2
 IS
 retorno VARCHAR2(20);
BEGIN
  
  CASE
  WHEN p_nacimiento BETWEEN '21Mar2000' AND '19Apr2000' THEN retorno := 'Aries';
  WHEN p_nacimiento BETWEEN '20Apr2000' AND '20May2000' THEN retorno := 'Taurus';
  WHEN p_nacimiento BETWEEN '21May2000' AND '20Jun2000' THEN retorno := 'Gemini';
  WHEN p_nacimiento BETWEEN '21Jun2000' AND '22Jul2000' THEN retorno := 'Cancer';
  WHEN p_nacimiento BETWEEN '23Jul2000' AND '22Aug2000' THEN retorno := 'Leo';
  WHEN p_nacimiento BETWEEN '23Aug2000' AND '22Sep2000' THEN retorno := 'Virgo';
  WHEN p_nacimiento BETWEEN '23Sep2000' AND '22Oct2000' THEN retorno := 'Libra';
  WHEN p_nacimiento BETWEEN '23Oct2000' AND '21Nov2000' THEN retorno := 'Scorpio';
  WHEN p_nacimiento BETWEEN '22Nov2000' AND '21Dec2000' THEN retorno := 'Sagittarious';
  WHEN p_nacimiento BETWEEN '22Dec2000' AND '31Dec2000' THEN retorno := 'Capricorn';
  WHEN p_nacimiento BETWEEN '01Jan2000' AND '19Jan2000' THEN retorno := 'Capricorn';
  WHEN p_nacimiento BETWEEN '20Jan2000' AND '18Feb2000' THEN retorno := 'Aquarius';
  WHEN p_nacimiento BETWEEN '19Feb2000' AND '20Mar2000' THEN retorno := 'Pisces';

  END CASE;
  return retorno;
  
  END;
  
/
 

  CREATE OR REPLACE FUNCTION "BDWEB"."USUARIOS_TOTALES_CONTEO" 
     
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
 

  CREATE OR REPLACE FUNCTION "BDWEB"."VERIFICATION" (x in varchar2, y in varchar2)   
return varchar2  
as  
  z number;  
begin  
  select 1  
    into z   
    from persona  
    where email=x   
    and pass=y;  
  dbms_output.put_line('Login successful!');  
exception  
when no_data_found then  
  z := 2;
  dbms_output.put_line('Wrong username or password!'); 
  return z;
end; 
/
 
