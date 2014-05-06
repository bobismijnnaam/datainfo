SELECT a.pid FROM Acts a, Movie m
WHERE m.name = 'Back to the Future'
AND m.mid = a.mid;