-- ======================================================
-- SCRIPT: DROP_Escola_de_Musica.sql
-- Banco: Escola_de_musica
-- Descrição: Destrói todas as tabelas, views e dependências
-- ======================================================

USE Escola_de_musica;

-- ======================================================
-- 1. Exclusão das VIEWS (caso existam)
-- ======================================================
DROP VIEW IF EXISTS vw_musicos_orquestra;
DROP VIEW IF EXISTS vw_instrumentos_por_musico;
DROP VIEW IF EXISTS vw_sinfonias_orquestra;
DROP VIEW IF EXISTS vw_musicos_sinfonia;
DROP VIEW IF EXISTS vw_contato_orquestra;
DROP VIEW IF EXISTS vw_endereco_completo;
DROP VIEW IF EXISTS vw_instrumentos_mais_usados;
DROP VIEW IF EXISTS vw_musicos_ativos;
DROP VIEW IF EXISTS vw_orquestras_ativas;
DROP VIEW IF EXISTS vw_detalhes_sinfonia;

-- ======================================================
-- 2. Exclusão das tabelas filhas (dependentes)
-- ======================================================
DROP TABLE IF EXISTS Sinfonia_has_Instrumentos;
DROP TABLE IF EXISTS HabilidadeMusico;
DROP TABLE IF EXISTS Apto_a_Tocar; -- Caso ainda exista com o nome original
DROP TABLE IF EXISTS Telefone;
DROP TABLE IF EXISTS Endereco;
DROP TABLE IF EXISTS Sinfonia;

-- ======================================================
-- 3. Exclusão das tabelas principais
-- ======================================================
DROP TABLE IF EXISTS Musicos;
DROP TABLE IF EXISTS Instrumentos;
DROP TABLE IF EXISTS Orquestras;

-- ======================================================
-- 4. Exclusão do schema (opcional)
-- ======================================================
DROP DATABASE IF EXISTS Escola_de_musica;
