CREATE VIEW disciplinas_curso AS
SELECT 
    curso.nome AS curso,
    COUNT(disciplina.id_disciplina) AS total_disciplinas,
    SUM(curso.carga_horaria) AS carga_horaria_total
FROM curso
INNER JOIN disciplina ON curso.id_curso = disciplina.id_curso
GROUP BY curso.nome;

SELECT *
FROM disciplinas_curso;