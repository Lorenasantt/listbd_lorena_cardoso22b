CREATE VIEW view_total_aluno_disciplina AS
SELECT 
    disciplina.nome AS nome_disciplina,
    COUNT(matricula.id_aluno) AS total_alunos
FROM matricula
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina
GROUP BY disciplina.nome;
    
SELECT *
FROM view_total_aluno_disciplina;	