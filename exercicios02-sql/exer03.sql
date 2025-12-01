-- EXCLUINDO BD EXERCICIO ANTERIOR 
DROP DATABASE db_pizzaria_legal;

-- CRIANDO NOVO BD FARMACIAS 
CREATE DATABASE db_farmacia_bem_estar;

-- SELECIONANDO O BD FARMACIAS
USE db_farmacia_bem_estar;

-- CRIANDO TABELA CATEGORIAS 
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- CRIANDO TABELA PRODUTOS 
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- INSERINDO REGISTROS NA TABELA CATEGORIA 
INSERT INTO tb_categorias (nome, descricao) VALUES
("Medicamentos", "Uso geral e prescrição"),
("Higiene", "Produtos de higiene pessoal"),
("Cosméticos", "Cuidados com pele e beleza"),
("Vitaminas", "Suplementos e fortalecedores"),
("Infantil", "Produtos para bebês e crianças");

-- INSERINDO REGISTROS NA TABELA PRODUTOS 
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES
("Paracetamol", 12.50, 80, "Neo Química", 1),
("Vitamina C", 32.00, 60, "Sundown", 4),
("Creme Hidratante", 45.90, 40, "Nivea", 3),
("Shampoo Infantil", 28.50, 30, "Johnson & Johnson", 5),
("Antialérgico", 58.00, 50, "Eurofarma", 1),
("Protetor Solar", 72.00, 25, "La Roche", 3),
("Escova Dental", 9.99, 90, "Colgate", 2),
("Colônia Infantil", 55.00, 20, "Boti Baby", 5);


-- SELECIONADO PRODUTOS COM VALOR > 50 
SELECT * FROM tb_produtos
WHERE preco > 50;

-- SELECIOANDO PRODUTOS COM VALOR ENTRE 5 E 60 
SELECT * FROM tb_produtos
WHERE preco BETWEEN 5 AND 60;

-- SELECIONADO PRODUTOS COM A LETRA 'C' NO NOME
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

-- SELECIONADO  com INNER JOIN (produtos + categorias)
SELECT p.id, p.nome, p.preco, p.fabricante, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

-- SELECIONADO com INNER JOIN filtrando por uma categoria específica
-- Exemplo: Todos os produtos da categoria Cosméticos
SELECT p.nome AS Produto, c.nome AS Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Cosméticos";
