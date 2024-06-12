CREATE DATABASE ProjetoEstoque
     CHARACTER SET utf8
     COLLATE utf8_general_ci;

USE ProjetoEstoque;

CREATE TABLE usuario (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    datanascimento VARCHAR(255) NOT NULL,
    cpf VARCHAR(18) NOT NULL
) DEFAULT CHARSET = utf8;

CREATE TABLE pecas (
    codigo INT (11) PRIMARY KEY,
    nome VARCHAR(350) NOT NULL,
    descricao VARCHAR(500),
    valor DECIMAL(10, 2) NOT NULL,
    quantidade INT(3) NOT NULL
) DEFAULT CHARSET = utf8;

INSERT INTO usuario (email, senha) VALUES ('productowner@autopecas.com.br', 'autopecasadm123');
