SELECT
	COUNT(*) AS musicas_no_historico
FROM usuarios AS u
INNER JOIN historico AS h
ON u.pessoa_usuaria_id = h.pessoa_usuaria_id
WHERE u.nome_pessoa_usuaria = 'Barbara Liskov';