CREATE VIEW disciplinas_sem_alunos AS
SELECT 
    disciplina.nome AS disciplina
FROM disciplina
LEFT JOIN matricula ON disciplina.id_disciplina = matricula.id_disciplina
WHERE matricula.id_aluno IS NULL;

SELECT *
FROM disciplinas_sem_alunos;