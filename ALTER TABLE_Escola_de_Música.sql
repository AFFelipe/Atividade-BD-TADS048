-- 1. Adicionar coluna de email à tabela Musicos
ALTER TABLE Musicos ADD COLUMN email VARCHAR(50) AFTER nome;

-- 2. Alterar tamanho da coluna nome na tabela Orquestras
ALTER TABLE Orquestras MODIFY COLUMN nome VARCHAR(100);

-- 3. Adicionar coluna de gênero musical na tabela Orquestras
ALTER TABLE Orquestras ADD COLUMN genero VARCHAR(45) AFTER dataDeCriacao;

-- 4. Adicionar índice na tabela Sinfonia para compositor
CREATE INDEX idx_compositor ON Sinfonia(compositor);

-- 5. Alterar coluna nacionalidade para 50 caracteres
ALTER TABLE Musicos MODIFY COLUMN nacionalidade VARCHAR(50);

-- 6. Adicionar coluna telefone secundário na tabela Telefone
ALTER TABLE Telefone ADD COLUMN numeroSecundario VARCHAR(15) AFTER numero;

-- 7. Adicionar coluna observacao na tabela Instrumentos
ALTER TABLE Instrumentos ADD COLUMN observacao VARCHAR(100) NULL;

-- 8. Alterar tipo de coluna UF para VARCHAR(2)
ALTER TABLE Endereco MODIFY COLUMN UF VARCHAR(2);

-- 9. Adicionar coluna duração na tabela Sinfonia
ALTER TABLE Sinfonia ADD COLUMN duracao INT AFTER dataDeCriacao;

-- 10. Adicionar coluna status ativo na tabela Orquestras
ALTER TABLE Orquestras ADD COLUMN ativo BOOLEAN DEFAULT TRUE;
