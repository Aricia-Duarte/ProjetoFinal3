create database if not exists Resilia1;
use resilia1;

CREATE TABLE IF NOT EXISTS Departamentos (
    id_Depto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_Depto VARCHAR(64) NOT NULL,
    descricao_Depto VARCHAR(64)
);-- Por setor: Ex. RH; MKT;FACILITADORES; MENTORES; ETC..

CREATE TABLE IF NOT EXISTS Cursos (
    id_Curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_Curso VARCHAR(64) NOT NULL,
    descricao_Curso VARCHAR(64)
);-- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

CREATE TABLE IF NOT EXISTS Cargos (
    id_Cargo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_Cargo VARCHAR(64) NOT NULL,
    id_Depto INT,
    CONSTRAINT fk_id_Depto FOREIGN KEY (id_Depto)
        REFERENCES Departamentos (id_Depto)
        ON DELETE CASCADE
);-- Por setor: Ex. RH; MKT;FACILITADORES; MENTORES; ETC..


CREATE TABLE IF NOT EXISTS Modulos (
    id_Modulo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    modulo INT NOT NULL,
    id_Curso INT NOT NULL,
    CONSTRAINT fk_id_Curso FOREIGN KEY (id_Curso)
        REFERENCES Cursos (id_Curso)
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Colaboradores (
    id_Colaborador INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_Colaborador VARCHAR(64) NOT NULL,
    cpf_Colaborador VARCHAR(64),
    endereco_Colaborador VARCHAR(150),
    Numero_End_Colaborador VARCHAR(64),
    cep_Colaborador VARCHAR(10),
    cidade_Colaborador VARCHAR(64),
    estado_Colaborador VARCHAR(32),
    data_contratacao DATE,
    id_Depto INT,
    CONSTRAINT fk_id_Dpto FOREIGN KEY (id_Depto)
        REFERENCES Departamentos (id_Depto)
        ON DELETE CASCADE
);-- Por Colaborador

CREATE TABLE IF NOT EXISTS Alunos (
    id_Aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_Aluno VARCHAR(64) NOT NULL,
    cpf_Aluno VARCHAR(64),
    endereco_Aluno VARCHAR(150),
    Numero_End_Aluno CHAR(64),
    cep_Aluno VARCHAR(10),
    cidade_Aluno VARCHAR(64),
    estado_Aluno VARCHAR(32),
    data_Cad_Aluno DATE
);-- Por setor: Ex. RH; MKT;FACILITADORES; MENTORES; ETC..

CREATE TABLE IF NOT EXISTS Turmas (
    id_Turma INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_Turma VARCHAR(64) NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    id_Colaborador INT,
    CONSTRAINT fk_Colaborador FOREIGN KEY (id_Colaborador)
        REFERENCES Colaboradores (id_Colaborador)
        ON DELETE CASCADE,
    id_Aluno INT,
    CONSTRAINT fk_Aluno FOREIGN KEY (id_Aluno)
        REFERENCES Alunos (id_Aluno)
        ON DELETE CASCADE,
    id_Modulo INT,
    CONSTRAINT fk_id_Modulo FOREIGN KEY (id_Modulo)
        REFERENCES Modulos (id_Modulo)
        ON DELETE CASCADE
);-- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

CREATE TABLE IF NOT EXISTS Desempenho (
    id_Desempenho INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    classificacao_Desempenho VARCHAR(64),
    id_Aluno INT,
    CONSTRAINT fk_id_Alun FOREIGN KEY (id_Aluno)
        REFERENCES Alunos (id_Aluno)
        ON DELETE CASCADE,
    id_Turma INT,
    CONSTRAINT fk_id_Turma FOREIGN KEY (id_Turma)
        REFERENCES Turmas (id_Turma)
        ON DELETE CASCADE
);-- Por tipo de Curso: Ex. Analista de Sistema - Renner; Analista de Sistemas; WebDev;

CREATE TABLE IF NOT EXISTS Historicos (
    id_Historico INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    data_operacao DATE,
    id_Aluno INT,
    CONSTRAINT fk_id_Alu FOREIGN KEY (id_Aluno)
        REFERENCES Alunos (id_Aluno)
        ON DELETE CASCADE,
    nome_novo VARCHAR(64),
    nome_velho VARCHAR(64),
    comando VARCHAR(64)
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
