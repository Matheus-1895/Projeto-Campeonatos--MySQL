CREATE TABLE Jogo_Clube (
    id_jogo INT,
    id_clube INT,
    PRIMARY KEY (id_jogo, id_clube),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_clube) REFERENCES Clube(id_clube) ON DELETE CASCADE ON UPDATE CASCADE
);




