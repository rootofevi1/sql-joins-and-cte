DO $$ BEGIN
IF (SELECT count(*) FROM person p LEFT JOIN person_order o ON o.person_id=p.id WHERE o.id IS NULL) <> 1 THEN RAISE EXCEPTION 'Missing customer regression'; END IF;
END $$;
