SELECT
SpotifyClone.artistas.nome_artista AS 'artista',
SpotifyClone.albuns.nome_album AS 'album',
COUNT(SpotifyClone.seguindo_artistas.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns
ON SpotifyClone.artistas.artista_id = SpotifyClone.albuns.artista_id
INNER JOIN SpotifyClone.seguindo_artistas
ON SpotifyClone.seguindo_artistas.artista_id = SpotifyClone.artistas.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

