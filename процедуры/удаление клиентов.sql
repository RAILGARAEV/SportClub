 Create or replace procedure klient_delete
 (
k_id int 
 )
 language plpgsql as
 $$
 Begin
	Delete from klient where id_klient = k_id;
End
$$;