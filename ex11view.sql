CREATE VIEW alunos_trancados AS
SELECT aluno.nome AS aluno
FROM aluno
JOIN matricula ON aluno.id_aluno = matricula.id_aluno
WHERE matricula.status = 'Trancado';

SELECT *
FROM alunos_trancados;