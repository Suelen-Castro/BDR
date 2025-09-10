-- ==========================================
-- DROP DAS TABELAS
-- ==========================================
DROP TABLE IF EXISTS notas CASCADE;
DROP TABLE IF EXISTS alunos CASCADE;
DROP TABLE IF EXISTS cursos CASCADE;

-- ==========================================
-- CRIAÇÃO DAS TABELAS
-- ==========================================

-- Tabela de Cursos
CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de Alunos
CREATE TABLE alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    id_curso INT REFERENCES cursos(id_curso)
);

-- Tabela de Notas
CREATE TABLE notas (
    id_nota INT PRIMARY KEY,
    disciplina VARCHAR(100) NOT NULL,
    nota FLOAT,
    id_aluno INT REFERENCES alunos(id_aluno)
);

-- ==========================================
-- INSERÇÃO DE DADOS
-- ==========================================

-- Inserindo Cursos
INSERT INTO cursos (nome) 
VALUES ('Engenharia');

INSERT INTO cursos (nome) 
VALUES ('Análise de Sistemas'), ('Computação'), ('Matemática');

-- Inserindo Alunos

INSERT INTO alunos (nome, idade, id_curso)
VALUES 
('Marina Lima', 16, 3),
('Maria Souza', 20, 3),
('Carlos Lima', 25, 4),
('Lucas Pereira', 18, NULL);

-- Inserindo Notas
INSERT INTO notas (id_nota, id_aluno, disciplina, nota)
VALUES 
(101, 1, 'Matemática', 8.5),
(102, 2, 'História', 9.0);

-- ==========================================
-- ATUALIZAÇÃO DE DADOS
-- ==========================================

UPDATE alunos 
SET idade = 16 
WHERE nome = 'João Silva';

UPDATE alunos 
SET idade = 17, id_curso = 1 
WHERE nome = 'Marina Lima';

-- ==========================================
-- CONSULTAS
-- ==========================================


-- INNER JOIN
SELECT a.nome, c.nome as curso
FROM alunos AS a
INNER JOIN cursos as c ON C.id_curso = a.id_curso;

-- LEFT JOIN
SELECT a.nome, c.nome as curso
FROM alunos AS a
LEFT JOIN cursos as c ON C.id_curso = a.id_curso;