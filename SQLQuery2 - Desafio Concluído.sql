--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao -- na imagem do desafio tambem continha a dura��o do filme 
FROM Filmes
ORDER BY ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

--4 - Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE ano = 1997;

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE ano > 2000;

--6 - Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lan�ados no ano, agrupando por ano, ordenando pela dura��o em ordem decrescente
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC; -- ordenando pela duracao? Ordenei pela quantidade e ficou igual a imagem do desafio!

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero  
FROM Atores
WHERE Genero = 'M';

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero  
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10 - Buscar o nome do filme e o g�nero
SELECT
Nome,
Genero
FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT 
Nome, 
Genero
FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mist�rio';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
Nome,
PrimeiroNome,
UltimoNome,
Papel
FROM
Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id