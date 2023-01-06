SELECT
SpotifyClone.cancoes.nome_cancao AS 'cancao',
COUNT(SpotifyClone.historico_reproducoes.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.historico_reproducoes
ON SpotifyClone.cancoes.cancao_id = SpotifyClone.historico_reproducoes.cancao_id
GROUP BY SpotifyClone.cancoes.nome_cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;