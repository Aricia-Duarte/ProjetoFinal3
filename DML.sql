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