SELECT p.name FROM Person p
-- WHERE 'schreven voor een film die undirected was'
WHERE p.pid IN (
	SELECT w.pid FROM Writes w
	WHERE p.pid = w.pid
	-- AND 'de film was undirected'
	AND w.mid NOT IN (
		SELECT d.mid FROM Directs d
	)
);