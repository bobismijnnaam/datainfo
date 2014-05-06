SELECT p.name FROM Person p
-- WHERE 'schreven voor een film die undirected was'
WHERE p.pid IN (
	SELECT w.pid FROM Writes w
	WHERE p.pid = w.pid
	-- AND 'de film was undirected'
	AND NOT EXISTS (
		SELECT * FROM Directs d
		WHERE d.mid = w.mid
	)
);