--1
Select Nome, Ano from Filmes

--2
Select Nome, Ano from Filmes
order by Ano

--3
SELECT * from Filmes
Where Nome = 'De volta para o futuro'

--4
select * from Filmes
where ano = 1997

--5
select * from Filmes
where ano > 2000

--6
select * from Filmes
where Duracao > 100 and Duracao <150
ORDER BY Duracao

--7
SELECT ANO, COUNT(*) AS quantidade
FROM FILMES
GROUP BY ANO
ORDER BY quantidade DESC;

--8
select * from Atores
where Genero = 'M'

--9
select * from Atores
where Genero = 'F'
order by PrimeiroNome

--10
SELECT F.Nome, G.Genero AS genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.id

--11
SELECT F.Nome, G.Genero AS genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.id
where genero = 'mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
from ElencoFilme EF
inner join Filmes F ON F.Id = EF.IdFilme
inner join Atores A ON A.Id = EF.IdAtor
