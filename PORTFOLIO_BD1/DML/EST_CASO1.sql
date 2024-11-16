INSERT INTO LOCAIS (ID_LOCAL, NOME_LOCAL, LOG_LOCAL, NUMLOG_LOCAL, BAIRRO_LOCAL, CIDADE, UF, CEP, CAPACIDADE) 
VALUES (1, 'Centro de Convenções', 'Rua das Flores', 100, 'Centro', 'São Paulo', 'SP', '01000-000', 500),
       (2, 'Auditório Municipal', 'Av. Paulista', 200, 'Bela Vista', 'São Paulo', 'SP', '01311-000', 300),
       (3, 'Espaço Cultural', 'Rua Verde', 45, 'Liberdade', 'São Paulo', 'SP', '01501-000', 400),
       (4, 'Ginásio Poliesportivo', 'Rua Amarela', 70, 'Mooca', 'São Paulo', 'SP', '03101-000', 800),
       (5, 'Parque das Nações', 'Av. Azul', 150, 'Santana', 'São Paulo', 'SP', '02001-000', 1000),
       (6, 'Praça das Árvores', 'Rua das Palmeiras', 120, 'Pinheiros', 'São Paulo', 'SP', '05401-000', 150);

INSERT INTO EVENTOS (ID_EVENTO, NOME_EVENTO, DATA_EVENTO, ENTIDADE_EVENTO, LOCAL_EVENTO) 
VALUES (1, 'Workshop de Tecnologia', '2024-12-01', 'Tech Group', 1),
       (2, 'Congresso de Saúde', '2025-01-15', 'Health Corp', 2),
       (3, 'Feira de Negócios', '2025-03-20', 'Business Expo', 3),
       (4, 'Show Cultural', '2025-05-10', 'Art Society', 4),
       (5, 'Maratona Esportiva', '2025-06-05', 'Sports League', 5),
       (6, 'Festival de Cinema', '2025-07-25', 'Movie House', 6);

INSERT INTO ATIVIDADES (ID_ATIVIDADE, NOME_ATV, DATA_ATV, HORA_ATV, EVENTO_ATV) 
VALUES (1, 'Palestra sobre IA', '2024-12-01', '10:00:00', 1),
       (2, 'Workshop de Meditação', '2025-01-15', '14:00:00', 2),
       (3, 'Sessão de Networking', '2025-03-20', '16:00:00', 3),
       (4, 'Apresentação Musical', '2025-05-10', '19:00:00', 4),
       (5, 'Corrida de Revezamento', '2025-06-05', '08:00:00', 5),
       (6, 'Debate sobre Cinema', '2025-07-25', '15:00:00', 6);

INSERT INTO PARTICIPANTES (NUM_INSCRICAO, CPF, NOME, DATA_NASC, EMPRESA) 
VALUES (1, '123.456.789-00', 'João Silva', '1990-05-15', 'Tech Corp'),
       (2, '987.654.321-00', 'Maria Oliveira', '1985-11-20', 'Health Inc'),
       (3, '456.789.123-00', 'Carlos Souza', '1992-07-08', 'Business Ltda'),
       (4, '321.654.987-00', 'Ana Costa', '1995-03-12', 'Art World'),
       (5, '654.321.987-00', 'Paulo Lima', '1988-09-30', 'Sports Group'),
       (6, '789.123.456-00', 'Fernanda Alves', '1993-12-21', 'Cinema Lovers');

INSERT INTO PARTICIPANTE_ATIVIDADE (PA_INSCRICAO, PA_CPF, PA_ATIVIDADE) 
VALUES (1, '123.456.789-00', 1),
       (2, '987.654.321-00', 2),
       (3, '456.789.123-00', 3),
       (4, '321.654.987-00', 4),
       (5, '654.321.987-00', 5),
       (6, '789.123.456-00', 6);


UPDATE LOCAIS SET CAPACIDADE = 750 WHERE NOME_LOCAL = 'Centro de Convenções';
UPDATE LOCAIS SET UF = 'RJ' WHERE NOME_LOCAL = 'Auditório Municipal';

UPDATE EVENTOS SET DATA_EVENTO = '2024-11-30' WHERE NOME_EVENTO = 'Workshop de Tecnologia';
UPDATE EVENTOS SET ENTIDADE_EVENTO = 'Updated Society' WHERE NOME_EVENTO = 'Show Cultural';

UPDATE ATIVIDADES SET DATA_ATV = '2025-01-14' WHERE NOME_ATV = 'Workshop de Meditação';
UPDATE ATIVIDADES SET HORA_ATV = '09:00:00' WHERE NOME_ATV = 'Corrida de Revezamento';

UPDATE PARTICIPANTES SET EMPRESA = 'Tech Solutions' WHERE NOME = 'João Silva';
UPDATE PARTICIPANTES SET DATA_NASC = '1989-01-01' WHERE NOME = 'Maria Oliveira';

UPDATE PARTICIPANTE_ATIVIDADE SET PA_ATIVIDADE = 4 WHERE PA_CPF = '456.789.123-00';
UPDATE PARTICIPANTE_ATIVIDADE SET PA_ATIVIDADE = 5 WHERE PA_CPF = '987.654.321-00';

DELETE FROM PARTICIPANTE_ATIVIDADE WHERE PA_CPF = '789.123.456-00';
DELETE FROM PARTICIPANTES WHERE CPF = '789.123.456-00';
DELETE FROM ATIVIDADES WHERE ID_ATIVIDADE = 6;
DELETE FROM EVENTOS WHERE ID_EVENTO = 6;
DELETE FROM LOCAIS WHERE ID_LOCAL = 6;

