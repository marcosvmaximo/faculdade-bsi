-- Lab 02

CREATE DATABASE lab_02;
Use lab_02;

DROP DATABASE lab_02;

/* Lógico_1: */

CREATE TABLE Empregado (
    Matricula int PRIMARY KEY,
    Nome varchar(100),
    Data_Nascimento date,
    Cpf varchar(11)
);

CREATE TABLE Dependente (
    Id_Dependente int PRIMARY KEY,
    Data_Nascimento date,
    Nome varchar(100),
    fk_Empregado_Matricula_Empregado int
);
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (fk_Empregado_Matricula_Empregado)
    REFERENCES Empregado (Matricula)
    ON DELETE CASCADE;
    
drop table Empregado;
 ---------------------   
 
INSERT INTO Empregado (Matricula, Nome, Data_Nascimento, Cpf) VALUES
(123, 'Maria Silva', '1990-02-10','11645325598'),
(234, 'Rafael Santos', '1990-02-10','18925503392'),
(456, 'Antônico Castro', '1990-02-10','56048925238');

INSERT INTO Dependente (Id_Dependente, Data_Nascimento, Nome, fk_Empregado_Matricula_Empregado) VALUES 
(1, '2021-01-05', 'Thiago', 123),
(2, '2020-04-11', 'Aninha', 123),
(3, '2017-11-09', 'João', 234);

-- Produto Cartesiano padrão
SELECT * FROM Empregado AS e, Dependente AS d;

-- Produto Cartesiano correto
SELECT * FROM Empregado AS e, Dependente AS d
WHERE e.Matricula = d.fk_Empregado_Matricula_Empregado;

-- Uma consulta onde adicionamos um ALIAS, responsável por trocar a visualização dos nomes das colunas.
-- Além disso o uso de funções nátivas do SQL, que nos permitem trabalhar certos dados.
SELECT 
	e.Matricula AS Matricula, 
    e.Nome as Empregado,
    d.Nome as Dependente,
    TIMESTAMPDIFF(year, d.Data_Nascimento, CURDATE()) AS 'Idade do Depedente',
    TIMESTAMPDIFF(year, e.Data_Nascimento, CURDATE()) AS 'Idade do Empregado'
FROM 
	Empregado AS e, Dependente AS d
WHERE e.Matricula = d.fk_Empregado_Matricula_Empregado;


CREATE TABLE Disciplina
(
	id_discip int NOT NULL,
	nome varchar(50) NOT NULL,
	ementa text,
	creditos int NOT NULL,
	periodo int NOT NULL
);

ALTER TABLE Disciplina
ADD CONSTRAINT PRIMARY KEY (ID_discip);

INSERT INTO disciplina VALUES (1, 'Banco de Dados',NULL, 4, 2);
SELECT * FROM disciplina;

INSERT INTO disciplina VALUES (2, 'Redes', 'Básico de redes de computadores', 4, 3);
SELECT * FROM disciplina;



INSERT INTO disciplina VALUES (3, 'Prática Web', 'Prática de programação Web', 4, 2);
INSERT INTO disciplina VALUES (4, 'Orientação a Objeto', 'Básico de um paradigma de programação', 6, 2);
INSERT INTO disciplina VALUES (5, 'Raciocinio Algoritmo', 'Introdução ao pensamento algotimico', 4, 1);
INSERT INTO disciplina VALUES (6, 'Matemática Discreta', 'Introdução a teoria de conjuntos e a matemática discrta', 4, 2);
INSERT INTO disciplina VALUES (7, 'Prática Mobile', 'Introdução a programação de celulares', 4, 4);
SELECT * FROM disciplina;


CREATE TABLE Professor (
	id_prof INT AUTO_INCREMENT PRIMARY KEY, -- chave primária auto-incrementada
	nome VARCHAR(50) NOT NULL,
	dt_nascimento DATE,
	apelido VARCHAR(50) GENERATED ALWAYS AS (SUBSTRING_INDEX(nome, " ", 1)) -- atributo derivado
);

SELECT DATE_FORMAT (curdate(), '%d/%m/%y') AS Data; -- retorna a data atual, formatada dia/mês/ano

INSERT INTO Professor (nome, dt_nascimento)
VALUES ('Maria das Flores', STR_TO_DATE('23-12-1990', '%d-%m-%Y')); -- converte string para data

