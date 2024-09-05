-- Mostra estádios com capacidade maior que 50000
SELECT nome_estadio, capacidade
FROM Estadio
WHERE capacidade > 50000
ORDER BY capacidade DESC;

-- Mostra a idade correta do jogador
SELECT nome_jogador, ROUND(DATEDIFF(NOW(), idade) / 365, 1) AS idade
FROM Jogador
ORDER BY idade DESC;

-- Mostra jogadores do Flamengo ordenados por idade
SELECT nome_jogador, nacionalidade, ROUND(DATEDIFF(NOW(), idade) / 365, 1) AS Idade
FROM Jogador
WHERE clube = 'Flamengo'
ORDER BY idade;

-- Contagem de jogadores por clube
SELECT clube, COUNT(*) AS num_jogadores
FROM Jogador
GROUP BY clube;

-- Número de gols por jogo feitos por um jogador específico
SELECT id_jogo, COUNT(*) AS num_gols
FROM Gols
WHERE id_jogador = (SELECT id_jogador FROM Jogador WHERE nome_jogador = 'Diego Nicolás De La Cruz Arcosa')
GROUP BY id_jogo
HAVING COUNT(*) > 0;

-- Número de gols pelo clube Flamengo feitos em cada rodada
SELECT id_jogo, COUNT(*) AS num_gols
FROM Gols
WHERE clube = 'Flamengo'
GROUP BY id_jogo
HAVING COUNT(*) > 0;

-- Total de gols sofridos por um clube específico em um campeonato
SELECT Clube.clube, COUNT(Gols.id_gol) AS gols_sofridos
FROM Clube
JOIN Jogo_Clube ON Clube.id_clube = Jogo_Clube.id_clube
JOIN Jogo ON Jogo_Clube.id_jogo = Jogo.id_jogo
JOIN Gols ON Jogo.id_jogo = Gols.id_jogo
WHERE Clube.clube = 'Fluminense' AND Gols.clube <> 'Fluminense'
GROUP BY Clube.clube;

-- Total de gols de um clube específico
SELECT Clube.clube, SUM(CASE WHEN Gols.clube = Clube.clube THEN 1 ELSE 0 END) AS total_gols
FROM Gols
JOIN Clube ON Gols.clube = Clube.clube
WHERE Clube.clube = 'Flamengo'
GROUP BY Clube.clube;

-- Jogadores do Flamengo que não marcaram gols
SELECT Jogador.nome_jogador AS 'NÃO GOLS'
FROM Jogador
JOIN Clube ON Jogador.clube = Clube.clube
LEFT JOIN Gols ON Jogador.id_jogador = Gols.id_jogador
WHERE Clube.clube = 'Flamengo' AND Gols.id_gol IS NULL;

-- Jogos do Campeonato Brasileiro de 2024 com mais de 4 gols
SELECT Jogo.id_jogo, Jogo.data, Jogo.hora, COUNT(Gols.id_jogo) AS 'total de gols'
FROM Jogo
JOIN Gols ON Jogo.id_jogo = Gols.id_jogo
WHERE Jogo.nome_campeonato = 'Brasileiro' AND Jogo.ano = 2024
GROUP BY Jogo.id_jogo, Jogo.data, Jogo.hora
HAVING COUNT(Gols.id_jogo) > 4
ORDER BY 'total de gols' DESC;

-- Média de idade dos jogadores dos clubes
SELECT clube, AVG(DATEDIFF(NOW(), idade) / 365) AS media_idade
FROM Jogador
GROUP BY clube
ORDER BY media_idade;


-- Média de gols por jogo no estádio Maracanã
SELECT Estadio.nome_estadio, ROUND(AVG(gols_por_jogo), 1) AS media_gols
FROM (
    SELECT nome_estadio, COUNT(id_gol) AS gols_por_jogo
    FROM Jogo 
    JOIN Gols ON Jogo.id_jogo = Gols.id_jogo
    GROUP BY Jogo.id_jogo
) AS gols
JOIN Estadio ON gols.nome_estadio = Estadio.nome_estadio
WHERE Estadio.nome_estadio = 'Maracanã'
GROUP BY Estadio.nome_estadio;

-- Contagem de clubes com mais de 20 jogadores
SELECT clube, COUNT(*) AS numero_jogadores
FROM Jogador
GROUP BY clube
HAVING COUNT(*) > 20;
