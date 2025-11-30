-- EXCLUINDO BD EXERCICIO ANTERIOR 
DROP DATABASE db_escola;

-- CRIANDO BANCO DE DADOS 
CREATE DATABASE db_generation_game_online;

-- SELECIONANDO O BANCO DE DADOS 
USE db_generation_game_online;

-- CRIANDO TABELA CLASSES 
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

-- CRIANDO A TABELA PERSONAGENS 
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- INSERINDO 5 REGISTROS NA TABELA CLASSES 
INSERT INTO tb_classes (nome, tipo) VALUES
("Guerreiro", "Força"),
("Mago", "Magia"),
("Arqueiro", "Distância"),
("Assassino", "Agilidade"),
("Clérigo", "Suporte");


-- INSERINDO 8 REGISTROS NA TABELA PERSONAGENS 
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
("Alduin", 2500, 1800, 35, 1),
("Celindra", 1800, 2200, 28, 5),
("Corvax", 3200, 900, 40, 4),
("Miryel", 1500, 1500, 22, 2),
("Carlos", 2100, 1900, 30, 3),
("Cassandra", 2700, 1200, 33, 1),
("Narak", 1200, 2500, 25, 5),
("Cyrus", 3500, 800, 42, 4);

-- SELECT PERSONAGENS COM PODER DE ATAQUE > 2000
SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

-- SELECT PERSONAGENS COM PODER DE DEFESA ENTRE 1000 e 2000
SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT PERSONAGENS COM LETRA 'C'  NO NOME 
SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

-- SELECT com INNER JOIN (unindo personagens e classes)
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON c.id = p.classe_id;

-- SELECT com INNER JOIN filtrando por uma classe específica
-- Exemplo: Todos personagens da classe Arqueiro
SELECT p.nome AS Personagem, c.nome AS Classe
FROM tb_personagens p
INNER JOIN tb_classes c ON c.id = p.classe_id
WHERE c.nome = "Arqueiro";


-- ALTERANDO NOME DOS PERSONAGENS PARA ALGO VOLTADO A PROGRAMAÇÃ0 
UPDATE tb_personagens SET nome = "ByteSlayer" WHERE id = 1;
UPDATE tb_personagens SET nome = "CodeLyn"   WHERE id = 2;
UPDATE tb_personagens SET nome = "CorvusJS"  WHERE id = 3;
UPDATE tb_personagens SET nome = "TypeMira"  WHERE id = 4;
UPDATE tb_personagens SET nome = "CarloSQL"  WHERE id = 5;
UPDATE tb_personagens SET nome = "CassReact" WHERE id = 6;
UPDATE tb_personagens SET nome = "NarakDev"  WHERE id = 7;
UPDATE tb_personagens SET nome = "CyNest"    WHERE id = 8;

