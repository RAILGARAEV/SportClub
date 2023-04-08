CREATE VIEW Abonement1
AS SELECT
klient.familiya, klient.imya, klient.otchestvo AS klient,
tarif.naimenovanie_tarif AS tarif,
status.current_status AS status
FROM klient, status, tarif, abonement
WHERE abonement.status = status.id_status
AND abonement.tarif_id = tarif.id_tarif
AND abonement.status = status.id_status
AND abonement.klient_id = klient.id_klient