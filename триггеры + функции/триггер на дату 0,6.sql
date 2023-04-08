CREATE OR REPLACE FUNCTION TIME_END_ins() RETURNS TRIGGER
LANGUAGE plpgsql AS
$$
BEGIN
    UPDATE abonement
	SET expiration_date = abonement.issue_date + tarif.available_time
	FROM tarif
	WHERE abonement.available_time = TARIF.ID;
	RETURN NEW;
	END
	$$;
	
	CREATE TRIGGER TIME_END_ins_tg
	BEFORE UPDATE ON tarif FOR EACH ROW EXECUTE 
	PROCEDURE TIME_END_ins();
	