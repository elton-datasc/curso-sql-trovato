
select * from dbo.Turmas;

select Turmas.* from Turmas;

SELECT id_turma, id_curso FROM dbo.Turmas;


SELECT * FROM dbo.Turmas T;

select T.id_turma,T.id_curso,t.data_inicio 
	from dbo.Turmas T;

select * from dbo.Cursos;

SELECT C.data_cadastro, C.nome_curso
	FROM dbo.Cursos C;


-- Nomes personalizados para nossos cursos

Select T.id_curso AS IDC,T.id_turma AS IDT,T.data_inicio AS "data comeco"
	FROM dbo.Turmas T;

--Segunda forma

Select T.id_curso IDC,T.id_turma IDT,T.data_inicio "data comeco"
	FROM dbo.Turmas T;


--TESTE
SELECT A.id_aluno IDA, A.nome NOME_ALUNO 
	FROM dbo.Alunos A;


Select * from Alunos;


INSERT TABLE Alunos(


