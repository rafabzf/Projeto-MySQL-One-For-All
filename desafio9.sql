SELECT
COUNT(usuarios_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducoes
WHERE SpotifyClone.historico_reproducoes.usuarios_id = 1;