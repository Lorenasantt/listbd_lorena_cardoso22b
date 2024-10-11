CREATE VIEW turmas_semestre AS
SELECT 
    turma.id_turma AS turma_id,
    disciplina.nome AS disciplina,
    turma.horario,
    turma.semestre
FROM 
    turma
INNER JOIN disciplina ON turma.id_disciplina = disciplina.id_disciplina
WHERE turma.semestre = '2024.1';

SELECT *
FROM turmas_semestre;