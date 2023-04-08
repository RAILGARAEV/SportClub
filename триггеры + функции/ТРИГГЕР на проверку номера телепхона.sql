CREATE or REPLACE FUNCTION Проверка_Телефона_Работодателя()
	RETURNS TRIGGER AS 
	$Триггер_Проверки_телефона$
	DECLARE r varchar(11);
BEGIN
	if exists(select * from klient where telefon = new.telefon) then
		RAISE NOTICE 'Данный номер телефона уже зарегестрирован';
		return null;
	else
		return new;
	end if;
END;
$Триггер_Проверки_телефона$
LANGUAGE plpgsql;



CREATE or Replace TRIGGER Триггер_Проверки_телефона
	BEFORE INSERT
	on klient
	FOR EACH ROW 
	EXECUTE PROCEDURE Проверка_Телефона_Работодателя();