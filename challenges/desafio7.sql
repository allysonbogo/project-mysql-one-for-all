SELECT
	art.nome AS artista,
  alb.titulo AS album,
  COUNT(seg.artista_id) AS pessoas_seguidoras
FROM artistas AS art
INNER JOIN albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN seguindo AS seg
ON art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;