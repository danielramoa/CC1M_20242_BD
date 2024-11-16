INSERT INTO PASSAGEIROS (CPF, NOME) 
VALUES (12345678901, 'João'), 
       (98765432100, 'Maria'), 
       (45678912345, 'Carlos'), 
       (32165498700, 'Ana'), 
       (65432178900, 'Paulo'), 
       (78912345600, 'Fernanda');

INSERT INTO AERONAVES (ID_AERONAVE, INFO_AERONAVE, CAPACIDADE, VOOS_DIA, VOOS_SEMANA) 
VALUES (1, 'Boeing 737', '200 lugares', '5 voos', '35 voos'),
       (2, 'Airbus A320', '180 lugares', '6 voos', '42 voos'),
       (3, 'Embraer E195', '132 lugares', '4 voos', '28 voos'),
       (4, 'Boeing 747', '366 lugares', '3 voos', '21 voos'),
       (5, 'ATR 72', '70 lugares', '8 voos', '56 voos'),
       (6, 'Cessna 208', '12 lugares', '2 voos', '14 voos');

INSERT INTO FUNCIONARIOS (ID_FUNCIONARIO, NOME_FUNCIONARIO, CARGO_FUNCIONARIO) 
VALUES (1, 'João Silva', 'Piloto'), 
       (2, 'Maria Oliveira', 'Copiloto'), 
       (3, 'Carlos Souza', 'Comissário'), 
       (4, 'Ana Costa', 'Comissária'), 
       (5, 'Paulo Lima', 'Mecânico'), 
       (6, 'Fernanda Alves', 'Gerente');

INSERT INTO AEROPORTOS (ID_AEROPORTO, NOME_AEROPORTO, LOCAL_AEROPORTO, ID_AERONAVE) 
VALUES (1, 'Aeroporto Guarulhos', 'São Paulo', 1),
       (2, 'Aeroporto Congonhas', 'São Paulo', 2),
       (3, 'Aeroporto Santos Dumont', 'Rio de Janeiro', 3),
       (4, 'Aeroporto Galeão', 'Rio de Janeiro', 4),
       (5, 'Aeroporto Confins', 'Belo Horizonte', 5),
       (6, 'Aeroporto Pinto Martins', 'Fortaleza', 6);

INSERT INTO VOOS (ID_VOO, ORIGEM_VOO, DESTINO_VOO, HORA_PARTIDA, HORA_CHEGADA, ID_RESERVA) 
VALUES (1, 'São Paulo', 'Rio de Janeiro', '2024-12-01 10:00:00', '2024-12-01 11:30:00', 1),
       (2, 'Rio de Janeiro', 'Belo Horizonte', '2024-12-02 12:00:00', '2024-12-02 13:30:00', 2),
       (3, 'Belo Horizonte', 'Brasília', '2024-12-03 14:00:00', '2024-12-03 16:00:00', 3),
       (4, 'Brasília', 'Salvador', '2024-12-04 17:00:00', '2024-12-04 19:00:00', 4),
       (5, 'Salvador', 'Recife', '2024-12-05 20:00:00', '2024-12-05 22:00:00', 5),
       (6, 'Recife', 'Fortaleza', '2024-12-06 23:00:00', '2024-12-07 01:00:00', 6);

INSERT INTO RESERVAS (ID_RESERVA, INFO_RESERVA, STATUS_RESERVA, CPF, ID_VOO) 
VALUES (1, 'Reserva 1', 'Confirmada', 12345678901, 1),
       (2, 'Reserva 2', 'Pendente', 98765432100, 2),
       (3, 'Reserva 3', 'Confirmada', 45678912345, 3),
       (4, 'Reserva 4', 'Cancelada', 32165498700, 4),
       (5, 'Reserva 5', 'Pendente', 65432178900, 5),
       (6, 'Reserva 6', 'Confirmada', 78912345600, 6);

