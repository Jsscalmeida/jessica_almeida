CREATE DATABASE teste; --criar banco de dados
DROP DATABASE teste; --remover banco de dados
USE teste; --usar banco
CREATE TABLE teste; -- criar tabalela
DROP TABLE teste: -- deletar tabela

--criando tabela
CREATE TABLE teste (
    nome VARCHAR(100)
);

--remover tabela
DROP TABLE teste;

--tipos de dados

-- texto = VARCHAR(x)
-- número = INT(x)
-- datas = DATE

CREATE TABLE pessoas (
    nome VARCHAR(100),
    salario INT,
    data_nascimento DATE
);

-- Alterar uma tabela

ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(255);

-- selecionar  as colunas da tabela
SELECT * FROM pessoas;

--CRUD

-- C = Create = INSERT

-- R = Read = SELECT (WHERE)

-- U = Update = UPDATE sempre utilize where

-- D = Delete = DELETE sempre utilize where

INSERT INTO pessoas (nome, salario, data_nascimento, profissao)
VALUES ("Matheus", 3000, "1991-02-05", "Programador"); -- cada alteração do value irá adicionar uma linha na tabela


SELECT * FROM pessoas;
-- irá aparecer a tabela com os resualtdos

SELECT * FROM pessoas
WHERE salario > 5000; -- WHERE especifica

SELECT * FROM pessoas
WHERE nome = "Matheus"; -- WHERE especifica

---------------------------------------------------------------------------------------------------------------------------

INSERT INTO pessoas (nome, salario, data_nascimento, profissao)
VALUES ("Maria", 2500, "1996-05-11", "Secretária");

SET SQL_SAFE_UPDATES = 0; --destrava trava de segurança de atualização

UPDATE pessoas SET salario = 3000 WHERE nome = "Maria" -- atualiza dados da tabela

------------------------------------------------------------------------------------------------------------------------------

DELETE FROM pessoas WHERE profissao = "Estágiario"; -- remove os dados especificados pelo o WHERE

DELETE FROM pessoas; -- remove todos os dados da tabela
---------------------------------------------------------------------------------------------------------------------------------------

-- CONSTRAINTS

CREATE TABLE pessoas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    salario INT,
    data_nascimento DATE
);

SELECT * FROM pessoas;
---------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(100); -- adicionar coluna na tabela

-----------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO pessoas (nome, salario, data_nascimento, profissao)
VALUES("Matheus", 5000, "1993-03-04", "Engenheira"); -- ir adicionarndo valores


------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM pessoas;

-------------------------------------------------------------------------------------------------------------------------------------------------

-- CONSTRAINTS - relação - FOREIGN KEY

CREATE TABLE enderecos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rua VARCHAR(255),
    numero VARCHAR(10),
    pessoa_id INT NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
);

----------------------------------------------------------------------
SELECT * FROM enderecos;

-----------------------------------------------------------------------
INSERT INTO enderecos (rua, numero, pessoa_id)
VALUES ("Rua Blumeenau", "847b", 10); -- ir trocando as informações

--------------------------------------------------------------------------

SELECT * FROM pessoas; -- ver se está cadastrado o  id dos nomes na tabela pessoas
--------------------------------------------------------------------------------------

-- JOIN

-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN



--inner
SELECT pessoas.nome, enderecos.*
FROM pessoas
JOIN enderecos ON pessoa.id = enderecos.pessoa_id; -- tras informações existem ocorrÊncias dos dois lados

----------------------------------------------------------------------------------------------
--left
SELECT pessoas.nome, enderecos.*
FROM pessoas
LEFT JOIN enderecos ON pessoa.id = enderecos.pessoa_id; -- tras todas as referências da esquerda  com relação aos cadastrados da direita (mostra null para os resultados da direita)

-----------------------------------------------------------------------------------------------
--right
SELECT pessoas.nome, enderecos.*
FROM pessoas
RIGHT JOIN enderecos ON pessoa.id = enderecos.pessoa_id; -- tras todas as referências da direita  com relação aos cadastrados da esquerda (mostra null para os resultados da esquerda)

---------------------------------------------------------------------------------------------------------------------------

-- AGGREGATION FUNCTIONS

SELECT * FROM pessoas;

SELECT SUM(salario) FROM pessoas; -- CRIA UMA COLUNA [SUM(salarios)] com todos os salarios da tabela
 
-- ALIES

SELECT * FROM pessoas;

SELECT SUM(salario) AS soma_dos_salarios FROM pessoas; -- CRIA UMA COLUNA (soma_dos_salarios) com todos os salarios da tabela

-- COUNT

SELECT COUNT(*) FROM pessoas; -- CRIA UMA COLUNA [COUNT(*)] COM A SOMA DE TODOS OS REGISTROS
----
SELECT COUNT(*) AS qtd_pessoas FROM pessoas; -- CRIA UMA COLUNA (qtd_pessoas) COM A SOMA DE TODOS OS REGISTROS de pessoas

SELECT COUNT(*) AS qtd_enderecos FROM enderecos; -- CRIA UMA COLUNA (qtd_enderecos) COM A SOMA DE TODOS OS REGISTROS de endereço