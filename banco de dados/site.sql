-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Set-2018 às 21:01
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--
CREATE DATABASE IF NOT EXISTS `site` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `site`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(80) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `perfil` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`email`, `senha`, `perfil`, `id`) VALUES
('camillafranca20@hotmail.com', '*6BB4837', 'Administrador', 1),
('renancunha33@gmail.com', '*04D0B49', 'Editor', 2),
('gfsb8@hotmail.com', 'milla100', 'Administrador', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `categoria` varchar(80) NOT NULL,
  `titulo` text NOT NULL,
  `slug` varchar(80) NOT NULL,
  `descrição` text NOT NULL,
  `palavras_chaves` text NOT NULL,
  `conteudo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`categoria`, `titulo`, `slug`, `descrição`, `palavras_chaves`, `conteudo`) VALUES
('Tecnologia', '"Consertar" o Facebook pode levar até 3 anos, diz Mark Zuckerberg', 'consertar-o-facebook-pode-levar-ate-3-anos-diz-mark-zuckerberg', '', 'Facebook, Zuckerberg, Tecnologia', 'Mark Zuckerberg abriu seu coração sobre o difícil ano que está enfrentando no Facebook. Depois dos problemas com o vazamento de dados da Cambridge Analyitica em março e a forte queda no preço das ações da empresa, o CEO postou em seu perfil oficial na rede social sobre como pretende contornar a situação. Para ele, levará ao menos três anos para arrumar a casa.\r\n\r\nEle ainda falou sobre a questão da interferência externa nas eleições intermediárias, que acontecem neste ano nos Estados Unidos. Recentemente, o Facebook foi convocado para explicar ao Senado como pretende colaborar para evitar possíveis problemas e prestar esclarecimentos.\r\n\r\n“Tenho gasto muito tempo nesses problemas e assim que as coisas acalmarem eu devo descrever uma série de notas apontando o que estou pensando sobre eles e os passos para resolvê-los”, escreveu.\r\nEmbora acredite que o projeto para fazer a rede social mais segura tanto para os usuários quanto para evitar interferência externa, ele ainda informa que o Facebook começou a trabalhar em cima disso já no ano passado, de forma que, em 2019, já seja um ambiente melhor com os problemas resolvidos.\r\n\r\nZuckerberg ainda falou sobre liberdade de discurso dentro da plataforma. Para ele, é preciso garantir que as pessoas possam dizer o que pensam, contudo é necessário fazer com que todos tenham um ambiente seguro para isso.\r\n\r\nAtualmente, foi adicionada à plataforma a verificação de publicidade e também mais detalhes sobre quem está investindo em anúncios na rede social. Para Zuckerberg, somente isso “já colabora para mitigar o problema”.\r\n\r\nO CEO enfrenta problemas com privacidade e interferência em questões políticas desde o caso Cambridge Analytica em março, quando vazaram dados de mais de 87 milhões de usuários. A suspeita é de que as informações tenham sido usadas para favorecer a campanha que elegeu Donald Trump presidente dos Estados Unidos em 2016. Ainda, também há suspeitas de que a Cambridge Analytica tenha relação com o Brexit, que culminou na saída do Reino Unido da União Europeia.'),
('Tecnologia', 'Twitter lança ferramenta de transmissão de áudio ao vivo', 'twitter-lanca-ferramenta-de-transmissao-de-audio-ao-vivo', '', 'Twitter, ferramenta, lançamento', 'O Twitter lançou nesta sexta-feira (7) uma nova ferramenta semelhante ao Periscope, só que focada apenas em áudio. A informação foi confirmada tanto pelo perfil oficial da plataforma quanto por seu presidente executivo, Jack Dorsey.\r\n\r\nPor enquanto, ela só está disponível na versão de iOS do Twitter, bem como no Periscope. Para isso, o usuário precisa clicar em “Live” e escolher a opção de apenas transmitir em áudio.\r\nSegundo Dorsey, tal ferramenta já estava disponível para testes para alguns países e contas, mas que somente nesta sexta-feira (7) foi oficialmente ao ar. Até o momento, não há informações sobre quando a atualização chegará para outras plataformas.\r\nA ferramenta pode ser uma opção interessante para empresas que gravam podcast com transmissão ao vivo para os usuários. Pela plataforma, é possível que usuários possam também comentar como acontece no Periscope.\r\n\r\nPor fim, a ferramenta entrega para o produtor detalhes sobre estatísticas de visualizações únicas e repetidas, além de tempo médio executado pelos ouvintes.'),
('Brasil', 'Peritos já sabem onde começou o fogo no Museu Nacional; hipótese de incêndio criminoso não é descartada', 'peritos-ja-sabem-onde-comecou-o-fogo-no-museu', 'Local exato onde incêndio começou não foi divulgado pela Polícia Federal para não atrapalhar as investigações. Quinta da Boa Vista recebeu manifestantes neste 7 de setembro.', 'Museu Nacional, Incendio, Rio de Janeiro', 'Os peritos da Polícia Federal já sabem onde começou o fogo no Museu Nacional. Mas, para evitar especulações sobre a causa da tragédia, ainda não divulgaram o local exato. A hipótese de incêndio criminoso não está descartada pelos investigadores, conforme apurou o RJTV.\r\nO Museu Nacional, na Quinta da Boa Vista, em São Cristóvão, foi destruído por um incêndio de grandes proporções no dia 2 de setembro.\r\nNesta sexta-feira (7), muita gente aproveitou o feriado para passear na Quinta da Boa Vista. Foi lá, no palácio que abrigava o Museu Nacional, que teve início o processo de independência do Brasil. Em agosto de 1822, Dom Pedro viajou para São Paulo e nomeou a princesa Leopoldina regente interina do Brasil. Dez dias depois, ela recebeu uma carta de Portugal com péssimas notícias. As medidas anunciadas acabavam com o poder de Dom Pedro e ainda ameaçam dividir o Brasil.\r\n\r\nLeopoldina não pode esperar pela volta do príncipe e, após uma reunião com o conselho de ministros, assinou a declaração de Independência do Brasil dentro do palácio da Quinta da Boa Vista. O famoso Grito do Ipiranga só aconteceu cinco dias depois.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
