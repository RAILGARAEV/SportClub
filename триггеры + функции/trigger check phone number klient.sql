CREATE or REPLACE FUNCTION checking_klient_phone()
	RETURNS TRIGGER AS 
	$phone_verification_trigger$
	DECLARE r varchar(11);
BEGIN
	if exists(select * from klient where telefon = new.telefon) then
		RAISE NOTICE 'Данный номер телефона уже зарегестрирован';
		return null;
	else
		return new;
	end if;
END;
$phone_verification_trigger$
LANGUAGE plpgsql;



CREATE or Replace TRIGGER phone_verification_trigger
	BEFORE INSERT
	on klient
	FOR EACH ROW 
	EXECUTE PROCEDURE checking_klient_phone();