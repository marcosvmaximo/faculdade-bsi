create database trabalho;

use trabalho;

/* Lógico_Projeto_Padoka_01: */

CREATE TABLE Clientes (
    id_cliente int PRIMARY KEY,
    nome varchar(100),
    cpf varchar(11) UNIQUE,
    rua varchar(100),
    numero int,
    bairro varchar(100),
    cidade varchar(100),
    cep varchar(8),
    data_nascimento date
);

CREATE TABLE Pedidos (
    id_pedido int PRIMARY KEY,
    data_realizacao DATE,
    observacao VARCHAR(1000),
    fk_Clientes_id_cliente int,
    fk_Funcionarios_id_funcionario int
);

CREATE TABLE Produtos (
    id_produto int PRIMARY KEY,
    nome varchar(100),
    valor decimal,
    data_validade date,
    quantidade_estoque int,
    disponibilidade bool,
    lote varchar(25),
    fk_Categoria_id_categoria int,
    fk_Lote_id_lote int
);

CREATE TABLE Funcionarios (
    id_funcionario int PRIMARY KEY,
    nome varchar(100),
    data_nascimento date,
    data_admissao date,
    salario decimal
);

CREATE TABLE Categoria (
    id_categoria int PRIMARY KEY,
    nome varchar(100) UNIQUE
);

CREATE TABLE ItensPedido (
    fk_Produtos_id_produto int,
    fk_Pedidos_id_pedido int,
    quantidade int,
    Id_itensPedido int PRIMARY KEY,
    UNIQUE (fk_Produtos_id_produto, fk_Pedidos_id_pedido)
);

CREATE TABLE Lotes (
    id_lote int PRIMARY KEY,
    numero_lote varchar(25) UNIQUE,
    data_lote DATE
);
 
ALTER TABLE Pedidos ADD CONSTRAINT FK_Pedidos_2
    FOREIGN KEY (fk_Clientes_id_cliente)
    REFERENCES Clientes (id_cliente)
    ON DELETE CASCADE;
 
ALTER TABLE Pedidos ADD CONSTRAINT FK_Pedidos_3
    FOREIGN KEY (fk_Funcionarios_id_funcionario)
    REFERENCES Funcionarios (id_funcionario)
    ON DELETE CASCADE;
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_2
    FOREIGN KEY (fk_Categoria_id_categoria)
    REFERENCES Categoria (id_categoria)
    ON DELETE CASCADE;
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_3
    FOREIGN KEY (fk_Lote_id_lote)
    REFERENCES Lotes (id_lote)
    ON DELETE RESTRICT;
 
