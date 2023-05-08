SELECT
	u.nome_pessoa_usuaria AS pessoa_usuaria,
    IF(h.data_reproducao > '2021-01-01', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM usuarios AS u
INNER JOIN (SELECT pessoa_usuaria_id, MAX(data_reproducao) data_reproducao FROM historico GROUP BY pessoa_usuaria_id) AS h
ON u.pessoa_usuaria_id = h.pessoa_usuaria_id
GROUP BY pessoa_usuaria, status_pessoa_usuaria
ORDER BY u.nome_pessoa_usuaria;