-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2019 at 10:49 AM
-- Server version: 8.0.15
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deca_18l4_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `avila_comments`
--

CREATE TABLE `avila_comments` (
  `id_avila_comments` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `avila_mentors_id_mentors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avila_comments`
--

INSERT INTO `avila_comments` (`id_avila_comments`, `comment`, `date`, `avila_mentors_id_mentors`) VALUES
(1, 'Sou da AVILA Crew e não me arrependo!', '2019-04-15', 3),
(2, 'Que equipa mais linda...', '2019-05-01', 1),
(3, 'Não me apetece escrever nada e por isso... \"Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit sit amet non magna.\"', '2019-04-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `avila_mentors`
--

CREATE TABLE `avila_mentors` (
  `id_mentors` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description_short` mediumtext NOT NULL,
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avila_mentors`
--

INSERT INTO `avila_mentors` (`id_mentors`, `name`, `title`, `description_short`, `description`, `image`, `user`, `pass`) VALUES
(1, 'Joana Beja', 'especial mentor', 'ex-NTC e Mestre em Design, a Joana não esconde que o seu piso preferido do CCCI é o do meio.', 'ex-NTC e Mestre em Design, a Joana não esconde que o seu piso preferido do CCCI é o do meio.<br>Se por um lado a comunicação lhe está no sangue, por outro é a programação que a desafia, e ajuda a liderar a AVILA Crew para ajudar no superar dos objetivos em Lab4-A.', 'specialmentor_joana.jpg', 'joana', 'beja'),
(2, 'Josué Silvério', 'especial mentor', 'A frequentar o Mestrado em Comunição Multimédia, o Josué assume um especial fascínio pelo mundo dos videojogos. A título de curiosidade, é o desenvolvimento de jogos que mais a desafia apesar de assumir o seu péssimo jeito para os jogar!', 'A frequentar o Mestrado em Comunicação Multimédia, o Josué assume um especial fascínio pelo mundo dos videojogos. A título de curiosidade, é o desenvolvimento de jogos que mais a desafia apesar de assumir o seu péssimo jeito para os jogar!<br>Junta-se à AVILA Crew para partilhar este gosto e demonstrar que Lab4-A pode ser uma UC bem simpática.', 'specialmentor_josue.jpg', 'josue', 'silverio'),
(3, 'Rita Lemos', 'especial mentor', 'A frequentar NTC, a Rita não adora programação mas adora logística e tudo o que possa ser construído manualmente.', 'A frequentar NTC, a Rita não adora programação mas adora logística e tudo o que possa ser construído manualmente.<br>Finalista de NTC, faz parte da AVILA Crew, sendo uma das pessoas que trabalha nos bastidores para que as maravilhosas ideias e guiões da equipa tomem forma no cenário mais apropriado.', 'speciallogistica_rita.jpg', 'rita', 'lemos');

-- --------------------------------------------------------

--
-- Table structure for table `avila_participants`
--

CREATE TABLE `avila_participants` (
  `id_participants` int(11) NOT NULL,
  `name_participant` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avila_participants`
--

INSERT INTO `avila_participants` (`id_participants`, `name_participant`) VALUES
(1, 'Maria Manuela'),
(2, 'António Costa'),
(3, 'Joana Afonso'),
(4, 'Maria Miquelina'),
(5, 'Custódio Voltou'),
(6, 'Ana Aninhas'),
(7, 'Vasco Rodrigues'),
(8, 'Rui Santos'),
(9, 'Manuel Costa'),
(10, 'Paula Silva'),
(11, 'Miguel António'),
(12, 'Cátia Cardoso'),
(13, 'Inês Areias'),
(14, 'Catarina Sousa'),
(15, 'João Capote'),
(16, 'Silvia Silvada'),
(17, 'Tom Dela'),
(18, 'Manuel Fernandes'),
(19, 'Vasco Santana'),
(20, 'Carlota Josefina');

-- --------------------------------------------------------

--
-- Table structure for table `avila_sessions`
--

CREATE TABLE `avila_sessions` (
  `id_sessions` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avila_sessions`
--

INSERT INTO `avila_sessions` (`id_sessions`, `title`, `date`, `image`, `description`) VALUES
(1, 'Install Party', '2017-02-21', 'Install_Party.png', 'A AVILA Crew apresenta-te a primeira AVILA Session – a Install Party!\r\nDia 21 de Fevereiro, junta-te a nós pelas 21h. O local é secreto… (não queiras saber tudo já!). Fugindo do ambiente de aula tradicional, junta-te a nós - pessoas que pensam como tu, que já tiveram as mesmas dificuldades e que, melhor que ninguém, percebem pelo que estás a passar. Depois disto, só é vitima de Lab4 quem quer! ;)'),
(2, 'KILL the VIRUS', '2017-03-13', 'KILL_VIRUS.png', 'O Vírus SQL propagou-se pelo CCCI e preparamo-nos para reunir esforços em busca do antídoto. Ao que tudo indica, ele estará algures pelo CCCI já na próxima segunda-feira!\r\nE tu aí que estás em Lab4, a AVILA Crew deixa-te um conselho: o melhor é vires à AVILA Session - KILL THE VIRUS, não vás tu começar a sentir os efeitos secundários do Vírus na véspera do teste...'),
(3, 'N-Dimensinal VIRUS', '2017-04-01', 'N_Dimensinal_VIRUS.png', 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.'),
(4, 'Connect To ME', '2017-04-21', 'Connect_ME.png', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum.'),
(5, 'Security Party', '2017-05-05', 'Security_Party.png', 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Vestibulum id ligula porta felis euismod semper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus.');

-- --------------------------------------------------------

--
-- Table structure for table `avila_sessions_participants`
--

CREATE TABLE `avila_sessions_participants` (
  `ref_id_sessions` int(11) NOT NULL,
  `ref_id_participants` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avila_sessions_participants`
--

INSERT INTO `avila_sessions_participants` (`ref_id_sessions`, `ref_id_participants`) VALUES
(1, 5),
(1, 6),
(1, 8),
(1, 12),
(1, 17),
(2, 17),
(2, 18),
(2, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avila_comments`
--
ALTER TABLE `avila_comments`
  ADD PRIMARY KEY (`id_avila_comments`),
  ADD KEY `fk_avila_comments_avila_mentors1_idx` (`avila_mentors_id_mentors`);

--
-- Indexes for table `avila_mentors`
--
ALTER TABLE `avila_mentors`
  ADD PRIMARY KEY (`id_mentors`);

--
-- Indexes for table `avila_participants`
--
ALTER TABLE `avila_participants`
  ADD PRIMARY KEY (`id_participants`);

--
-- Indexes for table `avila_sessions`
--
ALTER TABLE `avila_sessions`
  ADD PRIMARY KEY (`id_sessions`);

--
-- Indexes for table `avila_sessions_participants`
--
ALTER TABLE `avila_sessions_participants`
  ADD PRIMARY KEY (`ref_id_sessions`,`ref_id_participants`),
  ADD KEY `ref_id_participants` (`ref_id_participants`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avila_comments`
--
ALTER TABLE `avila_comments`
  MODIFY `id_avila_comments` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `avila_mentors`
--
ALTER TABLE `avila_mentors`
  MODIFY `id_mentors` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `avila_participants`
--
ALTER TABLE `avila_participants`
  MODIFY `id_participants` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `avila_sessions`
--
ALTER TABLE `avila_sessions`
  MODIFY `id_sessions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avila_comments`
--
ALTER TABLE `avila_comments`
  ADD CONSTRAINT `fk_avila_comments_avila_mentors1` FOREIGN KEY (`avila_mentors_id_mentors`) REFERENCES `avila_mentors` (`id_mentors`);

--
-- Constraints for table `avila_sessions_participants`
--
ALTER TABLE `avila_sessions_participants`
  ADD CONSTRAINT `avila_sessions_participants_ibfk_1` FOREIGN KEY (`ref_id_sessions`) REFERENCES `avila_sessions` (`id_sessions`),
  ADD CONSTRAINT `avila_sessions_participants_ibfk_2` FOREIGN KEY (`ref_id_participants`) REFERENCES `avila_participants` (`id_participants`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
