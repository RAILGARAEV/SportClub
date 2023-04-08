 create or replace function total_klients()
 RETURNS integer AS $total$
 declare
 total integer;
 BEGIN
 SELECT count(*) into total FROM klient;
 RETURN total;
 END;
 $total$ LANGUAGE plpgsql;
 select total_klients();