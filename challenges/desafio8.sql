SELECT
	art.nome AS artista,
    alb.titulo AS album
FROM artistas AS art
INNER JOIN albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.nome = 'Elis Regina'
ORDER BY album;