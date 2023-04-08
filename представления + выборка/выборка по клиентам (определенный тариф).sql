Select klient.familiya, klient.imya, klient.otchestvo AS klient,
tarif.naimenovanie_tarif AS tarif
from klient, tarif, abonement
where abonement.tarif_id = tarif.id_tarif
and abonement.klient_id = klient.id_klient
and tarif.naimenovanie_tarif = 'месячный'