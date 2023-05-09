SELECT
  u.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(h.pessoa_usuaria_id) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos
FROM usuarios AS u
INNER JOIN historico AS h
ON u.pessoa_usuaria_id = h.pessoa_usuaria_id
INNER JOIN cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY nome_pessoa_usuaria
ORDER BY nome_pessoa_usuaria;