USE lab_01;

CREATE TABLE Clientes(
	ID INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50)
);

INSERT INTO Clientes(
	ID,
    Nome,
    Sobrenome
) VALUES 
(2, 'MARIA', 'SILVA'),
(3, 'JOSE', 'ROBERTO'),
(4, 'MARIO', 'KILL'),
(5, 'SONIA', 'RODRIGUES'),
(6, 'GILBERTO', 'GIL');

SELECT * FROM Clientes;

UPDATE Clientes 
	SET Nome = 'Marcos',
    Sobrenome = 'Maximo'
WHERE ID = 1;

DELETE FROM Clientes
WHERE ID = 2;

/* Lógico_3: */

CREATE TABLE Carro (
    Cod_Carro int PRIMARY KEY,
    Marca varchar(50),
    Modelo varchar(50),
    Ano_Fabricacao datetime,
    Kilometragem double,
    Cor varchar(50)
);


INSERT INTO Carro(
	Cod_Carro,
    Marca,
    Modelo,
    Ano_Fabricacao,
    Kilometragem,
    Cor
) VALUES 
(1, 'Fiat', 'A', '2023-01-01', 454200.1, 'Branco'),
(2, 'Hyunday', 'B', '2003-01-01', 200, 'Azul'),
(3, 'Ferrari', 'C', '2013-01-01', 20000, 'Preto'),
(4, 'Wolkvasgem', 'D', '2010-01-01', 14250, 'Vermelho'),
(5, 'Kia', 'E', '2000-01-01', 5300.12, 'Branco');

select * from Carro;

UPDATE Carro 
SET Ano_Fabricacao = '2000-01-01'
WHERE Cod_Carro = 1;

delete from Carro where Cod_Carro = 1;