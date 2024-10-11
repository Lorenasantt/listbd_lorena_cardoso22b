CREATE VIEW alunos_idades AS
SELECT nome,
    FLOOR(DATEDIFF(CURDATE(), data_nascimento) / 365) AS idade
FROM aluno;