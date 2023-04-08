CREATE VIEW TIMETABLE2
AS SELECT
timetable.day_of_the_week,
timetable.hours,
trainer.Familiya, trainer.Imya, trainer.Otchestvo AS trainer,
type_workout.type_workout AS type_workout,
premises.pnumber AS premises
FROM timetable, trainer, premises,type_workout
WHERE timetable.trainer = trainer.id_trainer
AND timetable.premises_id = premises.id_premises
AND timetable.type_workout = type_workout.id_type_workout