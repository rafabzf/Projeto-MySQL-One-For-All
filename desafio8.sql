SELECT 
SpotifyClone.artistas.nome_artista AS 'artista',
SpotifyClone.albuns.nome_album AS 'album'
FROM SpotifyClone.albuns
INNER JOIN SpotifyClone.artistas
ON SpotifyClone.albuns.artista_id = SpotifyClone.artistas.artista_id
WHERE SpotifyClone.artistas.nome_artista = 'Elis Regina';