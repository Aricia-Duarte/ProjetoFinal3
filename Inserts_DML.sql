use Resilia1;

Insert Into Departamentos (nome_Depto, descricao_Depto) values
('Financeiro','Departamento Financeiro'),
('Marketing','Departamento de Marketing'),
('Facilitacao','Departamento de Facilitacao'),
('Comercial','Departamento Comercial'),
('RH','Departamento de Recursos Humanos'),
('Relacionamento com Aluno','Departamento de Relacionamento com Alunos'),
('Administrativo', 'Departamento de Gerenciamento'),
('Tesouraria', 'Departamento de Tesouraria'),
('Compras', 'Departamento de Compras'),
('TI', 'Departamento de TI')
;
Insert Into Cursos(nome_Curso, descricao_Curso) values
('Analista de Sistemas', 'Curso desenvolvido para o grupo Renner - Turma 2022'),
('WebDev', 'Curso WebDev - Resilia'),
('DatAnalitcs','Curso de Analise de Dados - Resilia'),
('FullStack','Curso de FullStack - Resilia'),
('Programação Front End', 'Curso Html-CSS-js'),
('Programação Back End', 'Curso API E Node'),
('Banco de Dados', 'Curso banco de dados relacionais e não relacionais'),
('React', 'Curso React'),
('Métodos Ágeis', 'Curso de Metodos Ágeis'),
('Analista de Sistemas', 'Curso Analista de Sistemas - Resilia'); -- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

Insert Into Cargos (nome_Cargo, id_Depto) values
('Analista',6),
('Facilitador',3),
('Gerente',5),
('Assistente', 9),
('Líder', 1),
('Auxiliar', 8),
('Coordenador', 2),
('Diretor', 4),
('CEO', 7),
('Técnico', 10)
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
('Tais','405.060.910-07','Av.Joao','120, casa', '91060-100','Navengantes','SC','2019-01-05',3),
('Leo','811.354.570-00','Rua. Saberes','100, apto 10', '91050-100','Porto Alegre','RS','2020-03-01',3),
('Vic','638.161.410-21','Trav. Maria','105, BL 3', '06160-003','Osasco','SP','2021-12-10',1),
('Day', '555.395.150-05','Alameda Sonhar','120', '21060-100','Rio de Janeiro','RJ','2021-09-10',6),
('Yas','917.926.070-59','Rod. BR 050','13, Cond. Rosa Flor, Cs 20', '41010-025','Curitiba','PR','2019-04-25',2),
('Fer', '035.656.626-73', 'Rua Marinho', '340','Bela Vista', '60841-154', 'Brasilia', 'DF', '2019-09-19',7),
('Luth', '022.522.741-88', 'Av. Brigadeiro Pampulha', '321', '65221-195','Niterói', 'RJ', '2022-03-07',3),
('Carol', '665.520.741-99','Rua das Begónias', '100','68844-840', 'São Paulo', 'SP', '2020-07-13',9),
('Jes', '014.456.366-85', 'Av dos Passaros', '520', '62005-350', 'Salvador', 'BA', '2020-09-05', '10'),
('Clarice', '321.412.980-99','Rua da Saudade', '220' '62155-80', 'Fortaleza', 'CE', '2018-08-06', '4')
;
Insert Into Alunos(nome_Aluno, cpf_Aluno, endereco_Aluno, numero_End_Aluno, cep_Aluno, cidade_Aluno, estado_Aluno,data_Cad_Aluno) values
('Aricia', '94932477082','Av.Maricota','75, apto 3 torre 50', '91050-100','Porto Alegre','RS','2022-01-01'),
('Mateus', '11238612008','Bc.Joao','5, casa', '90100-030','Porto Alegre','RS','2022-03-10'),
('Erica', '44843991058','Rua dos Sonhos','13, apto 03, bl C, Torre A', '93020-120','Porto Alegre','RS','2022-03-03'),
('Valeria', '21928945031','Trav. Americana','55', '06010-200','Sao Paulo','SP','2020-05-05'),
('Alana', '78352302086','Alameda Passarinho','120, casa 05', '13060-100','Florianopolis','SC','2021-10-20'),
('Thiago', '98563214590','Rua Benjamin Constant','45', '06010-210','Sao Paulo','SP','2020-05-05'),
('Tatiane', '82977249648','Rua F','947, apto 501, bloco b', '68903-117','Macapá','AP','2020-05-05'),
('Victor', '74589632100','Rua Voluntarios da Patria','100, apto 2', '86450-200','Londrina','PR','2020-05-05'),
('Marcela', '44504634120','Rua Galo da Serra','745', '87310-145','Campo Mourão','PR','2020-05-05'),
('Elias', '57405924450','Rua 243','397', '74655-380','Goiânia','GO','2020-05-05'),
('Raimunda', '99876463446','Rua Paulo Zimmermann','723', '88161-850','Biguaçu','SC','2020-05-05'),
('Caio', '12547896310','Rua Dom Pedro I','140', '86185-450','Cambé','PR','2021-10-20');
-- Insert Into Cadastro_Alunos(nome_Aluno, cpf_Aluno, id_Curso, id_Grupo) values

Insert Into Turmas (nome_Turma, data_inicio, data_fim, id_Colaborador,id_Aluno,id_Modulo) values
('Startech','2022-07-13','2022-11-13',1,1,7),
('Startech','2022-07-13','2022-11-13',2,2,7),
('Startech','2022-07-13','2022-11-13',1,3,7),
('Startech','2022-07-13','2022-11-13',2,4,7),
('Turma Coragem','2021-10-13','2022-03-13',3,5,2),
('Turma Coragem','2021-10-13','2022-03-13',4,6,2),
('Turma Valores','2020-05-20','2020-10-20',3,7,3),
('Turma Valores','2020-05-20','2020-10-20',4,8,3),
('Turma Destaque','2022-01-20','2022-06-20',5,9,1),
('Turma Destaque','2022-01-20','2022-06-20',6,10,1);

Insert Into Desempenho (classificacao_Desempenho,id_Aluno,id_Turma) values
('Superou',1,1),
('Pronto', 2,2),
('Chegando lá',3,3),
('Mais que pronto',4,1),
('Superou',5,2),
('Superou',6,3),
('Mais que pronto',7,1),
('Pronto',8,2),
('Pronto',9,3),
('Chegando lá',10,1);