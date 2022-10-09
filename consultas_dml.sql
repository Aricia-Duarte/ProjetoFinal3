use resilia1;
-- Selecionar a quantidade total de estudantes cadastrados no banco;
select count(id_Aluno) as total
from alunos;

-- Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;
select alunos.nome_Aluno as Aluno, cursos.nome_Curso as Curso 
from alunos
inner join cursos on alunos.id_Aluno=cursos.id_Curso
;

-- Selecionar quais pessoas facilitadoras atuam em mais de uma turma.
select count(id_Turma) as Total, colaboradores.nome_Colaborador
from turmas
inner join colaboradores on colaboradores.id_Colaborador=turmas.id_Colaborador
group by nome_Turma
having total >=2;


-- Qual foi a ultima atualização na tabela Historico
select *, MAX(data_operacao) from Historicos;


-- Quantas turmas tem atualmente na Resilia
Select count(id_Turma) as Total_de_Turmas from turmas;

-- Qual foi a ultima turma a iniciar um curso 
Select nome_Turma as Turma, max(data_inicio) as Data_de_iniciada from turmas;

-- A Aluna Aricia mudou seu nome para João, com isso o nome em seu cadastro foi alterado conforme solicitado,
-- mas para que o historico não seja perdido, foi acrescentado a informação no banco historicos
update Alunos set nome_Aluno = 'João' where id_Aluno = 1;

-- o Aluno Caio pediu para que seu registro fosse excluido dos cadastros da escola, considerando isso, foi realizado a exclusão
-- mantendo o historico do processo na tabela historicos;
delete from Alunos where id_Aluno = 12;



select * from Alunos;
select * from Turmas;
select * from historicos;
select * from desempenho;
