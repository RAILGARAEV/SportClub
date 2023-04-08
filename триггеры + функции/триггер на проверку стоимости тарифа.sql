 CREATE OR REPLACE FUNCTION tarif() RETURNS trigger
 LANGUAGE 'plpgsql'
 AS $BODY$ begin
 if(new.price < 100)
 then raise exception 'Зaпpещенo создавать бесплатные тарифы !'; end if;
 return new; end
 $BODY$;
 CREATE OR REPLACE TRIGGER tarif_tg
 BEFORE INSERT OR UPDATE
 ON tarif FOR EACH ROW
 EXECUTE PROCEDURE tarif();