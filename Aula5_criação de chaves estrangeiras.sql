CREATE DATABASE SQL_DB1;


CREATE TABLE Alunos
(
	id_aluno int PRIMARY KEY NOT NULL,
	nome VARCHAR(200) NOT NULL,
	data_nascimento date NOT NULL,
	sexo VARCHAR(1) NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NOT NULL,

);

ALTER TABLE Alunos
		ADD CONSTRAINT fk_Turmas FOREIGN KEY (id_aluno) REFERENCES Turmas(id_aluno);


CREATE TABLE Situacao
(
	id_situacao int PRIMARY KEY NOT NULL,
	situacao varchar(25) NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro VARCHAR(15)

);

CREATE TABLE Cursos
(
	id_curso int PRIMARY KEY NOT NULL,
	nome_curso VARCHAR(200) NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro VARCHAR(15) NOT NULL

);

CREATE TABLE Turmas

(
	id_turma int PRIMARY KEY NOT NULL,
	id_aluno int NOT NULL,
	id_curso int NOT NULL,
	valor_turma numeric(15,2) NOT NULL,
	desconto numeric(3,2) NOT NULL,
	data_inicio date NOT NULL,
	date_termino date,
	data_cadastro datetime NOT NULL,
	login_cadastro VARCHAR(15)

);

ALTER TABLE Turmas
		ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Turmas
		ADD CONSTRAINT fk_Cursos FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);


	

CREATE TABLE Registro_Presenca

(
	id_turma int NOT NULL,
	id_aluno int NOT NULL,
	id_situacao int NOT NULL,
	data_presenca date NOT NULL,
	data_cadastro date NOT NULL,
	login_cadastro VARCHAR(15) NOT NULL

);

ALTER TABLE Registro_Presenca
		ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);

ALTER TABLE Registro_Presenca
		ADD CONSTRAINT fk_AlunoRP FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Registro_Presenca
		ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);


-- apagar uma CONSTRAINT:

--ALTER TABLE tab
		--DROP CONSTRAINT fk_chave;






