SELECT (primeiro_nome || ' ' || ultimo_nome ) as nome_completo from aluno;

select CONCAT(primeiro_nome,' ',ultimo_nome) as "nome completo" from aluno;


-- usa a funcao NOW(), que traz a data atual, mas necessita do ::DATE 
select CONCAT(primeiro_nome,' ',ultimo_nome) as "nome completo", (NOW()::DATE - data_nascimento)/365 from aluno;


-- retorna a idade e meses
select CONCAT(primeiro_nome,' ',ultimo_nome) as "nome completo", 
    AGE(data_nascimento) as IDADE
FROM aluno;


-- retorna apenas o ano, extraindo o YEAR:
SELECT (primeiro_nome, ' ', ultimo_nome) as "nome completo",
    EXTRACT(YEAR FROM AGE(data_nascimento)) as idade
FROM aluno;