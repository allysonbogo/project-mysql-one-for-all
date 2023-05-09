SELECT
	a.nome AS artista,
  CASE
	WHEN COUNT(*) < 2 THEN '-'
	WHEN COUNT(*) BETWEEN 1 AND 2 THEN 'C'
	WHEN COUNT(*) BETWEEN 3 AND 4  THEN 'B'
	WHEN COUNT(*) > 4  THEN 'A'
  END AS ranking
FROM favoritadas AS f
INNER JOIN cancoes AS c
ON f.cancao_id = c.cancao_id
RIGHT JOIN artistas AS a
ON c.artista_id = a.artista_id
GROUP BY artista
ORDER BY IF(ranking = '-', 'D', ranking), artista;