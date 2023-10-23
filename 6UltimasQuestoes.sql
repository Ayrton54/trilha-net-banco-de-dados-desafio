--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, COUNT(*) as QuantidadeDeFilmes from Filmes
group by Ano order by QuantidadeDeFilmes desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select primeironome, ultimonome from Atores where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select primeironome, ultimonome from Atores where Genero = 'F'
order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select filmes.Nome as Nome, generos.Genero as Genero
from filmes
JOIN generos on filmes.Id = generos.Id
order by Genero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select filmes.Nome as Nome, generos.Genero as Genero from filmes
join generos on filmes.Id = Generos.Id
where Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Filmes.Nome as Nome, Atores.PrimeiroNome as PrimeiroNome,
Atores.UltimoNome as UltimoNome, ElencoFilme.Papel as Papel from Filmes
join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
join Atores on ElencoFilme.IdAtor = Atores.Id;