USE Escola_de_musica;

-- ======================
-- INSERTS: Orquestras
-- ======================
INSERT INTO Orquestras (nome, data_criacao) VALUES
('Orquestra Sinfônica de Pernambuco', '1990-05-12'),
('Orquestra Jovem do Recife', '2000-08-20'),
('Orquestra Filarmônica de Olinda', '1985-03-15'),
('Orquestra Municipal do Recife', '1995-07-10'),
('Orquestra Acadêmica de Música', '2005-09-25'),
('Orquestra Experimental do Nordeste', '2010-11-05'),
('Orquestra de Câmara do Recife', '1998-02-28'),
('Orquestra de Cordas de Pernambuco', '2003-04-12'),
('Orquestra Juvenil de Olinda', '2008-06-30'),
('Orquestra Popular do Recife', '2015-01-20');

-- ======================
-- INSERTS: Telefone
-- ======================
INSERT INTO Telefone (numero, id_orquestra) VALUES
('81988880001', 1), ('81988880002', 2), ('81988880003', 3),
('81988880004', 4), ('81988880005', 5), ('81988880006', 6),
('81988880007', 7), ('81988880008', 8), ('81988880009', 9),
('81988880010', 10), ('81988880011', 1), ('81988880012', 2),
('81988880013', 3), ('81988880014', 4), ('81988880015', 5),
('81988880016', 6), ('81988880017', 7), ('81988880018', 8),
('81988880019', 9), ('81988880020', 10);

-- ======================
-- INSERTS: Endereco
-- ======================
INSERT INTO Endereco (id_orquestra, uf, cidade, bairro, rua, cep, numero) VALUES
(1,'PE','Recife','Boa Viagem','Rua das Orquestras','51000-000',100),
(2,'PE','Recife','Casa Forte','Avenida Musical','52000-100',200),
(3,'PE','Olinda','Varadouro','Rua dos Cordas','53000-200',50),
(4,'PE','Recife','Graças','Rua do Maestro','51010-010',75),
(5,'PE','Recife','Espinheiro','Avenida Harmonia','52010-020',180),
(6,'PE','Olinda','Olinda Centro','Rua Melodia','53010-030',90),
(7,'PE','Recife','Boa Vista','Rua Notas','51020-040',120),
(8,'PE','Recife','Pina','Rua das Flautas','52020-050',130),
(9,'PE','Olinda','Carmo','Rua Violinos','53020-060',140),
(10,'PE','Recife','Santo Antônio','Avenida Sinfonia','51030-070',150),
(1,'PE','Recife','Jardim São Paulo','Rua Trompas','51040-080',160),
(2,'PE','Recife','Espinheiro','Rua Trompetes','52030-090',170),
(3,'PE','Olinda','Varadouro','Rua Saxofones','53030-100',180),
(4,'PE','Recife','Graças','Rua Clarinetes','51050-110',190),
(5,'PE','Recife','Casa Amarela','Rua Violoncelos','52040-120',200),
(6,'PE','Olinda','Olinda Centro','Rua Percussão','53040-130',210),
(7,'PE','Recife','Boa Vista','Rua Harpas','51060-140',220),
(8,'PE','Recife','Pina','Rua Pianos','52050-150',230),
(9,'PE','Olinda','Carmo','Rua Oboés','53050-160',240),
(10,'PE','Recife','Santo Antônio','Rua Violinos','51070-170',250);

-- ======================
-- INSERTS: Musicos
-- ======================
INSERT INTO Musicos (cpf, nome, nacionalidade, nome_social, data_nasc, id_orquestra) VALUES
('111.111.111-11','Lucas Pereira da Silva','Brasileira',NULL,'1990-01-15',1),
('222.222.222-22','Ana Clara Souza','Brasileira',NULL,'1991-04-10',1),
('333.333.333-33','Felipe Santos','Brasileira',NULL,'1985-05-10',2),
('444.444.444-44','Mariana Costa','Brasileira',NULL,'1992-03-22',2),
('555.555.555-55','Gustavo Lima','Brasileira',NULL,'1988-07-19',3),
('666.666.666-66','Camila Rocha','Brasileira',NULL,'1995-09-05',3),
('777.777.777-77','Rafael Almeida','Brasileira',NULL,'1991-12-11',4),
('888.888.888-88','Juliana Fernandes','Brasileira',NULL,'1993-08-18',4),
('999.999.999-99','Pedro Henrique','Brasileira',NULL,'1987-06-30',5),
('000.000.000-00','Carla Bezerra','Brasileira',NULL,'1994-11-12',5),
('123.456.789-01','Thiago Martins','Brasileira',NULL,'1989-02-20',6),
('234.567.890-12','Patrícia Lima','Brasileira',NULL,'1990-04-25',6),
('345.678.901-23','Ricardo Gomes','Brasileira',NULL,'1986-10-10',7),
('456.789.012-34','Fernanda Silva','Brasileira',NULL,'1991-09-14',7),
('567.890.123-45','André Costa','Brasileira',NULL,'1992-12-05',8),
('678.901.234-56','Bruna Alves','Brasileira',NULL,'1993-01-30',8),
('789.012.345-67','Vitor Rocha','Brasileira',NULL,'1994-03-18',9),
('890.123.456-78','Larissa Melo','Brasileira',NULL,'1995-07-22',9),
('901.234.567-89','Diego Fernandes','Brasileira',NULL,'1996-05-15',10),
('012.012.012-01','Julio Cesar','Brasileira',NULL,'1997-08-09',10);

