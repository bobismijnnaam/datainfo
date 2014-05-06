SELECT p.name FROM Person p, Writes w
WHERE p.pid = w.pid
AND w.mid NOT IN (
	SELECT d.mid FROM Directs d
);