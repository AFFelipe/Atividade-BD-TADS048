USE Escola_de_musica;

-- 1️⃣ View: Lista de músicos e suas orquestras
CREATE OR REPLACE VIEW vw_musicos_orquestra AS
SELECT M.nome AS Musico, O.nome AS Orquestra
FROM Musicos M
JOIN Orquestras O ON M.id_orquestra = O.id_orquestra;

-- 2️⃣ View: Endereços completos das orquestras
CREATE OR REPLACE VIEW vw_endereco_completo AS
SELECT O.nome AS Orquestra,
       CONCAT(E.rua, ', ', E.numero, ', ', E.bairro, ', ', E.cidade, '-', E.uf) AS EnderecoCompleto
FROM Orquestras O
JOIN Endereco E ON O.id_orquestra = E.id_orquestra;

-- 3️⃣ View: Instrumentos que cada músico toca
CREATE OR REPLACE VIEW vw_instrumentos_por_musico AS
SELECT M.nome AS Musico, I.nome AS Instrumento
FROM Musicos M
JOIN Apto_a_Tocar A ON M.cpf = A.cpf_musico
JOIN Instrumentos I ON A.id_instrumento = I.id_instrumento;

-- 4️⃣ View: Sinfonias e suas respectivas orquestras
CREATE OR REPLACE VIEW vw_sinfonias_orquestra AS
SELECT S.nome AS Sinfonia, O.nome AS Orquestra, S.compositor, S.data_criacao
FROM Sinfonia S
JOIN Orquestras O ON S.id_orquestra = O.id_orquestra;

-- 5️⃣ View: Contagem de músicos por orquestra
CREATE OR REPLACE VIEW vw_qtde_musicos_orquestra AS
SELECT O.nome AS Orquestra, COUNT(M.cpf) AS TotalMusicos
FROM Orquestras O
LEFT JOIN Musicos M ON O.id_orquestra = M.id_orquestra
GROUP BY O.nome;

-- 6️⃣ View: Todas as sinfonias com informações completas
CREATE OR REPLACE VIEW vw_sinfonias_completas AS
SELECT S.nome AS Sinfonia, S.compositor, S.data_criacao, O.nome AS Orquestra
FROM Sinfonia S
JOIN Orquestras O ON S.id_orquestra = O.id_orquestra;

-- 7️⃣ View: Instrumentos mais utilizados
CREATE OR REPLACE VIEW vw_instrumentos_mais_usados AS
SELECT I.nome AS Instrumento, COUNT(*) AS TotalUso
FROM Apto_a_Tocar A
JOIN Instrumentos I ON A.id_instrumento = I.id_instrumento
GROUP BY I.nome
ORDER BY TotalUso DESC;

-- 8️⃣ View: Músicos que ainda não tocam nenhum instrumento
CREATE OR REPLACE VIEW vw_musicos_sem_instrumento AS
SELECT M.nome AS Musico
FROM Musicos M
LEFT JOIN Apto_a_Tocar A ON M.cpf = A.cpf_musico
WHERE A.id_instrumento IS NULL;

-- 9️⃣ View: Orquestras com mais de 1 sinfonia
CREATE OR REPLACE VIEW vw_orquestras_multissinfonia AS
SELECT O.nome AS Orquestra, COUNT(S.id_sinfonia) AS QtdeSinfonias
FROM Orquestras O
JOIN Sinfonia S ON O.id_orquestra = S.id_orquestra
GROUP BY O.nome
HAVING QtdeSinfonias > 1;

-- 🔟 View: Relação músico / sinfonia / instrumento
CREATE OR REPLACE VIEW vw_musicos_sinfonia_instrumento AS
SELECT M.nome AS Musico, S.nome AS Sinfonia, I.nome AS Instrumento
FROM Sinfonia_has_Instrumentos SI
JOIN Musicos M ON SI.cpf_musico = M.cpf
JOIN Sinfonia S ON SI.id_sinfonia = S.id_sinfonia
JOIN Instrumentos I ON SI.id_instrumento = I.id_instrumento;
