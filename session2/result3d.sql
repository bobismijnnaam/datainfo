SELECT p.name FROM Person p
WHERE p.pid IN (
	SELECT w.pid FROM Writes w
) AND NOT EXISTS (
	SELECT * FROM Writes w
	WHERE w.pid = p.pid
	AND EXISTS (
		SELECT * FROM Directs d
		WHERE d.mid = w.mid
	)
);
-- persoon is een schrijver
-- films zijn regisseurloos