CREATE VIEW disciplinas_curso_especifico AS
SELECT 
    disciplina.nome AS disciplina
FROM disciplina
INNER JOIN curso ON disciplina.id_curso = curso.id_curso
WHERE curso.nome = 'Engenharia de Software';