INSERT INTO ENDERECO (ID_ENDERECO, UF, CEP, CIDADE, BAIRRO, LOGRADOURO, COMPLEMENTO, NUMERO, CPF) 
VALUES (1, 'SP', '01000-000', 'São Paulo', 'Centro', 'Av. Paulista', 'Apto 101', '100', 12345678901),
       (2, 'RJ', '20000-000', 'Rio de Janeiro', 'Copacabana', 'Rua Atlântica', 'Apto 202', '200', 98765432100),
       (3, 'MG', '30000-000', 'Belo Horizonte', 'Savassi', 'Av. Contorno', 'Sala 303', '300', 45678912345),
       (4, 'DF', '70000-000', 'Brasília', 'Asa Norte', 'Rua das Flores', 'Casa 1', '400', 32165498700),
       (5, 'BA', '40000-000', 'Salvador', 'Pelourinho', 'Ladeira do Carmo', 'Casa 2', '500', 65432178900),
       (6, 'CE', '60000-000', 'Fortaleza', 'Aldeota', 'Av. Beira Mar', 'Apto 606', '600', 78912345600);

INSERT INTO TELEFONE (ID_TELEFONE, NUMERO_TELEFONE, CPF) 
VALUES (1, '11987654321', 12345678901),
       (2, '21987654321', 98765432100),
       (3, '31987654321', 45678912345),
       (4, '61987654321', 32165498700),
       (5, '71987654321', 65432178900),
       (6, '81987654321', 78912345600);

UPDATE PASSAGEIROS SET NOME = 'João Pedro' WHERE CPF = 12345678901;
UPDATE PASSAGEIROS SET NOME = 'Maria Clara' WHERE CPF = 98765432100;

UPDATE AERONAVES SET INFO_AERONAVE = 'Boeing 737 Max' WHERE ID_AERONAVE = 1;
UPDATE AERONAVES SET CAPACIDADE = '220 lugares' WHERE ID_AERONAVE = 2;

UPDATE FUNCIONARIOS SET CARGO_FUNCIONARIO = 'Comandante' WHERE ID_FUNCIONARIO = 1;
UPDATE FUNCIONARIOS SET CARGO_FUNCIONARIO = 'Técnico' WHERE ID_FUNCIONARIO = 5;

UPDATE AEROPORTOS SET LOCAL_AEROPORTO = 'Guarulhos - SP' WHERE ID_AEROPORTO = 1;
UPDATE AEROPORTOS SET NOME_AEROPORTO = 'Congonhas - SP' WHERE ID_AEROPORTO = 2;

UPDATE VOOS SET ORIGEM_VOO = 'Campinas' WHERE ID_VOO = 1;
UPDATE VOOS SET DESTINO_VOO = 'Curitiba' WHERE ID_VOO = 2;

UPDATE RESERVAS SET STATUS_RESERVA = 'Confirmada' WHERE ID_RESERVA = 2;
UPDATE RESERVAS SET STATUS_RESERVA = 'Cancelada' WHERE ID_RESERVA = 5;

UPDATE ENDERECO SET CIDADE = 'São Bernardo do Campo' WHERE ID_ENDERECO = 1;
UPDATE ENDERECO SET BAIRRO = 'Centro Histórico' WHERE ID_ENDERECO = 5;

UPDATE TELEFONE SET NUMERO_TELEFONE = '11912345678' WHERE ID_TELEFONE = 1;
UPDATE TELEFONE SET NUMERO_TELEFONE = '21912345678' WHERE ID_TELEFONE = 2;

DELETE FROM TELEFONE WHERE ID_TELEFONE = 6;
DELETE FROM ENDERECO WHERE ID_ENDERECO = 6;
DELETE FROM RESERVAS WHERE ID_RESERVA = 6;
DELETE FROM VOOS WHERE ID_VOO = 6;
DELETE FROM AEROPORTOS WHERE ID_AEROPORTO = 6;
DELETE FROM FUNCIONARIOS WHERE ID_FUNCIONARIO = 6;
DELETE FROM AERONAVES WHERE ID_AERONAVE = 6;
DELETE FROM PASSAGEIROS WHERE CPF = 78912345600;

