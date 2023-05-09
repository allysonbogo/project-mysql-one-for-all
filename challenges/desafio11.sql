SELECT
	a.titulo AS album,
  COUNT(f.cancao_id) AS favoritadas
FROM favoritadas AS f
INNER JOIN cancoes AS c
ON f.cancao_id = c.cancao_id
INNER JOIN albuns AS a
ON c.album_id = a.album_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;