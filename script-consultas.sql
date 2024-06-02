--------------------------------------------------------------------------------------------------
/*1*/  SELECT Nome, Ano FROM Filmes;
--------------------------------------------------------------------------------------------------
/*2*/  SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
--------------------------------------------------------------------------------------------------
/*3*/  SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
--------------------------------------------------------------------------------------------------
/*4*/  SELECT * FROM Filmes WHERE Ano = 1997;
--------------------------------------------------------------------------------------------------
/*5*/  SELECT * FROM Filmes WHERE Ano > 2000;
--------------------------------------------------------------------------------------------------
/*6*/  SELECT * FROM Filmes WHERE (Duracao > 100) AND (Duracao < 150) ORDER BY Duracao ASC;
--------------------------------------------------------------------------------------------------
/*7*/  SELECT Ano, COUNT(Ano) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;
--------------------------------------------------------------------------------------------------
/*8*/  SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';
--------------------------------------------------------------------------------------------------
/*9*/  SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;
--------------------------------------------------------------------------------------------------
/*10*/ SELECT F.Nome, G.Genero FROM FilmesGenero FG 
       INNER JOIN Filmes F ON FG.IdFilme = F.Id
       INNER JOIN Generos G ON FG.IdGenero = G.Id;
--------------------------------------------------------------------------------------------------
/*11*/ SELECT F.Nome, G.Genero FROM FilmesGenero FG
       INNER JOIN Filmes F ON FG.IdFilme = F.Id
       INNER JOIN Generos G ON FG.IdGenero = G.Id
       WHERE G.Genero='Mistério';
--------------------------------------------------------------------------------------------------
/*12*/ SELECT F.Nome, (A.PrimeiroNome + ' ' + A.UltimoNome) as Ator, EF.Papel FROM ElencoFilme EF
       INNER JOIN Filmes F ON EF.IdFilme = F.Id
       INNER JOIN Atores A ON EF.Id = A.Id
       ORDER BY F.Nome, Ator;
--------------------------------------------------------------------------------------------------
