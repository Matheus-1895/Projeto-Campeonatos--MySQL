# Projeto-Campeonatos ⚽

Um sistema de gerenciamento de campeonatos de futebol desenvolvido em *MySQL*, com foco em organização de clubes, jogadores, estádios, jogos, gols e árbitros. O projeto serve como referência para estudo de *bancos de dados relacionais*, consultas SQL e modelagem de dados.

---

## 🎯 Objetivo do Projeto

O objetivo deste projeto é simular o funcionamento de um campeonato de futebol, permitindo:

- Cadastrar clubes, jogadores, estádios, jogos, gols e árbitros.
- Consultar informações sobre jogos, classificação, artilharia e desempenho de jogadores.
- Praticar *SQL avançado* (joins, subqueries e agregações).
- Servir como projeto de *portfólio* para estudos e demonstrações.

---

## 📂 Estrutura do Projeto

O repositório contém os seguintes arquivos:

- *TabelaRelação.sql* → criação de tabelas de relação entre entidades.
- *TabelasProjeto.sql* → script principal com todas as tabelas do projeto.
- *QuerysComplexos.sql* → consultas SQL de exemplo para análise de campeonatos.
- *InsertJogadores.sql* → inserção de dados de jogadores.
- *Inserts.sql* → inserção de outros dados do projeto.
- *Views.sql* → criação de views para consultas mais rápidas e organizadas.

---

## 📊 Modelo de Dados (ERD)

O projeto segue um modelo relacional com as seguintes entidades principais:

- *Clube* → possui vários jogadores e participa de vários jogos.
- *Jogador* → pertence a um clube e pode marcar gols em jogos.
- *Estádio* → local onde ocorrem os jogos.
- *Jogo* → relaciona dois clubes, ocorre em um estádio e pode ter vários gols.
- *Gol* → vincula um jogador a um jogo específico.
- *Árbitro* → apita os jogos.

---

## Representação simplificada:

Clube --< Jogador  
Clube --< Jogo >-- Clube  
Jogo --< Gol >-- Jogador  
Jogo --< Árbitro

---

## Exemplos de Consultas SQL

1. Listar todos os jogos com clubes e estádio:
SELECT j.data_jogo, c1.nome AS Clube_Casa, c2.nome AS Clube_Fora, e.nome AS Estadio
FROM Jogo j
JOIN Clube c1 ON j.id_clube_casa = c1.id_clube
JOIN Clube c2 ON j.id_clube_fora = c2.id_clube
JOIN Estadio e ON j.id_estadio = e.id_estadio;

2. Total de gols por jogador:
SELECT jog.nome, COUNT(g.id_gol) AS total_gols
FROM Jogador jog
JOIN Gol g ON jog.id_jogador = g.id_jogador
GROUP BY jog.nome;

3. Jogos de um clube específico:
SELECT j.data_jogo, c1.nome AS Clube_Casa, c2.nome AS Clube_Fora
FROM Jogo j
JOIN Clube c1 ON j.id_clube_casa = c1.id_clube
JOIN Clube c2 ON j.id_clube_fora = c2.id_clube
WHERE c1.id_clube = 1 OR c2.id_clube = 1;

---

## Como Rodar o Projeto

1. Abra o MySQL Workbench ou outro cliente MySQL.  
2. Crie um novo banco de dados:
CREATE DATABASE CampeonatosDB;
USE CampeonatosDB;

3. Execute os scripts na seguinte ordem:
- *TabelasProjeto.sql* → script principal com todas as tabelas do projeto.
- *TabelaRelação.sql* → criação de tabelas de relação entre entidades.
- *Inserts.sql* → inserção de outros dados do projeto.
- *InsertJogadores.sql* → inserção de dados de jogadores.
- *QuerysComplexos.sql* → consultas SQL de exemplo para análise de campeonatos.
- *Views.sql* → criação de views para consultas mais rápidas e organizadas.

4. Explore os dados com queries próprias ou usando os exemplos já fornecidos.

