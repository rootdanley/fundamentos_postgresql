CREATE VIEW vw_alunos_por_curso AS SELECT curso.nome,
  		 COUNT(aluno_curso.aluno_id) numero_alunos
    FROM curso
	JOIN aluno_curso ON aluno_curso.curso_id = curso.id
GROUP BY 1
ORDER BY numero_alunos DESC
   LIMIT 10;
SELECT curso.nome, count(aluno);