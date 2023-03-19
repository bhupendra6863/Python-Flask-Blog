-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 03:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `microdiary`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2018-07-29 11:36:23', 'firstpost@gmail.com'),
(10, 'ashish', '48864822', 'ye mail dekhne ke liye hai', '2023-03-19 19:22:55', 'ashish@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn about stock market', 'market ko samjhe', 'first-post', 'The stock (also capital or harry stock) of a corporation is constituted of the equity stock of its owners. A single share of the stock represents fractional ownership of the corporation in proportion to the total number of shares. In liquidation, the stock represents the residual assets of the company that would be due to stockholders after discharge of all senior claims such as secured and unsecured debt.[1] Stockholders\' equity cannot be withdrawn from the company in a way that is intended to be detrimental to the company\'s creditors', 'home-bg.jpg', '2023-03-19 18:47:04'),
(2, 'Earthquake', 'shaking the earth', 'second-post', 'An earthquake (also known as a quake, tremor or temblor) is the shaking of the surface of the Earth resulting from a sudden release of energy in the Earth\'s lithosphere that creates seismic waves. Earthquakes can range in intensity, from those that are so weak that they cannot be felt, to those violent enough to propel objects and people into the air, damage critical infrastructure, and wreak destruction across entire cities. The seismic activity of an area is the frequency, type, and size of earthquakes experienced over a particular time. The seismicity at a particular location in the Earth is the average rate of seismic energy release per unit volume. The word tremor is also used for non-earthquake seismic rumbling.', 'about-bg.jpg', '2023-03-19 18:57:38'),
(3, 'Mario Molina', 'a scientist', 'third-post', 'Mario José Molina Henríquez (19 March 1943 – 7 October 2020),[7] known as Mario Molina, was a Mexican chemist. He played a pivotal role in the discovery of the Antarctic ozone hole, and was a co-recipient of the 1995 Nobel Prize in Chemistry for his role in discovering the threat to the Earth\'s ozone layer from chlorofluorocarbon (ClFC) gases. He was the first Mexican-born scientist to receive a Nobel Prize in Chemistry and the third Mexican-born person to receive a Nobel prize.[8][9][10]\r\n\r\nIn his career, Molina held research and teaching positions at University of California, Irvine, California Institute of Technology, Massachusetts Institute of Technology, University of California, San Diego, and the Center for Atmospheric Sciences at the Scripps Institution of Oceanography. Molina was also Director of the Mario Molina Center for Energy and Environment in Mexico City. Molina was a climate policy advisor to the President of Mexico, Enrique Peña Nieto.[11]\r\n\r\nOn 7 October 2020, the National Autonomous University of Mexico announced that Molina had died of a heart attack.[12][13]', 'post-bg.jpg', '2023-03-19 18:59:24'),
(4, 'Enigma machine', 'A device', 'fourth-post', 'his article is about the Enigma machine itself. For the Allied cracking of the machine, see Cryptanalysis of the Enigma.\r\n\r\nMilitary Enigma machine, model \"Enigma I\", used during the late 1930s and during the war; displayed at Museo Nazionale Scienza e Tecnologia Leonardo da Vinci, Milan, Italy\r\nThe Enigma\r\ncipher machine\r\nEnigma-logo.svg\r\nEnigma machine\r\nEnigma rotors\r\nBreaking Enigma\r\nPolish Cipher Bureau\r\nDoubles\r\nGrill\r\nClock\r\nCyclometer\r\nBomba\r\nZygalski sheets\r\nBletchley Park\r\nBanburismus\r\nHerivel tip\r\nCrib\r\nBombe\r\nHut 3\r\nHut 6\r\nHut 8\r\nPC Bruno\r\nCadix\r\nUltra\r\nvte\r\nThe Enigma machine is a cipher device developed and used in the early- to mid-20th century to protect commercial, diplomatic, and military communication. It was employed extensively by Nazi Germany during World War II, in all branches of the German military. The Enigma machine was considered so secure that it was used to encipher the most top-secret messages.[1]\r\n\r\nThe Enigma has an electromechanical rotor mechanism that scrambles the 26 letters of the alphabet. In typical use, one person enters text on the Enigma\'s keyboard and another person writes down which of the 26 lights above the keyboard illuminated at each key press. If plain text is entered, the illuminated letters are the ciphertext. Entering ciphertext transforms it back into readable plaintext. The rotor mechanism changes the electrical connections between the keys and the lights with each keypress.', 'contact-bg.jpg', '2023-03-19 19:54:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
