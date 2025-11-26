CREATE DATABASE db_rhempresa; -- CRIANDO O BD

USE db_rhempresa; -- INDICANDO QUAL BD SERA ACESSADO 

-- CRIANDO TABELA DE COLABORADORES 
CREATE TABLE tb_colaboradores (
    matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(100),
    data_admissao DATE
);

-- INSERIR DADOS NA TABELA /  NO MINIMO 5 REGISTROS 
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao) VALUES
("Ana Souza", "Desenvolvedora Jr", 2500.00, "Tecnologia", "2023-05-10"),
("Pedro Lima", "Analista Administrativo", 1800.00, "Administrativo", "2022-09-01"),
("Mariana Silva", "Gerente de Projetos", 5500.00, "Tecnologia", "2020-02-15"),
("Carlos Santos", "Auxiliar de RH", 1700.00, "Recursos Humanos", "2023-01-20"),
("Jéssica Mendes", "Coordenadora de Marketing", 3200.00, "Marketing", "2021-11-05"),
("Karen Oliveira", "Analista de Dados", 2200.00, "Comercial", "2021-09-05");

-- SELECIONAR OS DADOS DA TABELA
SELECT*FROM tb_colaboradores;

-- SELECIONAR  — SALÁRIO MAIOR QUE 2000 
SELECT * FROM tb_colaboradores
WHERE salario > 2000;

-- SELECIONAR  — SALÁRIO MENOR QUE 2000 
SELECT * FROM tb_colaboradores
WHERE salario < 2000;

-- ATUALIZANDO UM REGISTRO 
UPDATE tb_colaboradores
SET salario = 2600.00
WHERE matricula = 1;

-- SELECIONAR OS DADOS DA TABELA - CONFERINDO ATUALIZACAO
SELECT*FROM tb_colaboradores;