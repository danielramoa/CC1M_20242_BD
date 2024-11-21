CREATE DATABASE PROJETOFORTES;

USE PROJETOFORTES;

CREATE TABLE IF NOT EXISTS PROJETOS(
    ID_PROJETO INT PRIMARY KEY,
    NOME_PROJETO VARCHAR(45) NOT NULL,
    OBJETIVO VARCHAR(45) NOT NULL,
    JUSTIFICATIVA VARCHAR(45) NOT NULL,
    AREA_TEMATICA VARCHAR(45) NOT NULL,
    DATA_INICIO DATE NOT NULL,
    DATA_FIM DATE NOT NULL,
    VALOR_ESTIMADO VARCHAR(45) NOT NULL,
    STATUS VARCHAR(45) NOT NULL
    );

CREATE TABLE IF NOT EXISTS DONATARIOS(
    ID_DONATARIO INT PRIMARY KEY,
    NOME_DONATARIO VARCHAR(45) NOT NULL,
    TIPO_DONATARIO VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(45),
    CPF_REPRESENTANTE VARCHAR(45) NOT NULL,
    STATUS_REGULARIDADE VARCHAR(45) NOT NULL,
    UF VARCHAR(2) NOT NULL,
    CEP VARCHAR(11) NOT NULL,
    CIDADE VARCHAR(45) NOT NULL,
    BAIRRO VARCHAR(45) NOT NULL,
    LOGRADOURO VARCHAR(45) NOT NULL,
    COMPLEMENTO VARCHAR(45) NOT NULL,
    NUMERO VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS DOACOES(
    ID_DOACAO INT PRIMARY KEY,
    VALOR VARCHAR(45) NOT NULL,
    DATA DATE,
    TIPO_DOACAO VARCHAR(45) NOT NULL,
    ID_PROJETO INT,
    CONSTRAINT FK_DOACOES_PROJETO FOREIGN KEY(ID_PROJETO) REFERENCES PROJETOS(ID_PROJETO)
);

CREATE TABLE IF NOT EXISTS RELATORIO(
    ID_RELATORIO INT PRIMARY KEY,
    DATA_ENVIO DATE,
    TIPO_RELATORIO VARCHAR(45) NOT NULL,
    ID_PROJETO INT,
    CONSTRAINT FK_RELATORIO_PROJETO FOREIGN KEY(ID_PROJETO) REFERENCES PROJETOS(ID_PROJETO)
);

CREATE TABLE IF NOT EXISTS EDITAL(
    ID_EDITAL INT PRIMARY KEY,
    NOME_EDITAL VARCHAR(45) NOT NULL,
    DATA_INICIO DATE NOT NULL,
    DATA_FIM DATE
);

CREATE TABLE IF NOT EXISTS COMISSAO(
    ID_COMISSAO INT PRIMARY KEY,
    NOME_MEMBRO VARCHAR(50),
    CARGO VARCHAR(45) NOT NULL,
    CONTATO VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS PROJETOS_COMISSAO(
    ID_PROJETO INT,
    ID_COMISSAO INT,
    PRIMARY KEY(ID_PROJETO, ID_COMISSAO),
    CONSTRAINT FK_PC_PROJETO FOREIGN KEY(ID_PROJETO) REFERENCES PROJETOS(ID_PROJETO) ON DELETE CASCADE,
    CONSTRAINT FK_PC_COMISSAO FOREIGN KEY(ID_COMISSAO) REFERENCES COMISSAO(ID_COMISSAO) ON DELETE CASCADE
);
