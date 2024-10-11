CREATE VIEW alunos_multidisciplinas AS
SELECT 
    aluno.nome AS aluno
FROM aluno
JOIN matricula ON aluno.id_aluno = matricula.id_aluno
GROUP BY aluno.nome
HAVING 
    COUNT(matricula.id_disciplina) > 1;
    
    SELECT*
    FROM alunos_multidisciplinas;