SELECT 
SpotifyClone.usuarios.nome_usuario AS 'usuario',
COUNT(SpotifyClone.historico_reproducoes.cancao_id) AS 'qt_de_musicas_ouvidas',
ROUND((SUM(SpotifyClone.cancoes.duracao_segundos)) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_reproducoes 
ON SpotifyClone.usuarios.usuarios_id = SpotifyClone.historico_reproducoes.usuarios_id
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.historico_reproducoes.cancao_id = SpotifyClone.cancoes.cancao_id
GROUP BY SpotifyClone.usuarios.nome_usuario
ORDER BY usuario;