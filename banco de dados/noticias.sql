CREATE TABLE `noticias` (
  `titulo` text NOT NULL,
  `slug` varchar(80) NOT NULL,
  `descrição` text NOT NULL,
  `palavras_chaves` text NOT NULL,
  `conteudo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
