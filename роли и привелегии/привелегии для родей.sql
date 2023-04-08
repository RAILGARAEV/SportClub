  -- Разрешение выполнить только чтение для роли users
 GRANT SELECT ON tarif, abonement, klient, timetable, workout TO users;
  -- Запрет на изменение таблицы для роли users
 REVOKE UPDATE ON tarif, abonement, klient, timetable, workout FROM users;
 -- Рaзрешение выполhить Bсе функции для pоли administrator
 GRANT SELECT, UPDATE ON abonement, klient, premises, premises_type, status, tarif, timetable, trainer, type_workout, workout TO administrator;