-- Apresenta os dados da tabela
SELECT * FROM Professor;

SELECT nome, dt_nascimento AS 'Data de Nascimento',
TIMESTAMPDIFF(YEAR, dt_nascimento, CURDATE()) AS Idade
FROM Professor;

INSERT INTO Professor (nome, dt_nascimento) VALUES
('José da Silva', STR_TO_DATE('20/02/1985', '%d/%m/%Y')),
('Paulo Soares', STR_TO_DATE('10/12/1995', '%d/%m/%Y')),
('Ana Rita', STR_TO_DATE('20/02/2000', '%d/%m/%Y'));

SELECT nome, dt_nascimento AS 'Data de Nascimento',
TIMESTAMPDIFF(YEAR, dt_nascimento, CURDATE()) AS Idade
FROM Professor;

CREATE TABLE Turma
(
	id_turma int AUTO_INCREMENT PRIMARY KEY,-- PK auto-incrementada:
	ano int NOT NULL,
	semestre int NOT NULL,
	id_discip int NOT NULL,
	id_prof int NOT NULL,
	CONSTRAINT CK_Sem CHECK (semestre BETWEEN 1 AND 2), -- semestre
	CONSTRAINT UN_Ofeta UNIQUE (ano, semestre, id_discip, id_prof), -- Prof x Disc x Ano x Semestre
	CONSTRAINT FK_Prof FOREIGN KEY (id_prof) REFERENCES Professor (id_prof), -- FK Professor
	CONSTRAINT FK_Discip FOREIGN KEY (id_discip) REFERENCES Disciplina(id_discip) -- FK Disciplina
);
SELECT * FROM Turma;

INSERT INTO Turma (ano, semestre, id_prof, id_discip) VALUES
(2020, 1, 2, 2),
(2020, 2, 2, 2),
(2021, 1, 3, 1);
SELECT * FROM Turma;

INSERT INTO Turma (ano, semestre, id_prof, id_discip) VALUES
(2020, 1, 3, 2);

INSERT INTO Turma (ano, semestre, id_prof, id_discip) VALUES
(2020, 1, 2, 4);

select * from Professor;
select * from Turma;
select * from Disciplina;

SELECT 
	p.Nome AS Nome,
    d.nome AS Disciplina,
    t.ano AS Ano,
    t.semestre AS Semestre
FROM Disciplina d, Professor p, Turma t
WHERE 
	t.id_discip = d.id_discip AND
	t.id_prof = p.id_prof;


SELECT *
FROM Turma, Professor, Disciplina; -- produto cartesiano

SELECT *
FROM Turma AS t, Professor AS p, Disciplina AS d -- prod. Cartesiano
WHERE t.id_discip = d.id_discip AND p.id_prof = t.id_prof;


SELECT t.ano, t.semestre, p.nome, d.nome
FROM Turma AS t, Professor AS p, Disciplina AS d
WHERE t.id_discip = d.id_discip AND
p.id_prof = t.id_prof AND
t.semestre = 1;

SELECT t.ano, t.semestre, p.nome, d.nome
FROM Turma AS t, Professor AS p, Disciplina AS d
WHERE t.id_discip = d.id_discip AND p.id_prof = t.id_prof
ORDER BY t.ano ASC, t.semestre DESC;


SELECT p.nome, d.nome, t.ano
FROM Turma AS t, Professor AS p, Disciplina AS d
WHERE t.id_discip = d.id_discip AND
p.id_prof = t.id_prof AND
p.nome LIKE 'j%'; -- nome começa com j


CREATE TABLE Colaborador (
	id_emp INT NOT NULL PRIMARY KEY CONSTRAINT ID_val CHECK (id_emp BETWEEN 0 AND 1000),
	nome VARCHAR(30) NOT NULL,
	salario FLOAT NOT NULL CONSTRAINT SL_val CHECK (salario >= 1000)
);


INSERT INTO Colaborador VALUES
(1, 'Josué', 1500.56);

INSERT INTO Colaborador (id_emp, nome, salario) VALUES
(300, 'Marcos', 3500.56);

INSERT INTO Colaborador VALUES
(400, 'Antônio', 1350.56);

select * from Colaborador;