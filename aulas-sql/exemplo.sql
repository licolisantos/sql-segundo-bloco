CREATE DATABASE db_quitanda; -- criando o Banco de Dados 

USE db_quitanda; -- indicando qual BD deve ser usando

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT, --  cria automaticamente um id por linha no BD 
	nome VARCHAR(255) NOT NULL, -- varchar - determina quantidade de caracteres no campo not null- determina que o preencimento do campo é obrigatorio
	quantidade INT, -- int - inteiro 
    datavalidade DATE, -- DATA ano/mes/dia
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id) -- chave primaria - regra aplicada na tabela - nao repete - indicada para conexao com outras tabelas
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos;

SELECT nome,preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id=1; -- where utilizado para indicar de dados especificos para visualizar de uma determinada tabela

SELECT * FROM tb_produtos WHERE preco >5;

-- ALTERAR ESTRUTURA DA TABELA 
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);-- define quantidade de casas antes e apos a virgula

SELECT * FROM tb_produtos;

-- ATUALIZAR DADOS DA TABELA 
UPDATE tb_produtos SET preco = 2.99 WHERE id = 6; -- atualizar tabela, SET indica qual campo sera atualizado WHERE limita em qual item essa atualizacao ocorrera 
-- ATENCAO sempre que utilizar o UPDATE usaro o WHERE, inibir io risco de atualizar TODOS os itens da tabela, de prerencia usar o ID  

-- EXCLUIR / DELETAR DADOS NA TABELA 
DELETE FROM tb_produtos WHERE id = 2; 

-- ADD NOVO DADO A TABELA 
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("abacaxi",100, "2023-12-15", 7.99);