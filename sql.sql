/* SQL que retorna dados de duas tabelas com inner join */
SELECT 
	matricula.id
    ,pessoa.id as idpessoa
    ,pessoa.nome as nomepessoa
    ,curso.id as idcurso
    ,curso.nome as nomecurso
FROM
	matricula
    inner join pessoa on (
    	pessoa.id = matricula.idpessoa
    )
    inner join curso on (
    	curso.id = matricula.idcurso
    )
WHERE
	matricula.id = 1;