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