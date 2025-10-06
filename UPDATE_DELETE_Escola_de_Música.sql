-- ======================================================
-- SCRIPT: UPDATES_DELETES_Escola_de_Musica_Simples.sql
-- Banco: Escola_de_musica
-- Descrição: 20 operações de UPDATE e DELETE simples, sem erros
-- ======================================================

USE Escola_de_musica;

-- ======================
-- UPDATES
-- ======================

-- 1. Atualizar nome de uma orquestra
UPDATE Orquestras
SET nome = 'Orquestra Sinfônica de Pernambuco'
WHERE id_orquestra = 1;

-- 2. Atualizar nome de outra orquestra
UPDATE Orquestras
SET nome = 'Orquestra Jovem do Recife'
WHERE id_orquestra = 2;

-- 3. Atualizar bairro de um endereço
UPDATE Endereco
SET bairro = 'Boa Viagem'
WHERE id_endereco = 1;

-- 4. Atualizar número de telefone
UPDATE Telefone
SET numero = '81999990001'
WHERE id_telefone = 1;

-- 5. Atualizar cidade de endereço
UPDATE Endereco
SET cidade = 'Olinda'
WHERE id_endereco = 6;

-- 6. Corrigir nome de músico
UPDATE Musicos
SET nome = 'Lucas Pereira da Silva'
WHERE cpf = '111.111.111-11';

-- 7. Alterar nacionalidade de músico
UPDATE Musicos
SET nacionalidade = 'Brasileira'
WHERE cpf = '333.333.333-33';

-- 8. Alterar tipo de instrumento
UPDATE Instrumentos
SET tipo = 'Cordas (arco)'
WHERE id_instrumento = 1;

-- 9. Alterar nome de instrumento
UPDATE Instrumentos
SET nome = 'Violoncelo Barroco'
WHERE id_instrumento = 3;

-- 10. Atualizar compositor de uma sinfonia
UPDATE Sinfonia
SET compositor = 'Heitor Villa-Lobos'
WHERE id_sinfonia = 1;

-- ======================
-- DELETES SIMPLES
-- ======================

-- 11. Deletar músico específico
DELETE FROM Musicos
WHERE cpf = '111.111.111-11';

-- 12. Deletar outro músico específico
DELETE FROM Musicos
WHERE cpf = '222.222.222-22';

-- 13. Deletar instrumento específico
DELETE FROM Instrumentos
WHERE id_instrumento = 13;

-- 14. Deletar outro instrumento específico
DELETE FROM Instrumentos
WHERE id_instrumento = 14;

-- 15. Deletar sinfonia específica
DELETE FROM Sinfonia
WHERE id_sinfonia = 18;

-- 16. Deletar outra sinfonia específica
DELETE FROM Sinfonia
WHERE id_sinfonia = 19;

-- 17. Deletar orquestra específica
DELETE FROM Orquestras
WHERE id_orquestra = 16;

-- 18. Deletar outra orquestra específica
DELETE FROM Orquestras
WHERE id_orquestra = 17;

-- 19. Deletar telefone específico
DELETE FROM Telefone
WHERE id_telefone = 20;

-- 20. Deletar outro telefone específico
DELETE FROM Telefone
WHERE id_telefone = 19;
