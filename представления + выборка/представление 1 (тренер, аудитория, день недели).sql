CREATE VIEW CLIENTINFORMATION
AS SELECT
trainer.Familiya, trainer.Imya, trainer.Otchestvo AS trainer,
premises.pnumber AS premises,
timetable.day_of_the_week AS timetable
FROM timetable, trainer, premises
WHERE timetable.trainer = trainer.id_trainer
AND timetable.premises_id = premises.id_premises
