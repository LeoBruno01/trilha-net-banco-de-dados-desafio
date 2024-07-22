select * from Filmes

select * from Atores

select * from FilmesGenero

select * from ElencoFilme

select * from Generos

-- 1
select Nome, Ano from Filmes 

-- 2
select * from Filmes order by Ano asc 

-- 3
select * from Filmes where Nome = 'De volta para o futuro'

-- 4 
select * from Filmes where Ano = 1997

-- 5
select * from Filmes where Ano > 2000

-- 6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao ASC

-- 7 
select Ano, COUNT(Ano) as quantidade from Filmes group by Ano Order by quantidade desc

-- 8 
select * from Atores where Genero = 'M'

-- 9 
select * from Atores where Genero = 'F' order by PrimeiroNome

-- 10
select Nome, Genero from Filmes 
inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero

-- 11
select Nome, Genero from Filmes 
inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero
where Genero = 'Mistério'

-- 12
select Nome, PrimeiroNome, UltimoNome, Papel from Filmes 
inner join ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
inner join Atores on ElencoFilme.IdAtor = Atores.Id