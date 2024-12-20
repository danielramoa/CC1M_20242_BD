CREATE DATABASE ESTCASO_5;

USE ESTCASO_5;

CREATE TABLE IF NOT EXISTS CLIENTES(
    CPF VARCHAR(45) PRIMARY KEY,
    NOME_CLIENTE VARCHAR(45) NOT NULL,
    DATA_NASC DATE NOT NULL,
    STATUS_FIDELIDADE VARCHAR(45) NOT NULL,
	CEP VARCHAR(45) NOT NULL,
    CIDADE VARCHAR(45) NOT NULL,
    BAIRRO VARCHAR(45) NOT NULL,
    NOME_RUA VARCHAR(45) NOT NULL,
    NUM_RUA VARCHAR(45) NOT NULL,
    LOGRADOURO VARCHAR(45) NOT NULL
);

ALTER TABLE CLIENTES ADD COLUMN ANIVERSARIO DATE NOT NULL;
ALTER TABLE CLIENTES MODIFY COLUMN ANIVERSARIO DATETIME;
ALTER TABLE CLIENTES CHANGE COLUMN ANIVERSARIO CERTIDAO DATETIME;
ALTER TABLE CLIENTES DROP COLUMN CERTIDAO;


CREATE TABLE IF NOT EXISTS PAGAMENTOS(
    ID_PAGAMENTO INT PRIMARY KEY,
    DATA_PAGAMENTO DATE,
    VALOR VARCHAR(45),
    STATUS_PAGAMENTO VARCHAR(45),
    CPF VARCHAR(45),
    CONSTRAINT FK_PAGTOS_CLIENTE FOREIGN KEY(CPF) REFERENCES CLIENTES(CPF)
);


ALTER TABLE PAGAMENTOS ADD COLUMN E_O_PIX VARCHAR(45);
ALTER TABLE PAGAMENTOS MODIFY COLUMN E_O_PIX VARCHAR (3);
ALTER TABLE PAGAMENTOS CHANGE COLUMN E_O_PIX PIX VARCHAR(3);
ALTER TABLE PAGAMENTOS DROP COLUMN PIX;


CREATE TABLE IF NOT EXISTS FORNECEDORES(
    CNPJ VARCHAR(45) PRIMARY KEY,
    NOME VARCHAR(45) NOT NULL
);


ALTER TABLE FORNECEDORES ADD COLUMN RAZ_SOC VARCHAR(45);
ALTER TABLE FORNECEDORES MODIFY COLUMN RAZ_SOC VARCHAR (60);
ALTER TABLE FORNECEDORES CHANGE COLUMN RAZ_SOC RAZAO_SOC VARCHAR(60);
ALTER TABLE FORNECEDORES DROP COLUMN RAZAO_SOC;


CREATE TABLE IF NOT EXISTS PRODUTOS(
    ID_PRODUTO INT PRIMARY KEY,
    QNT_ESTOQUE VARCHAR(45) NOT NULL,
    NOME_PRODUTO VARCHAR(45) NOT NULL,
    INFO_PRODUTO VARCHAR(45),
    PREÇO_PRODUTO VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(45),
    CONSTRAINT FK_FORNC_PROD FOREIGN KEY(CNPJ) REFERENCES FORNECEDORES(CNPJ)
);


ALTER TABLE PRODUTOS ADD COLUMN TIPO_PROD VARCHAR(45);
ALTER TABLE PRODUTOS MODIFY COLUMN TIPO_PROD VARCHAR (60);
ALTER TABLE PRODUTOS CHANGE COLUMN TIPO_PROD TYPE_PRODUCT VARCHAR(60);
ALTER TABLE PRODUTOS DROP COLUMN TYPE_PRODUCT;


CREATE TABLE IF NOT EXISTS TELEFONE(
    ID_TELEFONE INT PRIMARY KEY,
    NUM_TELEFONE VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(45),
    CONSTRAINT FK_TELEFONE_FORNC FOREIGN KEY(CNPJ) REFERENCES FORNECEDORES(CNPJ)
);


ALTER TABLE TELEFONE ADD COLUMN DDD VARCHAR(4);
ALTER TABLE TELEFONE MODIFY COLUMN DDD VARCHAR (10);
ALTER TABLE TELEFONE CHANGE COLUMN DDD NUM_ESTADO VARCHAR(60);
ALTER TABLE TELEFONE DROP COLUMN NUM_ESTADO;


CREATE TABLE IF NOT EXISTS VENDAS(
    ID_VENDA INT PRIMARY KEY,
    DESC_VENDA VARCHAR(45) NOT NULL,
    FORMA_PAGTO VARCHAR(45) NOT NULL,
    ID_PRODUTO INT
);

ALTER TABLE VENDAS ADD COLUMN NUM_VENDA INT;
ALTER TABLE VENDAS MODIFY COLUMN NUM_VENDA INT NOT NULL;
ALTER TABLE VENDAS CHANGE COLUMN NUM_VENDA COD_VENDA INT NOT NULL;
ALTER TABLE VENDAS DROP COLUMN COD_VENDA;

CREATE TABLE IF NOT EXISTS PESSOAS(
    ID_PESSOA INT PRIMARY KEY,
    CEP_PESSOA VARCHAR(45) NOT NULL
);

DROP TABLE IF EXISTS PESSOAS;
