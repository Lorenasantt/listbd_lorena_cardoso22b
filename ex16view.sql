CREATE VIEW alunos_ultimas_matriculas AS
SELECT 
    aluno.nome AS aluno,
    MAX(matricula.data_matricula) AS ultima_matricula
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno
GROUP BY aluno.nome;