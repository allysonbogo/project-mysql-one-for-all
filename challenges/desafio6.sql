SELECT
	IF(MIN(p.valor) = 0, '0.00', MIN(p.valor)) AS faturamento_minimo,
  CONVERT(MAX(p.valor), CHAR) AS faturamento_maximo,
  CONVERT(ROUND(AVG(p.valor), 2), CHAR) AS faturamento_medio,
  CONVERT(ROUND(SUM(p.valor), 2), CHAR) AS faturamento_total
FROM usuarios AS u
INNER JOIN planos AS p
ON u.plano_id = p.plano_id;