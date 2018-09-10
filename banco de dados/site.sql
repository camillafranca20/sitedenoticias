-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10-Set-2018 às 21:56
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `email` varchar(80) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `perfil` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `noticias` (
  `categoria` varchar(80) NOT NULL,
  `titulo` text NOT NULL,
  `slug` varchar(80) NOT NULL,
  `descricao` text NOT NULL,
  `palavras_chaves` text NOT NULL,
  `conteudo` text NOT NULL,
  `imagem` varchar(255) NOT NULL DEFAULT '/img/null.jpg',
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`categoria`, `titulo`, `slug`, `descricao`, `palavras_chaves`, `conteudo`, `imagem`, `data`) VALUES
('Tecnologia', 'Homossexualidade ainda é criminalizada em mais de 70 países', 'homossexualidade-ainda-e-criminalizada-em-mais-de-70-paises', 'Na semana passada, Justiça indiana revogou decisão que previa punição por ''relações carnais contra a ordem da natureza''. Veja onde persiste a chamada ''homofobia de Estado''.', 'homossexualidade, mundo, criminalização', 'Em uma decisão histórica, a Suprema Corte da Índia descriminalizou na quinta-feira (6) a homossexualidade no país. A discriminação por causa da orientação sexual passou a ser uma violação dos direitos fundamentais no país asiático.\r\n\r\nA decisão unânime revogou uma sentença de 2013 que validava um artigo do Código Penal indiano da era colonial que punia "relações carnais contra a ordem da natureza" e criminalizava com penas de 10 anos de prisão as relações entre pessoas do mesmo sexo.\r\n\r\nNo entanto, em dezenas de países, gays, lésbicas e transexuais ainda são tratados como criminosos, e estão sujeitos até à pena de morte em alguns deles. É a chamada “homofobia de Estado”.\r\nEm relatório do ano passado, a associação internacional ILGA (International Lesbian, Gay, Bisexual, Trans and Intersex Association), que monitora as leis relacionadas ao tema há 12 anos, identifica 72 países em que relações entre pessoas do mesmo sexo são consideradas crime. Com a descriminalização aprovada na Índia, portanto, restam ainda 71 países nessa condição.\r\n\r\nO número representa um terço do total de estados membros da ONU (Organização das Nações Unidas). Em 2006, quando foi feito o primeiro estudo, a lista tinha 92 países.\r\n\r\nAs punições variam de multas e prisão à pena de morte. Há também países que não preveem penalidade ou não a aplicam atualmente, mas mantêm a criminalização em seu código penal.\r\n\r\nExistem três etapas básicas no caminho para o reconhecimento legal dos direitos LGBT: descriminalização (que relações homossexuais deixem de ser crime), proteção (leis contra a discriminação, por exemplo, no acesso a emprego) e reconhecimento (casamento e direito à adoção, entre outros).\r\n\r\nO Brasil foi incluído na lista do “reconhecimento” quando o casamento gay foi reconhecido por via judicial.', '/img/india1.jpg', '2018-09-10 19:15:39'),
('', 'Defesa de Lula vai ao STF para ampliar prazo de substituição de candidato à Presidência', '', 'Advogados solicitam também suspensão de inelegibilidade e autorização para Lula fazer campanha; prazo fixado pelo TSE para substituição termina esta terça-feira (11).', '', 'A defesa do ex-presidente Luiz Inácio Lula da Silva apresentou nesta segunda-feira (10) um novo pedido ao Supremo Tribunal Federal (STF) para ampliar o prazo de substituição do candidato do PT na corrida à Presidência da República.\r\n\r\nO objetivo mais imediato é adiar o prazo de substituição desta terça (11) para o próximo dia 17 de setembro, segunda-feira da próxima semana. O pedido será analisado pelo ministro Celso de Mello, responsável pelo caso no STF.\r\n\r\nOs advogados haviam feito o mesmo pedido ao Tribunal Superior Eleitoral (TSE), mas a presidente da Corte, Rosa Weber, negou a prorrogação do prazo. Na mesma decisão, a ministra enviou o recurso extraordinário da defesa, que discute a inelegibilidade do petista, para apreciação do STF.', '/img/null.jpg', '2018-09-10 19:53:00'),
('', 'Quase 100 detentos fogem de presídio de segurança máxima em João Pessoa', '', 'Um total de 92 presos fugiram do PB1 e 41 foram recapturados, diz secretaria. Criminosos derrubaram portão principal do presídio e trocaram tiros com policiais militares e agentes penitenciários. Um PM foi morto.', '', 'Pelo menos 92 presos fugiram da Penitenciária de Segurança Máxima Romeu Gonçalves Abrantes, o PB1, na madrugada desta segunda-feira (10) em João Pessoa, segundo nota divulgada pela Secretaria de Estado de Defesa Social (Seds). Até as 15h40, 41 detentos foram recapturados, segundo a Secretaria de Administração Penitenciária (Seap). Segundo a Polícia Militar, as principais divisas com Pernambuco, Rio Grande do Norte e Ceará foram fechadas.\r\n\r\nInicialmente a Seds trabalhava com a possibilidade de fuga de pelo menos 105 detentos, mas após uma recontagem, o órgão informou, às 15h40, que foram 92 fugitivos.\r\n\r\nUm tenente da Polícia Militar foi baleado na rodovia estadual PB-008 e teve morte cerebral confirmada, segundo a Seds. Erivaldo Moneta, de 36 anos, estava em um posto policial que teria sido alvo de vários tiros após a fuga de quase 100 detentos.\r\n\r\nO presídio tem capacidade para 660 presos e atualmente tinha cerca de 680 detentos, conforme o secretário Sérgio Fonseca. De acordo com o sistema Geopresídios, do Conselho Nacional de Justiça (CNJ), a unidade prisional tinha 681 presos em 644 vagas. Segundo a Seap, "a quantidade de agentes no local era suficiente para fornecer a guarda do PB1, foi uma ação pontual".\r\n\r\nO comandante-geral da Polícia Militar da Paraíba, Euller Chaves, afirmou que "todas as forças de segurança estão buscando caçar esses elementos. A PM está de prontidão nas ruas, vamos dar proteção adequada à população. Vamos buscar efetivamente resgatar naturalmente a sensação de insegurança (após a fuga em massa)".\r\n\r\nO secretário de segurança Cláudio Lima disse que "as escolas estaduais estão funcionando. Mas nós não temos poder de mando sobre as municipais. Podemos dizer que a polícia vai estar nas ruas. Não teve nenhum grande problema".', '/img/null.jpg', '2018-09-10 19:53:00'),
('', 'Quase 100 detentos fogem de presídio de segurança máxima em João Pessoa', '', 'Um total de 92 presos fugiram do PB1 e 41 foram recapturados, diz secretaria. Criminosos derrubaram portão principal do presídio e trocaram tiros com policiais militares e agentes penitenciários. Um PM foi morto.', '', 'Pelo menos 92 presos fugiram da Penitenciária de Segurança Máxima Romeu Gonçalves Abrantes, o PB1, na madrugada desta segunda-feira (10) em João Pessoa, segundo nota divulgada pela Secretaria de Estado de Defesa Social (Seds). Até as 15h40, 41 detentos foram recapturados, segundo a Secretaria de Administração Penitenciária (Seap). Segundo a Polícia Militar, as principais divisas com Pernambuco, Rio Grande do Norte e Ceará foram fechadas.\r\n\r\nInicialmente a Seds trabalhava com a possibilidade de fuga de pelo menos 105 detentos, mas após uma recontagem, o órgão informou, às 15h40, que foram 92 fugitivos.\r\n\r\nUm tenente da Polícia Militar foi baleado na rodovia estadual PB-008 e teve morte cerebral confirmada, segundo a Seds. Erivaldo Moneta, de 36 anos, estava em um posto policial que teria sido alvo de vários tiros após a fuga de quase 100 detentos.\r\n\r\nO presídio tem capacidade para 660 presos e atualmente tinha cerca de 680 detentos, conforme o secretário Sérgio Fonseca. De acordo com o sistema Geopresídios, do Conselho Nacional de Justiça (CNJ), a unidade prisional tinha 681 presos em 644 vagas. Segundo a Seap, "a quantidade de agentes no local era suficiente para fornecer a guarda do PB1, foi uma ação pontual".\r\n\r\nO comandante-geral da Polícia Militar da Paraíba, Euller Chaves, afirmou que "todas as forças de segurança estão buscando caçar esses elementos. A PM está de prontidão nas ruas, vamos dar proteção adequada à população. Vamos buscar efetivamente resgatar naturalmente a sensação de insegurança (após a fuga em massa)".\r\n\r\nO secretário de segurança Cláudio Lima disse que "as escolas estaduais estão funcionando. Mas nós não temos poder de mando sobre as municipais. Podemos dizer que a polícia vai estar nas ruas. Não teve nenhum grande problema".', '/img/null.jpg', '2018-09-10 19:54:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
