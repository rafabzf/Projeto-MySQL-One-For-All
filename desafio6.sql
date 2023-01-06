SELECT
MIN(SpotifyClone.planos.valor_plano) AS 'faturamento_minimo',
MAX(SpotifyClone.planos.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(SpotifyClone.planos.valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(SpotifyClone.planos.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.planos
ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.plano_id;