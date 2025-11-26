-- CRIANDO O BD
CREATE DATABASE db_ecomSuplementos;

-- INDICANDO QUAL BD SERA USADO 
USE db_ecomSuplementos;

-- EXCLUINDO BD 
DROP DATABASE db_ecomSuplementos;

-- CRIANDO NOVO BD 
CREATE DATABASE db_ecommerce_suplementos;
USE db_ecommerce_suplementos;

-- CRIANDO TABELA PRODUTOS 
CREATE TABLE tb_produtos_suplementos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

-- INSERINDO DADOS NA TABELA
INSERT INTO tb_produtos_suplementos (nome, categoria, preco, estoque, descricao) VALUES
("Whey Protein Isolado", "proteina", 169.90, 30, "Whey isolado 900g — alto teor proteico"),
("Creatina Monohidratada", "performance", 89.90, 50, "Creatina 300g — aumenta força e desempenho"),
("Pré-Treino Explode", "energia", 129.90, 20, "Pré-treino com cafeína e beta-alanina"),
("BCAA 4:1:1", "aminoacidos", 69.90, 40, "BCAA de rápida absorção — 120 cápsulas"),
("Colágeno Hidrolisado", "beleza_saude", 49.90, 25, "Colágeno tipo I — pele, unhas e cabelos"),
("Ômega 3 Ultra", "vitaminas", 39.90, 35, "Ômega 3 — EPA/DHA — 120 cápsulas"),
("Hipercalórico 3kg", "ganho_de_massa", 129.90, 15, "Hipercalórico com 1300 kcal por dose"),
("Glutamina 300g", "recuperacao", 79.90, 22, "Glutamina micronizada — melhora imunidade");

-- SELECIONANDO — PREÇO MAIOR QUE 120
SELECT * FROM tb_produtos_suplementos
WHERE preco > 120;

-- SELECIONANDO — PREÇO MENOR QUE 150
SELECT * FROM tb_produtos_suplementos
WHERE preco < 150;

-- ATUALIZANDIO UM REGISTRO
UPDATE tb_produtos_suplementos
SET preco = 149.90
WHERE id = 2;

-- SELECIONADO PARA CONFERIR
SELECT * FROM tb_produtos_suplementos;
