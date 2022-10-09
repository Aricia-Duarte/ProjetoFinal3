create database if not exists Resilia1;
use resilia1;

create table if not exists Departamentos (
id_Depto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_Depto VARCHAR(64) NOT NULL,
descricao_Depto VARCHAR(64)
); -- Por setor: Ex. RH; MKT;FACILITADORES; MENTORES; ETC..

create table if not exists Cursos(
id_Curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_Curso VARCHAR(64) NOT NULL,
descricao_Curso VARCHAR(64)
); -- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

create table if not exists Cargos (
id_Cargo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_Cargo VARCHAR(64) NOT NULL,
id_Depto int, constraint fk_id_Depto foreign key (id_Depto) references Departamentos (id_Depto) on delete cascade
); -- Por setor: Ex. RH; MKT;FACILITADORES; MENTORES; ETC..


create table if not exists Modulos(
id_Modulo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
modulo int NOT NULL,
id_Curso int not null, 
constraint fk_id_Curso foreign key (id_Curso) references Cursos (id_Curso) on delete cascade
);

create table if not exists Colaboradores(
id_Colaborador INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_Colaborador VARCHAR(64) NOT NULL,
cpf_Colaborador VARCHAR(64),
endereco_Colaborador varchar (150),
Numero_End_Colaborador varchar(64),
cep_Colaborador varchar(10),
cidade_Colaborador varchar(64),
estado_Colaborador varchar(32),
data_contratacao date,
id_Depto int, constraint fk_id_Dpto foreign key (id_Depto) references Departamentos (id_Depto) on delete cascade
); -- Por Colaborador

create table if not exists Alunos(
id_Aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_Aluno VARCHAR(64) NOT NULL,
cpf_Aluno VARCHAR(64),
endereco_Aluno varchar (150),
Numero_End_Aluno char(64),
cep_Aluno varchar(10),
cidade_Aluno varchar(64),
estado_Aluno varchar(32),
data_Cad_Aluno date
); -- Por setor: Ex. RH; MKT;FACILITADORES; MENTORES; ETC..

create table if not exists Turmas(
id_Turma INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_Turma VARCHAR(64) NOT NULL,
data_inicio date,
data_fim date,
id_Colaborador INT, constraint fk_Colaborador foreign key (id_Colaborador) references Colaboradores (id_Colaborador) on delete cascade,
id_Aluno INT, constraint fk_Aluno foreign key (id_Aluno) references Alunos (id_Aluno) on delete cascade,
id_Modulo INT, constraint fk_id_Modulo foreign key (id_Modulo) references Modulos (id_Modulo) on delete cascade
); -- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

create table if not exists Desempenho(
id_Desempenho INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
classificacao_Desempenho varchar(64),
id_Aluno INT,constraint fk_id_Alun foreign key (id_Aluno) references Alunos (id_Aluno) on delete cascade,
id_Turma INT,constraint fk_id_Turma foreign key (id_Turma) references Turmas (id_Turma) on delete cascade
); -- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

Create table if not exists Historicos(
id_Historico int auto_increment not null primary key,
data_operacao date,
id_Aluno int, constraint fk_id_Alu foreign key (id_Aluno) references Alunos (id_Aluno) on delete cascade,
nome_novo varchar(64),
nome_velho varchar(64),
comando varchar(64)
);

-- drop trigger Cadastro;
DELIMITER //
CREATE TRIGGER Criar
after Insert ON Alunos
FOR EACH ROW
BEGIN
Insert into Historicos(data_operacao,nome_novo, comando) values (now(), new.nome_Aluno, 'Insert');
END //
delimiter ;

DELIMITER //
CREATE TRIGGER Alteracao
after update ON Alunos
FOR EACH ROW
BEGIN
Insert into Historicos(data_operacao, nome_novo, nome_velho, comando) values (now(), new.nome_Aluno, old.nome_Aluno, 'Update');
END //
delimiter ;

-- drop trigger Apagar;
DELIMITER //
CREATE TRIGGER Apagar
after delete ON Alunos
FOR EACH ROW
BEGIN
Insert into Historicos(data_operacao,nome_velho, comando) values (now(), old.nome_Aluno, 'Delete');
END //
delimiter ;
