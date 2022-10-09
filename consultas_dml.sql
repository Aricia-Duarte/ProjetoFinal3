use resilia1;

-- Selecionar a quantidade total de estudantes cadastrados no banco;
SELECT 
    COUNT(id_Aluno) AS total
FROM
    alunos;

-- Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;
SELECT 
    alunos.nome_Aluno AS Aluno, cursos.nome_Curso AS Curso
FROM
    alunos
        INNER JOIN
    cursos ON alunos.id_Aluno = cursos.id_Curso;

-- Selecionar quais pessoas facilitadoras atuam em mais de uma turma.
SELECT 
    COUNT(id_Turma) AS Total, colaboradores.nome_Colaborador
FROM
    turmas
        INNER JOIN
    colaboradores ON colaboradores.id_Colaborador = turmas.id_Colaborador
GROUP BY nome_Turma
HAVING total >= 2;


-- Qual foi a ultima atualização na tabela Historico
SELECT 
    *, MAX(data_operacao)
FROM
    Historicos;


-- Quantas turmas tem atualmente na Resilia
SELECT 
    COUNT(id_Turma) AS Total_de_Turmas
FROM
    turmas;

-- Qual foi a ultima turma a iniciar um curso 
SELECT 
	nome_Turma AS Turma, MAX(data_inicio) AS Data_de_iniciada 
FROM 
	turmas;

-- A Aluna Aricia mudou seu nome para João, com isso o nome em seu cadastro foi alterado conforme solicitado,
-- mas para que o historico não seja perdido, foi acrescentado a informação no banco historicos
UPDATE Alunos 
SET 
    nome_Aluno = 'João'
WHERE
    id_Aluno = 1;

-- o Aluno Caio pediu para que seu registro fosse excluido dos cadastros da escola, considerando isso, foi realizado a exclusão
-- mantendo o historico do processo na tabela historicos;
DELETE FROM Alunos 
WHERE
    id_Aluno = 12;

-- Consultas básicas para acompanhamento das consultas acimas 

-- Consulta tudo da tabela Alunos
SELECT 
    *
FROM
    Alunos;
    
-- Consulta tudo da tabela Turmas
SELECT 
    *
FROM
    Turmas;
   
 -- -- Consulta tudo da tabela Historicos   
SELECT 
    *
FROM
    Historicos;
   
   --
    
SELECT 
    *
FROM
    desempenho;