-- ======================
-- INSERTS: Instrumentos
-- ======================
INSERT INTO Instrumentos (nome, tipo) VALUES
('Violino','Cordas (arco)'),('Viola','Cordas (arco)'),('Violoncelo','Cordas (arco)'),
('Contrabaixo','Cordas (arco)'),('Flauta','Madeiras'),('Clarinete','Madeiras'),
('Oboé','Madeiras'),('Fagote','Madeiras'),('Trompete','Metais'),('Trompa','Metais'),
('Trombone','Metais'),('Tuba','Metais'),('Piano','Teclas'),('Harpa','Cordas (dedo)'),
('Percussão','Percussão'),('Saxofone','Madeiras'),('Bandolim','Cordas (dedo)'),
('Guitarra','Cordas (dedo)'),('Bateria','Percussão'),('Cajón','Percussão');

-- ======================
-- INSERTS: Apto_a_Tocar
-- ======================
INSERT INTO Apto_a_Tocar (cpf_musico, id_instrumento) VALUES
('111.111.111-11',1),('111.111.111-11',2),
('222.222.222-22',5),('222.222.222-22',6),
('333.333.333-33',1),('333.333.333-33',3),
('444.444.444-44',7),('444.444.444-44',8),
('555.555.555-55',9),('555.555.555-55',10),
('666.666.666-66',11),('666.666.666-66',12),
('777.777.777-77',13),('777.777.777-77',14),
('888.888.888-88',15),('888.888.888-88',16),
('999.999.999-99',17),('999.999.999-99',18),
('000.000.000-00',19),('000.000.000-00',20);

-- ======================
-- INSERTS: Sinfonia
-- ======================
INSERT INTO Sinfonia (nome, compositor, data_criacao, id_orquestra) VALUES
('Sinfonia Nº1','Heitor Villa-Lobos','1920-01-01',1),
('Sinfonia Nº2','Carlos Gomes','1880-01-01',1),
('Sinfonia Nº3','Camargo Guarnieri','1950-05-12',2),
('Sinfonia Nº4','Alberto Nepomuceno','1900-09-10',2),
('Sinfonia Nº5','Claudio Santoro','1930-07-15',3),
('Sinfonia Nº6','Francisco Mignone','1940-11-22',3),
('Sinfonia Nº7','Ernani Aguiar','1960-03-18',4),
('Sinfonia Nº8','Nelson Ferreira','1970-06-30',4),
('Sinfonia Nº9','Bach Brasileiro','1980-12-12',5),
('Sinfonia Nº10','Mozart Brasileiro','1990-02-20',5),
('Sinfonia Nº11','Villa Lobos Jr','2000-01-15',6),
('Sinfonia Nº12','Carlos Gomes Jr','2005-05-10',6),
('Sinfonia Nº13','Camargo Jr','2010-07-25',7),
('Sinfonia Nº14','Alberto Nepo Jr','2012-03-30',7),
('Sinfonia Nº15','Claudio S Jr','2014-09-18',8),
('Sinfonia Nº16','Francisco M Jr','2015-11-05',8),
('Sinfonia Nº17','Ernani A Jr','2016-06-12',9),
('Sinfonia Nº18','Nelson F Jr','2017-08-22',9),
('Sinfonia Nº19','Bach B Jr','2018-10-30',10),
('Sinfonia Nº20','Mozart B Jr','2019-12-15',10);

-- ======================
-- INSERTS: Sinfonia_has_Instrumentos
-- ======================
INSERT INTO Sinfonia_has_Instrumentos (id_sinfonia, id_instrumento, cpf_musico) VALUES
(1,1,'111.111.111-11'),(1,5,'222.222.222-22'),
(2,2,'111.111.111-11'),(2,6,'222.222.222-22'),
(3,3,'333.333.333-33'),(3,7,'444.444.444-44'),
(4,4,'333.333.333-33'),(4,8,'444.444.444-44'),
(5,9,'555.555.555-55'),(5,10,'555.555.555-55'),
(6,11,'666.666.666-66'),(6,12,'666.666.666-66'),
(7,13,'777.777.777-77'),(7,14,'777.777.777-77'),
(8,15,'888.888.888-88'),(8,16,'888.888.888-88'),
(9,17,'999.999.999-99'),(9,18,'999.999.999-99'),
(10,19,'000.000.000-00'),(10,20,'000.000.000-00');
