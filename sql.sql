/* CRIAR BANCO DE DADOS */
CREATE DATABASE brasildigital;

/* CRIAR TABELAS */
/* curso */
CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* matricula */
CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `idpessoa` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* pessoa */
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(2) NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `rg` text NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` bigint(13) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* INSERIR DADOS NA TABELA */
/* curso */
INSERT INTO `curso` (`id`, `nome`, `descricao`) VALUES
(1, 'Lógica de Programação', 'Conhecimentos para Desenvolvimento Web.'),
(2, 'Marketing Digital', 'Conhecimentos para criar anúncios em Redes Sociais.'),
(3, 'Rede de Computadores', 'Conhecimentos de topologias e organização de redes.');

/* matricula */
INSERT INTO `matricula` (`id`, `idpessoa`, `idcurso`) VALUES
(2, 4, 1),
(3, 1, 2),
(4, 3, 2),
(5, 2, 3),
(6, 5, 3);

/* pessoa */
INSERT INTO `pessoa` (`id`, `nome`, `idade`, `cpf`, `rg`, `endereco`, `telefone`, `email`) VALUES
(1, 'João da Silva', 18, 12345678912, '123.456', 'Rua 1', 5563912345678, 'teste@teste.com'),
(2, 'Pedro da Silva', 20, 12345678912, '123.456', 'Rua 1', 5563912345678, 'teste@teste.com'),
(3, 'Maria da Silva', 22, 12345678912, '123.456', 'Rua 1', 5563912345678, 'teste@teste.com'),
(4, 'Josefa da Silva', 25, 12345678912, '123.456', 'Rua 1', 5563912345678, 'teste@teste.com'),
(5, 'Neide da Silva', 30, 12345678912, '123.456', 'Rua 1', 5563912345678, 'teste@teste.com');

---

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