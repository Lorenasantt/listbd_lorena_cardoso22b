CREATE VIEW alunos_maior20 AS 
SELECT nome, data_nascimento
FROM aluno
WHERE DATEDIFF(CURDATE(), data_nascimento) / 365 > 20;

SELECT *
FROM alunos_maior20;