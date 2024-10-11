CREATE VIEW total_professores_especialidade AS
SELECT especialidade,
    COUNT(id_professor) AS total_professores
FROM professor
GROUP BY especialidade;

