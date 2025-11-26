-- EXCLUINDO BD EXERCICIO ANTERIOR 
DROP DATABASE db_ecommerce_suplementos;

CREATE DATABASE db_escola;
USE db_escola;

-- CRIAR A TABELA DE ESTUDANTES
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    turno VARCHAR(20),
    PRIMARY KEY (id)
);

-- INSERIR PELO MENOS 8 ESTUDANTES NA CRIACAO DA TB
INSERT INTO tb_estudantes (nome, idade, serie, nota, turno) VALUES
("Ana Beatriz Santos", 14, "8º ano", 8.5, "manhã"),
("João Pedro Silva", 12, "7º ano", 6.5, "tarde"),
("Mariana Oliveira", 13, "8º ano", 9.2, "manhã"),
("Felipe Cardoso", 15, "9º ano", 5.8, "tarde"),
("Laura Mendes", 11, "6º ano", 7.8, "manhã"),
("Caio Ferreira", 12, "7º ano", 4.9, "manhã"),
("Beatriz Santos", 14, "8º ano", 7.1, "tarde"),
("Gustavo Lima", 16, "1º ano EM", 8.9, "tarde");

-- SELECIONA — NOTA MAIOR QUE 7.0
SELECT * FROM tb_estudantes
WHERE nota > 7.0;

-- SELECIONA — NOTA MENOR QUE 7.0
SELECT * FROM tb_estudantes
WHERE nota < 7.0;

-- ATUALIZAR UM REGISTRO (EXEMPLO: atualizar a nota)
UPDATE tb_estudantes
SET nota = 7.9
WHERE id = 6;

-- SELECIONA PARA CONFERIR A ATUALIZAÇÃO
SELECT * FROM tb_estudantes;