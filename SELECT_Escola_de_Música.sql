USE Escola_de_musica;

-- 1️⃣ Lista de músicos e suas orquestras
SELECT M.nome AS Musico, O.nome AS Orquestra
FROM Musicos M
JOIN Orquestras O ON M.id_orquestra = O.id_orquestra;

-- 2️⃣ Endereço completo das orquestras
SELECT O.nome AS Orquestra,
       CONCAT(E.rua, ', ', E.numero, ', ', E.bairro, ', ', E.cidade, '-', E.uf) AS EnderecoCompleto
FROM Orquestras O
JOIN Endereco E ON O.id_orquestra = E.id_orquestra;

-- 3️⃣ Instrumentos que cada músico toca
SELECT M.nome AS Musico, I.nome AS Instrumento
FROM Musicos M
JOIN Apto_a_Tocar A ON M.cpf = A.cpf_musico
JOIN Instrumentos I ON A.id_instrumento = I.id_instrumento;

-- 4️⃣ Sinfonias e suas orquestras
SELECT S.nome AS Sinfonia, O.nome AS Orquestra, S.compositor
FROM Sinfonia S
JOIN Orquestras O ON S.id_orquestra = O.id_orquestra;

-- 5️⃣ Contagem de músicos por orquestra
SELECT O.nome AS Orquestra, COUNT(M.cpf) AS TotalMusicos
FROM Orquestras O
JOIN Musicos M ON O.id_orquestra = M.id_orquestra
GROUP BY O.nome;

-- 6️⃣ Orquestras com mais de 1 sinfonia
SELECT O.nome AS Orquestra, COUNT(S.id_sinfonia) AS QtdeSinfonias
FROM Orquestras O
JOIN Sinfonia S ON O.id_orquestra = S.id_orquestra
GROUP BY O.nome
HAVING COUNT(S.id_sinfonia) > 1;

-- 7️⃣ Instrumentos mais tocados
SELECT I.nome AS Instrumento, COUNT(A.cpf_musico) AS TotalTocados
FROM Instrumentos I
JOIN Apto_a_Tocar A ON I.id_instrumento = A.id_instrumento
GROUP BY I.nome
ORDER BY TotalTocados DESC;

-- 8️⃣ Músicos que tocam mais de 1 instrumento
SELECT M.nome AS Musico, COUNT(A.id_instrumento) AS TotalInstrumentos
FROM Musicos M
JOIN Apto_a_Tocar A ON M.cpf = A.cpf_musico
GROUP BY M.nome
HAVING COUNT(A.id_instrumento) > 1;

-- 9️⃣ Sinfonias de uma orquestra específica (id_orquestra = 1)
SELECT S.nome AS Sinfonia, S.compositor
FROM Sinfonia S
WHERE S.id_orquestra = 1;

-- 🔟 Relação músico / sinfonia / instrumento
SELECT M.nome AS Musico, S.nome AS Sinfonia, I.nome AS Instrumento
FROM Sinfonia_has_Instrumentos SI
JOIN Musicos M ON SI.cpf_musico = M.cpf
JOIN Sinfonia S ON SI.id_sinfonia = S.id_sinfonia
JOIN Instrumentos I ON SI.id_instrumento = I.id_instrumento;

-- 11️⃣ Músicos e o total de sinfonias que participam
SELECT M.nome AS Musico, COUNT(SI.id_sinfonia) AS TotalSinfonias
FROM Musicos M
JOIN Sinfonia_has_Instrumentos SI ON M.cpf = SI.cpf_musico
GROUP BY M.nome;

-- 12️⃣ Sinfonias com número de instrumentos diferentes
SELECT S.nome AS Sinfonia, COUNT(DISTINCT SI.id_instrumento) AS TotalInstrumentos
FROM Sinfonia S
JOIN Sinfonia_has_Instrumentos SI ON S.id_sinfonia = SI.id_sinfonia
GROUP BY S.nome;

-- 13️⃣ Orquestras com músicos e instrumentos detalhados
SELECT O.nome AS Orquestra, M.nome AS Musico, I.nome AS Instrumento
FROM Orquestras O
JOIN Musicos M ON O.id_orquestra = M.id_orquestra
JOIN Apto_a_Tocar A ON M.cpf = A.cpf_musico
JOIN Instrumentos I ON A.id_instrumento = I.id_instrumento;

-- 14️⃣ Músicos nas sinfonias de uma orquestra específica (id_orquestra = 2)
SELECT M.nome AS Musico, S.nome AS Sinfonia
FROM Musicos M
JOIN Sinfonia_has_Instrumentos SI ON M.cpf = SI.cpf_musico
JOIN Sinfonia S ON SI.id_sinfonia = S.id_sinfonia
WHERE S.id_orquestra = 2;

-- 15️⃣ Instrumentos não utilizados por nenhum músico (nenhum neste caso, mas join garante lista completa)
SELECT I.nome AS Instrumento
FROM Instrumentos I
LEFT JOIN Apto_a_Tocar A ON I.id_instrumento = A.id_instrumento
WHERE A.cpf_musico IS NULL;

-- 16️⃣ Telefone de cada orquestra
SELECT O.nome AS Orquestra, T.numero AS Telefone
FROM Orquestras O
JOIN Telefone T ON O.id_orquestra = T.id_orquestra;

-- 17️⃣ Endereços agrupados por cidade
SELECT E.cidade, COUNT(E.id_endereco) AS TotalOrquestras
FROM Endereco E
GROUP BY E.cidade;

-- 18️⃣ Músicos por faixa etária (>30 anos)
SELECT M.nome, M.data_nasc, TIMESTAMPDIFF(YEAR, M.data_nasc, CURDATE()) AS Idade
FROM Musicos M
WHERE TIMESTAMPDIFF(YEAR, M.data_nasc, CURDATE()) > 30;

-- 19️⃣ Sinfonias de compositores específicos (ex: Villa-Lobos)
SELECT S.nome AS Sinfonia, S.compositor, O.nome AS Orquestra
FROM Sinfonia S
JOIN Orquestras O ON S.id_orquestra = O.id_orquestra
WHERE S.compositor LIKE '%Villa-Lobos%';

-- 20️⃣ Contagem de músicos por instrumento
SELECT I.nome AS Instrumento, COUNT(A.cpf_musico) AS TotalMusicos
FROM Instrumentos I
JOIN Apto_a_Tocar A ON I.id_instrumento = A.id_instrumento
GROUP BY I.nome
ORDER BY TotalMusicos DESC;
