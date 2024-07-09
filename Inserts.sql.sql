INSERT INTO Campeonato (nome_campeonato , ano) VALUES
 ('Brasileiro' , '2024');

INSERT INTO Clube (clube, cidade) VALUES
    ('Flamengo', 'Rio de Janeiro'),/*1*/
    ('Corinthians', 'São Paulo'),/*2*/
    ('Palmeiras', 'São Paulo'),/*3*/
    ('Athletico Paranaense', 'Curitiba'),/*4*/
    ('São Paulo', 'São Paulo'),/*5*/
    ('Fluminense', 'Rio de Janeiro'),/*6*/
    ('Vasco da Gama', 'Rio de Janeiro'),/*7*/
    ('Internacional', 'Porto Alegre'),/*8*/
    ('Grêmio', 'Porto Alegre'),/*9*/
    ('Atlético Mineiro', 'Belo Horizonte'),/*10*/
    ('Botafogo', 'Rio de Janeiro'),/*11*/
    ('Vitória', 'Bahia'), /*12*/
    ('Bahia', 'Bahia'),/*13*/
    ('Criciúma', 'Santa Catarina'),/*14*/
    ('Cuiabá', 'Mato Grosso'),/*15*/
    ('Red Bull Bragantino', 'São Paulo'),/*16*/
    ('Atlético Goianiense', 'Goiás'),/*17*/
    ('Juventude', 'Rio Grande do Sul'),/*18*/
    ('Fortaleza', 'Ceará'),/*19*/
    ('Cruzeiro', 'Belo Horizonte');/*20*/

INSERT INTO Estadio (cidade, estado, nome_estadio, capacidade, clube) VALUES 
	('Rio de Janeiro', 'Rio de Janeiro', 'Maracanã', 78838, 'Flamengo'),
    ('Rio de Janeiro', 'Rio de Janeiro', 'Maracanã', 78838, 'Fluminense'),
    ('Fortaleza', 'Ceará', 'Castelão', 63903, 'Fortaleza'),
    ('Rio de Janeiro', 'Rio de Janeiro', 'São Januário', 21880, 'Vasco da Gama'),
    ('Rio de Janeiro', 'Rio de Janeiro', 'Nilton Santos', 44660, 'Botafogo'),
    ('São Paulo', 'São Paulo', 'Neo Química Arena', 49200, 'Corinthians'),
    ('Belo Horizonte', 'Minas Gerais', 'Mineirão', 61846, 'Cruzeiro'),
    ('São Paulo', 'São Paulo', 'Morumbis', 66795, 'São Paulo'),
    ('Porto Alegre', 'Rio Grande do Sul', 'Beira-Rio', 50128, 'Internacional'),
    ('Porto Alegre', 'Rio Grande do Sul', 'Arena do Grêmio', 55662, 'Grêmio'),
    ('Belo Horizonte', 'Minas Gerais', 'Arena MRV', 46000, 'Atlético Mineiro'),
    ('São Paulo', 'São Paulo', 'Allianz Parque', 43713, 'Palmeiras'),
    ('Salvador', 'Bahia', 'Arena Fonte Nova', 50025, 'Bahia'),
    ('Cuiabá', 'Mato Grosso', 'Arena Pantanal', 44003, 'Cuiabá'),
    ('Criciúma', 'Santa Catarina', 'Estádio Heriberto Hülse', 19225, 'Criciúma'),
    ('Bragança Paulista', 'São Paulo', 'Arena Red Bull', 15010, 'Red Bull Bragantino'),
    ('Caxias do Sul', 'Rio Grande do Sul', 'Estádio Alfredo Jaconi', 19924, 'Juventude'),
    ('Vitória', 'Bahia', 'Estádio Manoel Barradas (Barradão)', 30618, 'Vitória'),
    ('Goiânia', 'Goiás', 'Estádio Antônio Accioly', 10500, 'Atlético Goianiense'),
    ('Curitiba', 'Paraná', 'Arena da Baixada', 42372, 'Athletico Paranaense'),
    ('Brasília', 'Distrito Federal', 'Mané Garrincha', 72788, NULL),
    ('Belo Horizonte', 'Minas Gerais', 'Arena Independência', 23018, NULL),
    ('Goiânia', 'Goiás', 'Serra Dourada', 50049, NULL);

