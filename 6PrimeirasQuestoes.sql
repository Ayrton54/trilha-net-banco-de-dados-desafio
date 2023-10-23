--1 - Buscar o nome e ano dos filmes
select nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select * from Filmes order by Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from filmes where Nome = 'de volta para o futuro'

--4 - Buscar os filmes lançados em 1997
select * from filmes where Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes where Duracao > 100 and Duracao < 150 order by Duracao