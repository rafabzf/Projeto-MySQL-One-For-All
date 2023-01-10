SELECT
SpotifyClone.cancoes.nome_cancao AS 'nome',
COUNT(SpotifyClone.historico_reproducoes.cancao_id) AS 'reproducoes'
FROM SpotifyClone.historico_reproducoes
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.historico_reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
INNER JOIN SpotifyClone.usuarios
ON SpotifyClone.usuarios.usuarios_id = SpotifyClone.historico_reproducoes.usuarios_id
WHERE SpotifyClone.usuarios.plano_id = 1 OR SpotifyClone.usuarios.plano_id = 4
GROUP BY nome 
ORDER BY nome;