CREATE VIEW professores_sem_turmas AS
SELECT 
    professor.nome AS professor
FROM professor
LEFT JOIN disciplina ON professor.id_professor = disciplina.id_disciplina
LEFT JOIN turma ON disciplina.id_disciplina = turma.id_disciplina
WHERE turma.id_turma IS NULL;