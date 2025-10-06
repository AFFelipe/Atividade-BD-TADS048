-- ======================
-- ⿡ Tabela: Orquestras
-- ======================
INSERT INTO Orquestras (nome, data_criacao) VALUES
('Orquestra Sinfônica do Recife', '1998-05-14'),
('Orquestra Jovem de Pernambuco', '2005-09-01'),
('Orquestra Camerata do Sertão', '2010-03-12'),
('Orquestra Harmonia Nordestina', '2001-11-23'),
('Orquestra Popular do Agreste', '2015-07-30'),
('Orquestra Filarmônica de Olinda', '1999-06-18'),
('Orquestra Sinfônica do Cabo', '2007-10-10'),
('Orquestra Municipal de Jaboatão', '2002-12-09'),
('Orquestra Sons do Atlântico', '2011-08-21'),
('Orquestra Experimental do Nordeste', '2018-02-14'),
('Orquestra Barroca de Igarassu', '2003-04-04'),
('Orquestra Regional do Litoral', '2006-09-17'),
('Orquestra Clássica Pernambucana', '1995-12-20'),
('Orquestra Harmonia do Futuro', '2020-01-05'),
('Orquestra Infantojuvenil Recife', '2016-05-12'),
('Orquestra Metálica do Norte', '2013-07-09'),
('Orquestra Camerata Jovem', '2008-10-29'),
('Orquestra Nova Harmonia', '2019-04-16'),
('Orquestra Luz do Sertão', '2017-09-23'),
('Orquestra Viva Pernambuco', '2012-11-30');

-- ======================
-- ⿢ Tabela: Endereco
-- ======================
INSERT INTO Endereco (id_orquestra, uf, cidade, bairro, rua, cep, numero) VALUES
(1, 'PE', 'Recife', 'Boa Vista', 'Rua da Aurora', '50050-000', 120),
(2, 'PE', 'Caruaru', 'Maurício de Nassau', 'Av. Agamenon Magalhães', '55014-000', 320),
(3, 'PE', 'Petrolina', 'Centro', 'Rua Dom Malan', '56302-000', 87),
(4, 'PE', 'Garanhuns', 'Heliópolis', 'Rua Dom José', '55294-000', 65),
(5, 'PE', 'Arcoverde', 'São Cristóvão', 'Rua do Sol', '56500-000', 402),
(6, 'PE', 'Olinda', 'Carmo', 'Rua Prudente de Morais', '53020-000', 97),
(7, 'PE', 'Cabo de Santo Agostinho', 'Centro', 'Rua Getúlio Vargas', '54510-000', 101),
(8, 'PE', 'Jaboatão dos Guararapes', 'Prazeres', 'Av. Barreto de Menezes', '54335-010', 553),
(9, 'PE', 'Paulista', 'Maranguape I', 'Rua das Flores', '53401-000', 44),
(10, 'PE', 'Garanhuns', 'Boa Vista', 'Rua São Bento', '55295-000', 211),
(11, 'PE', 'Igarassu', 'Centro', 'Rua da Matriz', '53610-000', 72),
(12, 'PE', 'Goiana', 'Centro', 'Av. Marechal Deodoro', '55900-000', 145),
(13, 'PE', 'Recife', 'Casa Forte', 'Rua 17 de Agosto', '52061-540', 99),
(14, 'PE', 'Abreu e Lima', 'Caetés I', 'Rua Principal', '53520-000', 15),
(15, 'PE', 'Recife', 'Boa Viagem', 'Rua dos Navegantes', '51021-010', 342),
(16, 'PE', 'Carpina', 'Centro', 'Rua das Acácias', '55810-000', 28),
(17, 'PE', 'Vitória de Santo Antão', 'Matriz', 'Rua Imperial', '55602-000', 51),
(18, 'PE', 'Bezerros', 'Centro', 'Rua da Matriz', '55660-000', 80),
(19, 'PE', 'Serra Talhada', 'Ipsep', 'Rua Enéas Xavier', '56912-000', 66),
(20, 'PE', 'Araripina', 'Centro', 'Rua Floriano Peixoto', '56280-000', 34);

-- ======================
-- ⿣ Tabela: Telefone
-- ======================
INSERT INTO Telefone (numero, id_orquestra) VALUES
('81990010001', 1),
('81990020002', 2),
('81990030003', 3),
('81990040004', 4),
('81990050005', 5),
('81990060006', 6),
('81990070007', 7),
('81990080008', 8),
('81990090009', 9),
('81990100010', 10),
('81990110011', 11),
('81990120012', 12),
('81990130013', 13),
('81990140014', 14),
('81990150015', 15),
('81990160016', 16),
('81990170017', 17),
('81990180018', 18),
('81990190019', 19),
('81990200020', 20);

