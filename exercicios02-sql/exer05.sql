-- Criar o Banco de Dados
CREATE DATABASE db_construindo_vidas;

-- Selecionar o Banco de Dados
USE db_construindo_vidas;

-- Criar tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    setor VARCHAR(50) NOT NULL
);

-- Criar tabela tb_produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, setor) VALUES
("Hidráulica", "Obras"),
("Elétrica", "Instalações"),
("Pintura", "Acabamento"),
("Ferramentas", "Geral"),
("Madeira", "Estruturas");

-- Inserir 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
("Cano PVC 50mm", "Cano para instalação hidráulica", 120.00, 50, 1),
("Torneira Metálica", "Torneira para cozinha", 85.00, 25, 1),
("Fio Elétrico 2,5mm", "Rolo com 100 metros", 140.00, 40, 2),
("Interruptor Simples", "Modelo branco moderno", 18.00, 100, 2),
("Tinta Acrílica 18L", "Cor branca neve", 160.00, 20, 3),
("Pincel 2''", "Pincel para pintura geral", 25.00, 80, 3),
("Martelo Aço", "Ferramenta manual", 75.00, 35, 4),
("Viga de Madeira 4m", "Ideal para estruturas", 180.00, 15, 5);

-- SELECT produtos com valor > R$ 100,00
SELECT * FROM tb_produtos
WHERE preco > 100.00;

-- SELECT produtos com valor entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos
WHERE preco BETWEEN 70.00 AND 150.00;

-- SELECT produtos que possuem a letra 'C' no nome
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

--  INNER JOIN produtos + categorias
SELECT p.id, p.nome, p.preco, c.nome AS categoria, c.setor
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id;


-- INNER JOIN filtrando por categoria específica
-- Exemplo: apenas produtos da categoria Hidráulica
SELECT p.nome AS Produto, c.nome AS Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categoria_id
WHERE c.nome = "Hidráulica";
