CREATE VIEW view_alunos_status AS
SELECT 
    aluno.nome AS nome_aluno,
    disciplina.nome AS nome_disciplina,
    matricula.status AS status_matricula
FROM matricula
INNER JOIN aluno ON matricula.id_aluno = aluno.id_aluno
INNER JOIN disciplina ON matricula.id_disciplina = disciplina.id_disciplina;

SELECT *
FROM  view_alunos_status;