-- ======================
-- ⿤ Tabela: Instrumentos
-- ======================
INSERT INTO Instrumentos (nome, tipo) VALUES
('Violino', 'Cordas'),
('Viola', 'Cordas'),
('Violoncelo', 'Cordas'),
('Contrabaixo', 'Cordas'),
('Flauta Transversal', 'Sopro'),
('Clarinete', 'Sopro'),
('Oboé', 'Sopro'),
('Trompete', 'Metal'),
('Trombone', 'Metal'),
('Trompa', 'Metal'),
('Tuba', 'Metal'),
('Piano', 'Teclas'),
('Cravo', 'Teclas'),
('Harpa', 'Cordas'),
('Percussão', 'Percussão'),
('Bateria', 'Percussão'),
('Guitarra', 'Cordas'),
('Bandolim', 'Cordas'),
('Saxofone', 'Sopro'),
('Fagote', 'Sopro');

-- ======================
-- ⿥ Tabela: Musicos
-- ======================
INSERT INTO Musicos (cpf, nome, nacionalidade, nome_social, data_nasc, id_orquestra) VALUES
('111.111.111-11', 'Lucas Pereira', 'Brasileiro', NULL, '1990-05-21', 1),
('222.222.222-22', 'Fernanda Costa', 'Brasileira', NULL, '1988-12-15', 2),
('333.333.333-33', 'João Silva', 'Brasileiro', NULL, '1992-03-10', 3),
('444.444.444-44', 'Mariana Souza', 'Brasileira', NULL, '1995-07-05', 4),
('555.555.555-55', 'Carlos Alberto', 'Brasileiro', NULL, '1985-11-20', 5),
('666.666.666-66', 'Ana Paula', 'Brasileira', NULL, '1993-09-18', 6),
('777.777.777-77', 'Pedro Henrique', 'Brasileiro', NULL, '1991-01-30', 7),
('888.888.888-88', 'Camila Rodrigues', 'Brasileira', NULL, '1989-04-22', 8),
('999.999.999-99', 'Rafael Gomes', 'Brasileiro', NULL, '1994-08-14', 9),
('000.000.000-00', 'Juliana Lima', 'Brasileira', NULL, '1996-02-11', 10),
('123.123.123-12', 'Marcos Vinicius', 'Brasileiro', NULL, '1987-06-08', 11),
('234.234.234-23', 'Patrícia Oliveira', 'Brasileira', NULL, '1992-10-25', 12),
('345.345.345-34', 'Bruno Fernandes', 'Brasileiro', NULL, '1990-09-09', 13),
('456.456.456-45', 'Bianca Martins', 'Brasileira', NULL, '1993-12-12', 14),
('567.567.567-56', 'Diego Costa', 'Brasileiro', NULL, '1989-01-17', 15),
('678.678.678-67', 'Aline Rodrigues', 'Brasileira', NULL, '1991-07-30', 16),
('789.789.789-78', 'Felipe Santos', 'Brasileiro', NULL, '1995-05-04', 17),
('890.890.890-89', 'Sabrina Lima', 'Brasileira', NULL, '1992-08-20', 18),
('901.901.901-90', 'Gustavo Rocha', 'Brasileiro', NULL, '1988-03-11', 19),
('012.012.012-01', 'Larissa Melo', 'Brasileira', NULL, '1994-12-29', 20);

-- ======================
-- ⿦ Tabela: Apto_a_Tocar
-- ======================
INSERT INTO Apto_a_Tocar (cpf_musico, id_instrumento) VALUES
('111.111.111-11', 1),
('111.111.111-11', 5),
('222.222.222-22', 2),
('222.222.222-22', 6),
('333.333.333-33', 3),
('333.333.333-33', 7),
('444.444.444-44', 4),
('444.444.444-44', 8),
('555.555.555-55', 1),
('555.555.555-55', 9),
('666.666.666-66', 2),
('666.666.666-66', 10),
('777.777.777-77', 3),
('777.777.777-77', 11),
('888.888.888-88', 4),
('888.888.888-88', 12),
('999.999.999-99', 5),
('999.999.999-99', 13),
('000.000.000-00', 6),
('000.000.000-00', 14);