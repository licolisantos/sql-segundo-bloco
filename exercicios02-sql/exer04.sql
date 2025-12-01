-- EXCLUINDO BD ANTERIOR 
DROP DATABASE db_farmacia_bem_estar;

-- CRIANDO BD
CREATE DATABASE db_cidade_das_carnes;

-- SELECIONANDO O BD
USE db_cidade_das_carnes;

-- CRIANDO TB CATEGORIAS 
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

-- CRIANDO TB PRODUTOS 
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    peso DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- INSERINDO REGISTROS NA TABELA CATEGORIA 
INSERT INTO tb_categorias (nome, tipo) VALUES
("Bovinos", "Carne vermelha"),
("Suínos", "Carne suína"),
("Aves", "Frango e derivados"),
("Defumados", "Produtos defumados"),
("Miúdos", "Subprodutos");

-- INSERINDO REGISTROS NA TABELA PRODUTOS
INSERT INTO tb_produtos (nome, preco, peso, estoque, categoria_id) VALUES
("Picanha Premium", 120.00, 1.0, 20, 1),
("Alcatra Bovina", 65.00, 1.5, 30, 1),
("Costelinha Suína", 48.00, 1.2, 18, 2),
("Linguiça Defumada", 25.00, 0.8, 40, 4),
("Coração de Frango", 22.00, 1.0, 25, 3),
("Frango Inteiro", 18.50, 2.5, 50, 3),
("Fígado Bovino", 19.00, 1.0, 15, 5),
("Coxa e Sobrecoxa", 17.00, 1.3, 35, 3);

-- SELECT produtos com preco > 50.00
SELECT * FROM tb_produtos
WHERE preco > 50.00;

-- SELECT produtos com preco entre 50.00 e 150.00
SELECT * FROM tb_produtos
WHERE preco BETWEEN 50.00 AND 150.00;

-- SELECT produtos que possuem a letra 'C' no nome
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

-- SELECT com INNER JOIN unindo produtos e categorias
SELECT p.id, p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;

--  SELECT com INNER JOIN filtrando categoria específica
-- Exemplo: Produtos da categoria Aves
SELECT p.nome AS Produto, c.nome AS Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Aves";