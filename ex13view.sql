CREATE VIEW alunos_status_quantidade AS
SELECT matricula.status AS status_matricula,
    COUNT(matricula.id_aluno) AS total_alunos
FROM matricula
GROUP BY matricula.status;

SELECT *
from alunos_status_quantidade;