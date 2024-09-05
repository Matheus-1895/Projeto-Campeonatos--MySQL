-- Total de gols de cada jogador
CREATE VIEW ArtilhariaBrasileiro AS
SELECT Jogador.nome_jogador, COUNT(Gols.id_gol) AS total_gols
FROM Jogador
JOIN Gols ON Jogador.id_jogador = Gols.id_jogador
JOIN Jogo ON Gols.id_jogo = Jogo.id_jogo
WHERE Jogo.nome_campeonato = 'Brasileiro' AND Jogo.ano = 2024
GROUP BY Jogador.nome_jogador
ORDER BY total_gols DESC;

-- Total de gols marcados e sofridos por todos os clubes em um campeonato
CREATE VIEW SaldoDeGols AS
SELECT Clube.clube, 
    COALESCE(Marcados.gols_marcados, 0) AS gols_marcados,
    COALESCE(Sofridos.gols_sofridos, 0) AS gols_sofridos,
    COALESCE(Marcados.gols_marcados, 0) - COALESCE(Sofridos.gols_sofridos, 0) AS saldo_gols
FROM Clube
LEFT JOIN (
    SELECT Gols.clube,  COUNT(Gols.id_gol) AS gols_marcados
    FROM  Gols
    GROUP BY  Gols.clube
) Marcados ON Clube.clube = Marcados.clube
LEFT JOIN (
    SELECT  Clube.clube, COUNT(Gols.id_gol) AS gols_sofridos
    FROM Clube
    JOIN Jogo_Clube ON Clube.id_clube = Jogo_Clube.id_clube
    JOIN  Jogo ON Jogo_Clube.id_jogo = Jogo.id_jogo
    JOIN  Gols ON Jogo.id_jogo = Gols.id_jogo
    WHERE  Gols.clube <> Clube.clube
    GROUP BY Clube.clube
) Sofridos ON Clube.clube = Sofridos.clube
ORDER BY Clube.clube;
