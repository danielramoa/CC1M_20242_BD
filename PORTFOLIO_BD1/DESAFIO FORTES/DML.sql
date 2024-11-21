USE PROJETOFORTES;

INSERT INTO PROJETOS (ID_PROJETO, NOME_PROJETO, OBJETIVO, JUSTIFICATIVA, AREA_TEMATICA, DATA_INICIO, DATA_FIM, VALOR_ESTIMADO, STATUS)
VALUES
(1, 'Educação para Todos', 'Promover acesso à educação', 'Alta taxa de analfabetismo', 'Educação', '2024-01-01', '2024-12-31', '50000', 'Em Andamento'),
(2, 'Saúde na Comunidade', 'Melhorar atendimento médico', 'Falta de infraestrutura', 'Saúde', '2024-02-01', '2024-11-30', '75000', 'Planejado');

INSERT INTO DONATARIOS (ID_DONATARIO, NOME_DONATARIO, TIPO_DONATARIO, CNPJ, CPF_REPRESENTANTE, STATUS_REGULARIDADE, UF, CEP, CIDADE, BAIRRO, LOGRADOURO, COMPLEMENTO, NUMERO)
VALUES
(1, 'ONG Amigos do Bem', 'Privada', '12345678000199', '98765432100', 'Regular', 'SP', '01001000', 'São Paulo', 'Centro', 'Rua Central', 'Sala 101', '100'),
(2, 'Prefeitura de Vila Velha', 'Pública', NULL, '12345678901', 'Regular', 'ES', '29100000', 'Vila Velha', 'Praia da Costa', 'Av. Principal', 'Prefeitura', '1');

INSERT INTO DOACOES (ID_DOACAO, VALOR, DATA, TIPO_DOACAO, ID_PROJETO)
VALUES
(1, '20000', '2024-03-01', 'Financeira', 1),
(2, '30000', '2024-04-01', 'Financeira', 2);

INSERT INTO RELATORIO (ID_RELATORIO, DATA_ENVIO, TIPO_RELATORIO, ID_PROJETO)
VALUES
(1, '2024-05-01', 'Progresso', 1),
(2, '2024-06-01', 'Final', 2);

INSERT INTO EDITAL (ID_EDITAL, NOME_EDITAL, DATA_INICIO, DATA_FIM)
VALUES
(1, 'Edital 2024', '2024-01-15', '2024-03-31'),
(2, 'Edital Saúde', '2024-04-01', '2024-06-30');

INSERT INTO COMISSAO (ID_COMISSAO, NOME_MEMBRO, CARGO, CONTATO)
VALUES
(1, 'Maria Silva', 'Coordenadora', 'maria.silva@email.com'),
(2, 'João Souza', 'Analista', 'joao.souza@email.com');

INSERT INTO PROJETOS_COMISSAO (ID_PROJETO, ID_COMISSAO)
VALUES
(1, 1),
(2, 2);
