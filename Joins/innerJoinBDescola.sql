USE bdEscola2

--Marcus-Prof Aline
--1)Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;

SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno 
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso= tbCurso.codCurso

--Eduarda
--2) Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT nomeCurso FROM tbCurso
	INNER JOIN tbMatricula  (codAluno) tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso


--Marcus
--3)Apresentar a quantidade de alunos matriculados por nome da turma;

