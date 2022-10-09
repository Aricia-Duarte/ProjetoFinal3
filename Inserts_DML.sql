use Resilia1;

Insert Into Departamentos (nome_Depto, descricao_Depto) values
('Financeiro','Departamento Financeiro'),
('Marketing','Departamento de Marketing'),
('Facilitacao','Departamento de Facilitacao'),
('Comercial','Departamento Comercial'),
('RH','Departamento de Recursos Humanos'),
('Relacionamento com Aluno','Departamento de Relacionamento com Alunos')
;
Insert Into Cursos(nome_Curso, descricao_Curso) values
('Analista de Sistemas', 'Curso desenvolvido para o grupo Renner - Turma 2022'),
('WebDev', 'Curso WebDev - Resilia'),
('DatAnalitcs','Curso de Analise de Dados - Resilia'),
('FullStack','Curso de FullStack - Resilia'),
('Analista de Sistemas', 'Curso Analista de Sistemas - Resilia'); -- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

Insert Into Cargos (nome_Cargo, id_Depto) values
('Analista',6),
('Facilitador',3),
('Gerente',5)
;

Insert Into Modulos(modulo, id_Curso) values
(1,1),
(2,1),
(3,1),
(4,1),
(1,2),
(2,2),
(1,5),
(2,5),
(3,5),
(4,5)
;
Insert Into Colaboradores(nome_Colaborador, cpf_Colaborador, endereco_Colaborador, numero_End_Colaborador, cep_Colaborador, cidade_Colaborador, estado_Colaborador, data_Contratacao, id_Depto) values
('Tais','40506091007','Av.Joao','120, casa', '91060100','Navengantes','SC','2019-01-05',3),
('Leo','811.354.570-00','Rua. Saberes','100, apto 10', '91050-100','Porto Alegre','RS','2020-03-01',3),
('Vic','638.161.410-21','Trav. Maria','105, BL 3', '06160-003','Osasco','SP','2021-12-10',1),
('Day', '555.395.150-05','Alameda Sonhar','120', '21060-100','Rio de Janeiro','RJ','2021-09-10',6),
('Yas','917.926.070-59','Rod. BR 050','13, Cond. Rosa Flor, Cs 20', '41010-025','Curitiba','PR','2019-04-25',2)
;
Insert Into Alunos(nome_Aluno, cpf_Aluno, endereco_Aluno, numero_End_Aluno, cep_Aluno, cidade_Aluno, estado_Aluno,data_Cad_Aluno) values
('Aricia', '94932477082','Av.Maricota','75, apto 3 torre 50', '91050-100','Porto Alegre','RS','2022-01-01'),
('Mateus', '11238612008','Bc.Joao','5, casa', '90100-030','Porto Alegre','RS','2022-03-10'),
('Erica', '44843991058','Rua dos Sonhos','13, apto 03, bl C, Torre A', '93020-120','Porto Alegre','RS','2022-03-03'),
('Valeria', '21928945031','Trav. Americana','55', '06010-200','Sao Paulo','SP','2020-05-05'),
('Alana', '78352302086','Alameda Passarinho','120, casa 05', '13060-100','Florianopolis','SC','2021-10-20');
-- Insert Into Cadastro_Alunos(nome_Aluno, cpf_Aluno, id_Curso, id_Grupo) values

Insert Into Turmas (nome_Turma, data_inicio, data_fim, id_Colaborador,id_Aluno,id_Modulo) values
('Startech','2022-07-13','2022-11-13',1,1,7),
('Startech','2022-07-13','2022-11-13',2,1,7),
('Startech','2022-07-13','2022-11-13',1,2,7),
('Startech','2022-07-13','2022-11-13',2,2,7),
('Turma Coragem','2021-10-13','2022-03-13',1,3,2),
('Turma Coragem','2021-10-13','2022-03-13',2,3,2),
('Turma Valores','2020-05-20','2020-10-20',5,4,3),
('Turma Valores','2020-05-20','2020-10-20',5,4,3);

Insert Into Desempenho (classificacao_Desempenho,id_Aluno,id_Turma) values
('Superou',1,1),
('Superou', 1,2),
('Superou',2,1),
('Superou',2,2);