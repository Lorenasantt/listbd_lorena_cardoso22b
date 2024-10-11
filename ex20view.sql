CREATE VIEW Total_disciplinas_professor AS
SELECT 
    professor.nome AS professor,
    COUNT(disciplina.id_disciplina) AS total_disciplinas
FROM professor
INNER JOIN disciplina ON professor.id_professor = disciplina.id_disciplina
GROUP BY professor.nome;