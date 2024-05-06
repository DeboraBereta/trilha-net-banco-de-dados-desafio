select nome,ano
From Filmes;

-- Questão 2
select *
From Filmes
order by ano asc;

-- Question 3
select nome, ano, duracao
From Filmes
where nome = 'De Volta para o futuro';

-- Question 4
select nome, ano, duracao
From Filmes
where ano = 1997;

-- Question 5
select nome, ano, duracao
From Filmes
WHERE Ano > 2000;

-- Question 6
select nome, ano, duracao
From Filmes
WHERE duracao > 100 and duracao < 150
order by duracao asc;

-- Question 7
select Ano, count(*) as Quantidade
From Filmes
group by ano
order by count(*) desc;

-- Question 8
select id, PrimeiroNome, UltimoNome, Genero
From Atores
where genero = 'M';

-- Question 9
select id, PrimeiroNome, UltimoNome, Genero
From Atores
where genero = 'F'
order by PrimeiroNome;

-- Question 10
select Filmes.nome as Nome,
Generos.genero as Genero
From Filmes, Generos
Group by filmes.nome, Generos.Genero;

-- Question 11
Select Filmes.nome as Nome, Generos.genero as Genero
From FilmesGenero
INNER JOIN Generos on FilmesGenero.IdGenero = Generos.id
INNER JOIN Filmes on FilmesGenero.IdFilme = Filmes.id
Where Generos.genero = 'Mistério';

-- Question 12
Select Filmes.nome as NomeDoFilme, 
       Atores.PrimeiroNome, 
       Atores.UltimoNome, 
       ElencoFilme.Papel
From Filmes
INNER JOIN ElencoFilme on Filmes.id = ElencoFilme.idFilme
INNER JOIN Atores on ElencoFilme.idAtor = Atores.id;

