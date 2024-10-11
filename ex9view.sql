CREATE VIEW alunos_dsciplina_concluidas AS
SELECT 
    aluno.nome AS aluno,
    COUNT(matricula.id_disciplina) AS disciplina_concluida
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
WHERE matricula.status = 'Concluído'
GROUP BY aluno.nome;

SELECT *
FROM alunos_dsciplina_concluidas;