INSERT INTO Jogo (data, id_jogo, hora, nome_estadio, nome_campeonato, ano, id_arbitro) VALUES 
    ('2024-04-13', 1, '18:30', 'Beira-Rio', 'Brasileiro', 2024, 12),
    ('2024-04-13', 2, '18:30', 'Estádio Heriberto Hülse', 'Brasileiro', 2024, 14),
    ('2024-04-13', 3, '21:00', 'Maracanã', 'Brasileiro', 2024, 13),
    ('2024-04-13', 4, '21:00', 'Morumbis', 'Brasileiro', 2024, 1),
    ('2024-04-14', 5, '16:00', 'São Januário', 'Brasileiro', 2024, 7),
    ('2024-04-14', 6, '17:00', 'Neo Química Arena', 'Brasileiro', 2024, 9),
    ('2024-04-14', 7, '16:00', 'Arena da Baixada', 'Brasileiro', 2024, 2),
    ('2024-04-14', 8, '16:00', 'Serra Dourada', 'Brasileiro', 2024, 8),
    ('2024-04-14', 9, '16:00', 'Mineirão', 'Brasileiro', 2024, 10),
    ('2024-04-14', 10, '18:30', 'Estádio Manoel Barradas (Barradão)', 'Brasileiro', 2024, 11),
    ('2024-04-16', 11, '20:00', 'Arena Fonte Nova', 'Brasileiro', 2024, 9),
    ('2024-04-17', 12, '20:00', 'Arena Red Bull', 'Brasileiro', 2024, 6),
    ('2024-04-17', 13, '20:00', 'Arena do Grêmio', 'Brasileiro', 2024, 5),
    ('2024-04-17', 14, '21:30', 'Castelão', 'Brasileiro', 2024, 4),
    ('2024-04-18', 15, '21:30', 'Arena Independência', 'Brasileiro', 2024, 3),
    ('2024-04-20', 16, '16:00', 'Arena MRV', 'Brasileiro', 2024, 2),
    ('2024-04-20', 17, '16:00', 'Estádio Alfredo Jaconi', 'Brasileiro', 2024, 1),
    ('2024-04-20', 18, '18:30', 'Maracanã', 'Brasileiro', 2024, 8),
    ('2024-04-20', 19, '18:30', 'Nilton Santos', 'Brasileiro', 2024, 14),
    ('2024-04-20', 20, '21:00', 'Arena Pantanal', 'Brasileiro', 2024, 7);


