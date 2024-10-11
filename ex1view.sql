CREATE VIEW view_aluno AS
SELECT 
    aluno.nome AS nome_aluno,
    disciplina.nome AS nome_disciplina,
    curso.nome AS nome_curso
FROM matricula
inner JOIN aluno ON matricula.id_aluno = aluno.id_aluno
inner JOIN disciplina ON Matricula.id_disciplina = disciplina.id_disciplina
inner JOIN curso ON disciplina.id_curso = curso.id_curso;
    
    select *
    from view_aluno;