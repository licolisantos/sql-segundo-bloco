-- Criar o Banco de Dados
CREATE DATABASE db_curso_da_minha_vida;

-- Selecionar o Banco
USE db_curso_da_minha_vida;


-- Criar tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    nivel VARCHAR(50) NOT NULL -- Ex.: Iniciante, Intermediário, Avançado
);


-- Criar tabela tb_cursos
CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    instrutor VARCHAR(100) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


-- Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, nivel) VALUES
("Programação", "Intermediário"),
("Tecnologia", "Iniciante"),
("Design", "Intermediário"),
("Marketing", "Avançado"),
("DevOps", "Avançado");

-- Inserir 8 registros na tabela tb_cursos
INSERT INTO tb_cursos (nome, carga_horaria, valor, instrutor, categoria_id) VALUES
("Java Completo", 80, 1200.00, "Carlos Henrique", 1),
("JavaScript do Zero", 60, 650.00, "Ana Souza", 1),
("UX/UI para Iniciantes", 40, 480.00, "Maria Fernanda", 3),
("Docker e Kubernetes", 50, 950.00, "José Lima", 5),
("Marketing Digital Completo", 70, 700.00, "Rafaela Melo", 4),
("TypeScript Avançado", 55, 820.00, "Pedro Alves", 1),
("Introdução à TI", 30, 300.00, "Gabriel Santos", 2),
("HTML e CSS Essencial", 45, 550.00, "Laura Martins", 2);

--  SELECT cursos com valor > 500
SELECT * FROM tb_cursos
WHERE valor > 500;

-- SELECT cursos com valor entre 600 e 1000
SELECT * FROM tb_cursos
WHERE valor BETWEEN 600 AND 1000;

-- SELECT cursos com letra 'J' no nome
SELECT * FROM tb_cursos
WHERE nome LIKE '%J%';

-- INNER JOIN cursos + categorias
SELECT c.id, c.nome, c.valor, cat.nome AS categoria, cat.nivel
FROM tb_cursos c
INNER JOIN tb_categorias cat ON cat.id = c.categoria_id;


--  INNER JOIN trazendo apenas cursos da categoria 'Programação'
SELECT c.nome AS curso, c.valor, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON cat.id = c.categoria_id
WHERE cat.nome = "Programação";