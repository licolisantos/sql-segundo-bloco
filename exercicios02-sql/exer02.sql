-- EXCLUINDO BD EXERCICIO ANTERIOR 
DROP DATABASE db_generation_game_online;

-- CRIANDO NOVO BANCO DE DADOS - PIZZARIA LEGA 
CREATE DATABASE db_pizzaria_legal;

-- SELECIONANDO O BANCO DE DADOS
USE db_pizzaria_legal;

-- CRIANDO TABELA CATEGORIA
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- CRIANDO TABELA PIZZA 
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


-- INSERINDO REGISTROS NA TABELA CATEGORIA
INSERT INTO tb_categorias (nome, descricao) VALUES
("Tradicional", "Pizzas salgadas clássicas"),
("Premium", "Salgadas especiais e ingredientes nobres"),
("Doce", "Pizzas doces variadas"),
("Vegetariana", "Pizzas sem ingredientes de origem animal"),
("Light", "Pizzas leves com baixa caloria");


-- INSERINDO REGISTROS NA TABELA PIZZA 
INSERT INTO tb_pizzas (nome, ingredientes, tamanho, valor, categoria_id) VALUES
("Margherita", "Molho, mussarela, manjericão", "Grande", 42.00, 1),
("Calabresa", "Calabresa, cebola, molho", "Grande", 48.00, 1),
("Quatro Queijos", "Mussarela, gorgonzola, parmesão, provolone", "Grande", 65.00, 2),
("Frango com Catupiry", "Frango, catupiry, mussarela", "Grande", 58.00, 2),
("Chocolate", "Chocolate ao leite e granulado", "Média", 52.00, 3),
("Prestígio", "Chocolate e coco ralado", "Média", 55.00, 3),
("Vegetariana", "Legumes, molho, queijo vegano", "Grande", 60.00, 4),
("Mussarela Light", "Mussarela light, tomate, orégano", "Média", 38.00, 5);

-- SELECIONE PIZZA COM VALOR > 45 
SELECT * FROM tb_pizzas
WHERE valor > 45.00;

-- SELECIONE PIZZA COM VALOR ENTRE 50 E 100
SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

-- SELECIONE PIZZA COM LETRA "M" NO NOME 
SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

-- SELECIONE INER JOIN UNINDO AS TABELAS 
SELECT p.id, p.nome, p.valor, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

-- SELECIONE INNER JOIN — pizzas de uma categoria específica
-- Exemplo: apenas pizzas da categoria Doce 
SELECT p.nome AS Pizza, p.valor, c.nome AS Categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Doce";