ALTER TABLE ItensPedido ADD CONSTRAINT FK_ItensPedido_1
    FOREIGN KEY (fk_Produtos_id_produto)
    REFERENCES Produtos (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE ItensPedido ADD CONSTRAINT FK_ItensPedido_2
    FOREIGN KEY (fk_Pedidos_id_pedido)
    REFERENCES Pedidos (id_pedido)
    ON DELETE SET NULL;
 
 
 -- Cliente 1
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (1, 'Enrico Ricardo Bento da Conceição', '44733799225', 'Estrada Transamazônica, s/n', 214, 'Sucunduri', 'Apuí', '69275970', '2001-07-17');

-- Cliente 2
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (2, 'Lorenzo Mário Novaes', '63330296291', 'Estrada Transamazônica, s/n', 829, 'Sucunduri', 'Apuí', '69275970', '2001-09-10');

-- Cliente 3
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (3, 'Julio Cláudio Oliver Souza', '21587939290', 'Avenida 13 de Novembro 850', 872, 'Centro', 'Apuí', '69265970', '2001-01-13');

-- Cliente 4
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (4, 'Lorenzo Sérgio da Luz', '09927098227', 'Estrada Transamazônica, s/n', 853, 'Sucunduri', 'Apuí', '69275970', '2001-03-10');

-- Cliente 5
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (5, 'Francisco Diego Enzo Baptista', '70623119285', 'Estrada Transamazônica, s/n', 985, 'Sucunduri', 'Apuí', '69275970', '2001-08-25');

-- Cliente 6
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (6, 'Erick Fernando Pinto', '09057788209', 'Estrada Transamazônica, s/n', 668, 'Sucunduri', 'Apuí', '69275970', '2001-01-14');

-- Cliente 7
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (7, 'Thales Márcio Murilo Araújo', '90897248260', 'Avenida 13 de Novembro 850', 563, 'Centro', 'Apuí', '69265970', '2001-05-07');

-- Cliente 8
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (8, 'Matheus Augusto Porto', '07081493246', 'Estrada Transamazônica, s/n', 475, 'Sucunduri', 'Apuí', '69275970', '2001-01-04');

-- Cliente 9
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (9, 'Geraldo Francisco Luís Nogueira', '08570690207', 'Estrada Transamazônica, s/n', 419, 'Sucunduri', 'Apuí', '69275970', '2001-04-14');

-- Cliente 10
INSERT INTO Clientes (id_cliente, nome, cpf, rua, numero, bairro, cidade, cep, data_nascimento)
VALUES (10, 'Marcelo Alexandre Márcio Martins', '71001629205', 'Estrada Transamazônica, s/n', 722, 'Sucunduri', 'Apuí', '69275970', '2001-02-03');

-- Funcionário 1
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (1, 'Tomás Lorenzo Lopes', '2000-01-16', '2023-09-24', 3500.00);

-- Funcionário 2
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (2, 'Sebastião Thales Assunção', '2000-04-05', '2023-09-24', 3200.00);

-- Funcionário 3
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (3, 'Julio Rafael Martin Rodrigues', '2000-04-12', '2023-09-24', 3400.00);

-- Funcionário 4
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (4, 'Filipe Márcio Davi Nogueira', '2000-04-26', '2023-09-24', 3600.00);

-- Funcionário 5
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (5, 'Matheus Isaac Daniel Oliveira', '2000-04-11', '2023-09-24', 3300.00);

-- Funcionário 6
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (6, 'Pedro Henrique Juan Castro', '2000-02-19', '2023-09-24', 3700.00);

-- Funcionário 7
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (7, 'Bryan Diogo Araújo', '2000-02-08', '2023-09-24', 3100.00);

-- Funcionário 8
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (8, 'Mateus Sebastião Theo Sales', '2000-06-13', '2023-09-24', 3800.00);

-- Funcionário 9
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (9, 'Lucas Osvaldo Osvaldo Silveira', '2000-08-27', '2023-09-24', 4000.00);

-- Funcionário 10
INSERT INTO Funcionarios (id_funcionario, nome, data_nascimento, data_admissao, salario)
VALUES (10, 'Davi Henry Kevin da Paz', '2000-01-09', '2023-09-24', 3900.00);


-- Categoria 1: Pães
INSERT INTO Categoria (id_categoria, nome)
VALUES (1, 'Pães');

-- Categoria 2: Bolos
INSERT INTO Categoria (id_categoria, nome)
VALUES (2, 'Bolos');

-- Categoria 3: Bolachas
INSERT INTO Categoria (id_categoria, nome)
VALUES (3, 'Bolachas');

-- Categoria 4: Doces
INSERT INTO Categoria (id_categoria, nome)
VALUES (4, 'Doces');

-- Categoria 5: Salgados
INSERT INTO Categoria (id_categoria, nome)
VALUES (5, 'Salgados');

-- Lote 1
INSERT INTO Lotes (id_lote, numero_lote, data_lote)
VALUES (1, 'LOTE2023001', '2023-01-15');

-- Lote 2
INSERT INTO Lotes (id_lote, numero_lote, data_lote)
VALUES (2, 'LOTE2023002', '2023-02-20');

-- Lote 3
INSERT INTO Lotes (id_lote, numero_lote, data_lote)
VALUES (3, 'LOTE2023003', '2023-03-10');

-- Lote 4
INSERT INTO Lotes (id_lote, numero_lote, data_lote)
VALUES (4, 'LOTE2023004', '2023-04-05');

-- Lote 5
INSERT INTO Lotes (id_lote, numero_lote, data_lote)
VALUES (5, 'LOTE2023005', '2023-05-12');

ALTER TABLE Produtos
DROP COLUMN lote;

-- Produto 1
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (1, 'Pão Francês', 1.50, '2023-10-10', 100, 1, 1, 1);

-- Produto 2
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (2, 'Pão de Forma Integral', 2.00, '2023-10-12', 80, 1, 1, 2);

-- Produto 3
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (3, 'Bolo de Cenoura', 8.00, '2023-10-15', 20, 1, 2, 3);

-- Produto 4
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (4, 'Bolo de Chocolate', 8.00, '2023-10-15', 15, 1, 2, 3);

-- Produto 5
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (5, 'Biscoito de Chocolate', 3.50, '2023-11-01', 50, 1, 3, 4);

-- Produto 6
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (6, 'Biscoito de Coco', 3.50, '2023-11-01', 60, 1, 3, 4);

-- Produto 7
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (7, 'Doce de Leite', 5.00, '2023-10-30', 30, 1, 4, 5);

-- Produto 8
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (8, 'Brigadeiro', 2.50, '2023-10-28', 40, 1, 4, 5);

-- Produto 9
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (9, 'Salgado de Queijo', 3.00, '2023-10-25', 25, 1, 5, 1);

-- Produto 10
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (10, 'Salgado de Presunto', 3.00, '2023-10-25', 30, 1, 5, 2);

-- Produto 11
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (11, 'Croissant', 2.00, '2023-10-20', 20, 1, 1, 3);

-- Produto 12
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (12, 'Rosquinha', 1.50, '2023-10-25', 40, 1, 3, 4);

-- Produto 13
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (13, 'Pão de Queijo', 2.50, '2023-10-15', 30, 1, 5, 3);

-- Produto 14
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (14, 'Torta de Limão', 10.00, '2023-10-22', 10, 1, 2, 1);

-- Produto 15
INSERT INTO Produtos (id_produto, nome, valor, data_validade, quantidade_estoque, disponibilidade, fk_Categoria_id_categoria, fk_Lote_id_lote)
VALUES (15, 'Torta de Morango', 10.00, '2023-10-22', 12, 1, 2, 2);

--------
-- Pedido 1
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (1, '2023-09-24', 'Entregar na Rua A', 1, 1);

-- Itens do Pedido 1
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (1, 1, 1, 2), (2, 5, 1, 3);

-- Pedido 2
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (2, '2023-09-25', 'Entregar na Rua B', 2, 2);

-- Itens do Pedido 2
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (3, 2, 2, 1), (4, 4, 2, 4);

-- Pedido 3
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (3, '2023-09-26', 'Entregar na Rua C', 3, 3);

-- Itens do Pedido 3
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (5, 3, 3, 2), (6, 7, 3, 2);

-- Pedido 4
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (4, '2023-09-27', 'Entregar na Rua D', 4, 4);

-- Itens do Pedido 4
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (7, 1, 4, 2), (8, 6, 4, 1);

-- Pedido 5
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (5, '2023-09-28', 'Entregar na Rua E', 5, 5);

-- Itens do Pedido 5
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (9, 2, 5, 3), (10, 8, 5, 2);

-- Pedido 6
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (6, '2023-09-29', 'Entregar na Rua F', 6, 6);

-- Itens do Pedido 6
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (11, 3, 6, 1), (12, 5, 6, 4);

-- Pedido 7
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (7, '2023-09-30', 'Entregar na Rua G', 7, 7);

-- Itens do Pedido 7
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (13, 4, 7, 2), (14, 6, 7, 3);

-- Pedido 8
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (8, '2023-10-01', 'Entregar na Rua H', 8, 8);

-- Itens do Pedido 8
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (15, 1, 8, 2), (16, 7, 8, 1);

-- Pedido 9
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (9, '2023-10-02', 'Entregar na Rua I', 9, 9);

-- Itens do Pedido 9
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (17, 2, 9, 3), (18, 8, 9, 2);

-- Pedido 10
INSERT INTO Pedidos (id_pedido, data_realizacao, observacao, fk_Clientes_id_cliente, fk_Funcionarios_id_funcionario)
VALUES (10, '2023-10-03', 'Entregar na Rua J', 10, 10);

-- Itens do Pedido 10
INSERT INTO ItensPedido (Id_itensPedido, fk_Produtos_id_produto, fk_Pedidos_id_pedido, quantidade)
VALUES (19, 3, 10, 1), (20, 5, 10, 4);

SELECT
    P.id_produto,
    P.nome AS nome_produto,
    P.valor,
    P.data_validade,
    P.quantidade_estoque,
    P.disponibilidade,
    C.id_categoria,
    C.nome AS nome_categoria,
    L.id_lote,
    L.numero_lote,
    L.data_lote
FROM
    Produtos AS P
JOIN
    Categoria AS C ON P.fk_Categoria_id_categoria = C.id_categoria
JOIN
    Lotes AS L ON P.fk_Lote_id_lote = L.id_lote;

select * from Produtos;

SELECT 
nome AS Nome,
DATEDIFF(data_validade, CURDATE()) AS 'Dias Para Expirar a Validade',
quantidade_estoque AS Quantidade
FROM Produtos
WHERE disponibilidade = 1;

SELECT * from Funcionarios;


UPDATE Funcionarios
SET data_nascimento = '1975-08-04'
WHERE id_funcionario = 4;

UPDATE Produtos
SET valor = 6.50
WHERE id_produto = 12;

select * from Produtos;

ALTER TABLE Produtos
MODIFY valor DECIMAL(10, 2);
-- Consultas
SELECT   
c.nome as Categoria, 

AVG(DATEDIFF(p.data_validade, CURDATE())) AS 'Media  Da Validade Por Categoria' 

FROM Produtos p, Categorias c  

WHERE p.fk_Categoria_id_categoria = c.id_categoria AND  

disponibilidade = 1 

GROUP BY p.fk_Categoria_id_categoria; 


SELECT
    nome AS Nome,
    TIMESTAMPDIFF(YEAR, data_admissao, CURDATE()) AS AnosTrabalhados,
    ROUND(
        TIMESTAMPDIFF(MONTH, data_admissao, CURDATE()) * salario,
        2) AS ValorTotalRecebidoTodosAnos,
    ROUND(12 * salario, 2) AS ValorTotalRecebidoAno
FROM Funcionarios;



SELECT 
    C.nome AS Categoria,
    SUM(I.quantidade) AS PedidosRealizados,
    (SELECT P.nome 
     FROM Produtos AS P
     JOIN ItensPedido AS IP ON P.id_produto = IP.fk_Produtos_id_produto
     WHERE P.fk_Categoria_id_categoria = C.id_categoria
     GROUP BY P.id_produto
     ORDER BY SUM(IP.quantidade) DESC
     LIMIT 1) AS ProdutoMaisComprado,
     (SELECT SUM(P.valor * IP.quantidade)
      FROM Produtos AS P
      JOIN ItensPedido AS IP ON P.id_produto = IP.fk_Produtos_id_produto
      WHERE P.fk_Categoria_id_categoria = C.id_categoria
      ) AS TotalEmVendas
FROM 
    Produtos AS P 
JOIN 
    ItensPedido AS I ON P.id_produto = I.fk_Produtos_id_produto
JOIN 
    Categorias AS C ON P.fk_Categoria_id_categoria = C.id_categoria 
GROUP BY P.fk_Categoria_id_categoria;

select * from Produtos;

select * from ItensPedido I, Produtos P where I.fk_Produtos_id_produto = P.id_produto;

SELECT
    F.nome AS Funcionario,
    COUNT(Pedido.TotalPedidos) AS TotalPedidosRealizados,
    SUM(Pedido.valor_total) AS ValorTotalVendas,
    AVG(Pedido.valor_total) AS MediaVendasPorPedido
FROM
    Funcionarios AS F
JOIN
    (
        SELECT
            P.fk_Funcionarios_id_funcionario,
            COUNT(P.id_pedido) AS TotalPedidos,
            SUM(IP.quantidade * Pr.valor) AS valor_total
        FROM
            Pedidos AS P
        JOIN
            ItensPedido AS IP ON P.id_pedido = IP.fk_Pedidos_id_pedido
        JOIN
            Produtos AS Pr ON IP.fk_Produtos_id_produto = Pr.id_produto
        GROUP BY
            P.fk_Funcionarios_id_funcionario
    ) AS Pedido ON F.id_funcionario = Pedido.fk_Funcionarios_id_funcionario
GROUP BY
    Funcionario
ORDER BY
    TotalPedidosRealizados DESC;
