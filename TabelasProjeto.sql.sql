CREATE TABLE Campeonato (
    nome_campeonato VARCHAR(50),
    ano INT,
    PRIMARY KEY (nome_campeonato, ano)
);

CREATE TABLE Clube (
    id_clube INT PRIMARY KEY AUTO_INCREMENT,
    clube VARCHAR(50) UNIQUE,
    cidade VARCHAR(50)
);

CREATE TABLE Jogador (
    id_jogador INT PRIMARY KEY AUTO_INCREMENT,
    nacionalidade VARCHAR(50),
    idade DATE,
    nome_jogador VARCHAR(100),
    clube VARCHAR(50),
    FOREIGN KEY (clube) REFERENCES Clube(clube) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Estadio (
    id_estadio INT PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(50),
    estado VARCHAR(50),
    nome_estadio VARCHAR(50),
    capacidade INT,
    clube VARCHAR(50),
    FOREIGN KEY (clube) REFERENCES Clube(clube) ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (nome_estadio, clube)
);
ALTER TABLE Estadio MODIFY COLUMN clube VARCHAR(50) NULL;

CREATE TABLE Jogo (
    id_jogo INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    hora TIME,
    nome_estadio VARCHAR(50),
    nome_campeonato VARCHAR(50),
    ano INT,
    id_arbitro INT,
    FOREIGN KEY (nome_estadio) REFERENCES Estadio(nome_estadio) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (nome_campeonato, ano) REFERENCES Campeonato(nome_campeonato, ano) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_arbitro) REFERENCES Arbitro(id_arbitro) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Gols (
    id_gol INT PRIMARY KEY AUTO_INCREMENT,
    id_jogador INT,
    id_jogo INT,
    clube VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_jogador) REFERENCES Jogador(id_jogador) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (clube) REFERENCES Clube(clube) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Arbitro (
    id_arbitro INT PRIMARY KEY AUTO_INCREMENT,
    nome_arbitro VARCHAR(50),
    idade DATE,
    federacao VARCHAR(100)
);