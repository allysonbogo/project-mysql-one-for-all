SELECT
    CASE
	WHEN u.idade < 31 THEN 'Até 30 anos'
	WHEN u.idade BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
	WHEN u.idade > 60  THEN 'Maior de 60 anos'
    END AS faixa_etaria,
	COUNT(DISTINCT u.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(fav.pessoa_usuaria_id) AS total_favoritadas
FROM usuarios AS u
LEFT JOIN favoritadas AS fav
ON u.pessoa_usuaria_id = fav.pessoa_usuaria_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;