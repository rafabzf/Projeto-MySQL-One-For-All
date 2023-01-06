SELECT
SpotifyClone.usuarios.nome_usuario AS 'usuario',
IF(YEAR(MAX(SpotifyClone.historico_reproducoes.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') 
AS 'status_usuario'
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_reproducoes
ON SpotifyClone.usuarios.usuarios_id = SpotifyClone.historico_reproducoes.usuarios_id
GROUP BY nome_usuario
ORDER BY usuario;