INSERT INTO Gols (id_jogo, id_jogador, clube) VALUES 
    ('1', '290', 'Internacional'),
    ('1', '293', 'Internacional'),
    ('1', '251', 'Bahia'),
    ('2', '365', 'Criciúma'),
    ('2', '334', 'Juventude'),
    ('3', '58', 'Fluminense'),
    ('3', '58', 'Fluminense'),
    ('3', '140', 'Red Bull Bragantino'),
    ('3', '121', 'Red Bull Bragantino'),
    ('4', '118', 'São Paulo'),
    ('4', '366', 'Fortaleza'),
    ('4', '348', 'Fortaleza'),
    ('5', '35', 'Vasco da Gama'),
    ('5', '42', 'Vasco da Gama'),
    ('5', '304', 'Grêmio'),
    ('7', '93', 'Athletico Paranaense'),
    ('7', '94', 'Athletico Paranaense'),
    ('7', '91', 'Athletico Paranaense'),
    ('7', '79', 'Athletico Paranaense'),
    ('8', '3', 'Flamengo'),
    ('8', '19', 'Flamengo'),
    ('8', '441', 'Atlético Goianiense'),
    ('9', '273', 'Cruzeiro'),
    ('9', '262', 'Cruzeiro'),
    ('9', '254', 'Cruzeiro'),
    ('9', '212', 'Botafogo'),
    ('9', '220', 'Botafogo'),
    ('10', '157', 'Palmeiras'),
    ('11', '246', 'Bahia'),
    ('11', '244', 'Bahia'),
    ('11', '51', 'Fluminense'),
    ('12', '138', 'Red Bull Bragantino'),
    ('12', '134', 'Red Bull Bragantino'),
    ('12', '45', 'Vasco da Gama'),
    ('13', '307', 'Grêmio'),
    ('13', '305', 'Grêmio'),
    ('14', '357', 'Fortaleza'),
    ('14', '272', 'Cruzeiro'),
    ('15', '290', 'Internacional'),
    ('16', '378', 'Criciúma'),
    ('16', '197', 'Atlético Mineiro'),
    ('17', '334', 'Juventude'),
    ('17', '335', 'Juventude'),
    ('18', '118', 'São Paulo'),
    ('18', '19', 'Flamengo'),
    ('18', '2', 'Flamengo'),
    ('19', '227', 'Botafogo');

INSERT INTO Jogo_clube (id_clube ,id_jogo ) VALUES
	('8','1'),
    ('13','1'),
	('14','2'),
    ('18','2'),
    ('6','3'),
    ('16','3'),
    ('5','4'),
    ('19','4'),
    ('7','5'),
    ('9','5'),
    ('2','6'),
    ('10','6'),
    ('4','7'),
    ('15','7'),
    ('17','8'),
    ('1','8'),
    ('20','9'),
    ('11','9'),
    ('12','10'),
    ('3','10'),
	('13', '11'),
    ('6', '11'),
    ('16', '12'),
    ('7', '12'),
    ('9', '13'),
    ('4', '13'),
    ('19', '14'),
    ('20', '14'),
    ('3', '15'),
    ('8', '15'),
    ('10', '16'),
    ('14', '16'),
    ('18', '17'),
    ('2', '17'),
    ('1', '18'),
    ('5', '18'),
    ('11', '19'),
    ('17', '19'),
    ('15', '20'),
    ('13', '20');

INSERT INTO Arbitro (nome_arbitro, idade, federacao) VALUES 
	('Wilton Pereira Sampaio', '1982-12-28', 'Federação Goiana de Futebol'),
	('Raphael Claus', '1979-09-06', 'Federação Paulista de Futebol'),
	('Bruno Arleu de Araújo', '1982-05-03', 'Federação de Futebol do Estado do Rio de Janeiro'),
	('Luiz Flávio de Oliveira', '1977-12-13', 'Federação Paulista de Futebol'),
	('Leandro Pedro Vuaden', '1975-06-25', 'Federação Gaúcha de Futebol'),
	('Anderson Daronco', '1981-01-05', 'Federação Gaúcha de Futebol'),
	('Flávio Rodrigues de Souza', '1989-05-11', 'Federação Paulista de Futebol'),
	('André Luiz de Freitas Castro', '1979-01-05', 'Federação Goiana de Futebol'),
	('Marcelo de Lima Henrique', '1971-08-26', 'Federação Pernambucana de Futebol'),
	('Ramon Abatti', '1989-09-18', 'Federação Catarinense de Futebol'),
	('Paulo Cesar Zanovellio', '1990-01-08', 'Federação Mineira de Futebol'),
	('Rodrigo José Pereira de Lima', '1987-03-19', 'Federação Paraense de Futebol'),
    ('Maguielson Lima Barbosa', '1991-06-18', 'Federação de Futebol do Distrito Federal'),
	('Bruno Pereira Vasconcelos', '1989-12-18', 'Federação Bahiana de Futebol');