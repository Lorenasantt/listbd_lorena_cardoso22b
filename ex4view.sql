CREATE VIEW view_professores_turmas AS
SELECT 
    professor.nome AS professor,
    disciplina.nome AS disciplina,
    turma.horario AS horario
FROM professor
INNER JOIN disciplina ON professor.id_professor = disciplina.id_disciplina
INNER JOIN turma ON disciplina.id_diSciplina = turma.id_disciplina;

SELECT *
FROM view_professores_turmas;