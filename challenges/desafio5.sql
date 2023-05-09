SELECT
    c.titulo AS cancao,
    COUNT(h.cancao_id) AS reproducoes
FROM historico AS h
INNER JOIN cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, titulo
LIMIT 2;