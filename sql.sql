/* CRIAR BANCO DE DADOS */
/* CREATE DATABASE brasildigital;*/

/* CRIAR TABELAS */
/* curso */
CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* pessoa */
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* matricula */
CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `idpessoa` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* INSERIR DADOS NA TABELA */
/* curso */
INSERT INTO `curso` (`id`,`nome`, `descricao`) VALUES
(1,'Lógica de Programação', 'Conhecimentos para Desenvolvimento Web.'),
(2,'Marketing Digital', 'Conhecimentos para criar anúncios em Redes Sociais.'),
(3,'Rede de Computadores', 'Conhecimentos de topologias e organização de redes.');

/* pessoa */
INSERT INTO `pessoa` (`id`, `nome`, `telefone`, `email`) VALUES
(1, 'João da Silva', '5563912345678', 'teste@teste.com'),
(2, 'Pedro da Silva', '5563912345678', 'teste@teste.com'),
(3, 'Jorge da Silva', '5563912345678', 'teste@teste.com'),
(4, 'Lucas da Silva', '5563912345678', 'teste@teste.com'),
(5, 'Maria da Silva', '5563912345678', 'teste@teste.com');

/* matricula */
INSERT INTO `matricula` (`id`, `idpessoa`, `idcurso`) VALUES
(1, 4, 1),
(2, 1, 2),
(3, 3, 2),
(4, 2, 3),
(5, 5, 3);

/* --- */

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
    );

/* SQL - C - CREATE - INSERIR */
/* 
Sintaxe:
INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);

INSERT INTO pessoa (nome, telefone, email) VALUES ('TESTE', '63984121257', 'teste@teste.com');
INSERT INTO curso (nome, descricao) VALUES ('Criação de Sites', 'Tudo sobre HTML, CSS e JavaScript');
*/ 

/* SQL - R - READ - VISUALIZAR */
/*
Sintaxe: 
SELECT column1, column2, ...
FROM table_name;

SELECT * FROM pessoa;
SELECT * FROM pessoa WHERE id = 4;
*/

/* SQL - U - UPDATE - ATUALIZAR */
/*
Sintaxe:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

UPDATE pessoa
SET nome = 'Nome Alterado'
WHERE id = 1;
*/

/* SQL - D - DELETE - APAGAR */
/*
Sintaxe:
DELETE FROM table_name
WHERE condition;

DELETE FROM pessoa
WHERE id = 1;
*/