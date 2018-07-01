-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Nov 2017 pada 06.41
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengpol`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `player`
--

CREATE TABLE `player` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `CLUB` varchar(64) NOT NULL,
  `NATIONALITY` varchar(64) NOT NULL,
  `AGE` int(11) NOT NULL,
  `HEIGHT` int(11) NOT NULL,
  `POSITION` varchar(64) NOT NULL,
  `OVERALL` int(11) NOT NULL,
  `PASSING` int(11) NOT NULL,
  `SHOOTING` int(11) NOT NULL,
  `PHYSICAL` int(11) NOT NULL,
  `DEFENSIVE` int(11) NOT NULL,
  `SPEED` int(11) NOT NULL,
  `DRIBBLING` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `player`
--

INSERT INTO `player` (`ID`, `NAME`, `CLUB`, `NATIONALITY`, `AGE`, `HEIGHT`, `POSITION`, `OVERALL`, `PASSING`, `SHOOTING`, `PHYSICAL`, `DEFENSIVE`, `SPEED`, `DRIBBLING`) VALUES
(1, 'Z. Ibrahimovic', 'Paris Saint-Germain', 'Sweden', 34, 195, 'CF', 93, 90, 89, 97, 48, 77, 89),
(2, 'S. Agüero', 'Manchester City', 'Argentina', 27, 173, 'CF', 91, 83, 90, 88, 48, 87, 90),
(3, 'L. Suárez', 'FC Barcelona', 'Uruguay', 28, 182, 'CF', 91, 82, 91, 76, 65, 79, 86),
(4, 'R. Lewandowski', 'FC Bayern München', 'Poland', 27, 185, 'CF', 90, 79, 91, 87, 53, 81, 85),
(5, 'K. Benzema', 'Real Madrid', 'France', 28, 187, 'CF', 88, 84, 90, 84, 53, 84, 84),
(6, 'D. Costa', 'Chelsea', 'Spain', 27, 188, 'CF', 87, 66, 90, 84, 55, 85, 86),
(7, 'O. Giroud', 'Arsenal', 'France', 29, 192, 'CF', 86, 83, 87, 93, 47, 63, 74),
(8, 'M. Mandžukic', 'Juventus F.C.', 'Croatia', 29, 187, 'CF', 85, 79, 84, 89, 62, 78, 78),
(9, 'J. Vardy', 'Leicester City', 'England', 28, 178, 'CF', 81, 67, 83, 78, 58, 85, 80),
(10, 'H. Kane', 'Tottenham Hotspur', 'England', 22, 188, 'CF', 81, 73, 82, 81, 54, 77, 77),
(11, 'L. Messi', 'FC Barcelona', 'Argentina', 28, 170, 'SS', 94, 84, 94, 94, 42, 86, 96),
(12, 'T. Müller', 'FC Bayern München', 'Germany', 26, 186, 'SS', 92, 83, 91, 74, 65, 85, 80),
(13, 'Neymar', 'FC Barcelona', 'Brazil', 23, 174, 'SS', 92, 82, 90, 76, 48, 88, 94),
(14, 'A. Griezmann', 'At. Madrid', 'France', 24, 176, 'SS', 88, 80, 86, 76, 69, 84, 81),
(15, 'C. Vela', 'Real Sociedad', 'Mexico', 26, 177, 'SS', 83, 77, 78, 74, 58, 83, 85),
(16, 'F. Totti', 'A.S. Roma', 'Italy', 39, 180, 'SS', 83, 94, 87, 80, 55, 67, 83),
(17, 'R. Palacio', 'Internazionale Milano', 'Argentina', 33, 175, 'SS', 83, 78, 83, 72, 58, 83, 84),
(18, 'S. Jovetic', 'Internazionale Milano', 'Montenegro', 26, 183, 'SS', 83, 83, 78, 82, 55, 77, 84),
(19, 'M. Kruse', 'VfL Wolfsburg', 'Germany', 27, 181, 'SS', 82, 83, 80, 77, 48, 77, 80),
(20, 'S. Naismith', 'Norwich City', 'Scotland', 29, 178, 'SS', 76, 71, 76, 75, 58, 77, 75),
(21, 'G. Bale', 'Real Madrid', 'Wales', 26, 183, 'RWF', 91, 81, 81, 79, 69, 92, 88),
(22, 'A. Robben', 'FC Bayern München', 'Netherlands', 31, 180, 'RWF', 91, 81, 91, 77, 52, 96, 91),
(23, 'Hulk', 'FC Zenit St. Petersburg', 'Brazil', 29, 180, 'RWF', 87, 79, 84, 89, 42, 84, 86),
(24, 'L. Moura', 'Paris Saint-Germain', 'Brazil', 23, 172, 'RWF', 86, 82, 78, 76, 58, 90, 90),
(25, 'A. Di María', 'Paris Saint-Germain', 'Argentina', 27, 180, 'RWF', 85, 81, 75, 64, 57, 88, 87),
(26, 'J. M. Callejón', 'S.S.C. Napoli', 'Spain', 28, 178, 'RWF', 84, 78, 83, 75, 62, 88, 81),
(27, 'Pedro Rodriguez', 'Chelsea', 'Spain', 28, 167, 'RWF', 83, 83, 80, 83, 50, 84, 84),
(28, 'M. Salah', 'A.S. Roma', 'Egypt', 23, 175, 'RWF', 82, 76, 79, 73, 53, 94, 87),
(29, 'T. Walcott', 'Arsenal', 'England', 26, 176, 'RWF', 79, 79, 83, 59, 50, 96, 81),
(30, 'E. Lamela', 'Tottenham Hotspur', 'Argentina', 23, 183, 'RWF', 76, 81, 73, 56, 50, 80, 87),
(31, 'C. Ronaldo', 'Real Madrid', 'Portugal', 30, 185, 'LWF', 93, 82, 92, 87, 57, 93, 82),
(32, 'D. Mertens', 'S.S.C. Napoli', 'Belgium', 28, 169, 'LWF', 87, 82, 82, 73, 59, 85, 87),
(33, 'A. Sánchez', 'Arsenal', 'Chile', 27, 169, 'LWF', 87, 81, 85, 65, 55, 86, 89),
(34, 'M. Depay', 'Manchester United', 'Netherlands', 21, 176, 'LWF', 83, 72, 79, 79, 52, 93, 83),
(35, 'D. Perotti', 'A.S. Roma', 'Argentina', 27, 179, 'LWF', 82, 80, 75, 69, 52, 82, 88),
(36, 'L. Insigne', 'S.S.C. Napoli', 'Italy', 24, 163, 'LWF', 82, 80, 78, 75, 53, 83, 84),
(37, 'I. Muniain', 'Athletic Club', 'Spain', 23, 169, 'LWF', 82, 77, 75, 77, 56, 83, 84),
(38, 'L. Podolski', 'Galatasaray A.S.', 'Germany', 30, 182, 'LWF', 81, 75, 86, 81, 57, 79, 79),
(39, 'A. Schürrle', 'VfL Wolfsburg', 'Germany', 25, 184, 'LWF', 81, 76, 80, 73, 43, 86, 81),
(40, 'A. Lallana', 'Liverpool', 'England', 27, 172, 'LWF', 80, 84, 74, 70, 61, 68, 86),
(41, 'J. Rodríguez', 'Real Madrid', 'Colombia', 24, 180, 'AMF', 89, 85, 85, 78, 60, 81, 86),
(42, 'W. Rooney', 'Manchester United', 'England', 30, 178, 'AMF', 86, 79, 85, 84, 59, 77, 79),
(43, 'Oscar', 'Chelsea', 'Brazil', 24, 179, 'AMF', 86, 87, 77, 75, 60, 79, 86),
(44, 'M. Götze', 'FC Bayern München', 'Germany', 23, 176, 'AMF', 86, 88, 84, 75, 53, 77, 89),
(45, 'R. Sterling', 'Manchester City', 'England', 21, 170, 'AMF', 86, 85, 78, 75, 51, 93, 89),
(46, 'D. Costa', 'FC Bayern München', 'Brazil', 25, 170, 'AMF', 85, 81, 70, 74, 59, 87, 90),
(47, 'J. Mata', 'Manchester United', 'Spain', 27, 170, 'AMF', 84, 87, 78, 60, 54, 67, 86),
(48, 'M. Özil', 'Arsenal', 'Germany', 27, 183, 'AMF', 84, 90, 76, 60, 44, 72, 89),
(49, 'K. de Bruyne', 'Manchester City', 'Belgium', 24, 181, 'AMF', 84, 88, 81, 81, 54, 78, 86),
(50, 'J. Pastore', 'Paris Saint-Germain', 'Argentina', 26, 187, 'AMF', 83, 86, 76, 75, 55, 76, 87),
(51, 'A. Turan', 'FC Barcelona', 'Turkey', 28, 177, 'RMF', 85, 88, 75, 84, 66, 75, 87),
(52, 'J. Cuadrado', 'Juventus F.C.', 'Colombia', 27, 176, 'RMF', 84, 78, 75, 73, 57, 85, 86),
(53, 'Willian', 'Chelsea', 'Brazil', 27, 175, 'RMF', 84, 83, 75, 63, 59, 87, 89),
(54, 'J. Milner', 'Liverpool', 'England', 29, 176, 'RMF', 83, 83, 72, 81, 74, 76, 80),
(55, 'X. Shaqiri', 'Stoke City', 'Switzerland', 24, 169, 'RMF', 82, 81, 72, 80, 58, 84, 84),
(56, 'Jesús Navas', 'Manchester City', 'Spain', 30, 170, 'RMF', 81, 78, 67, 72, 53, 93, 85),
(57, 'A. Valencia', 'Manchester United', 'Ecuador', 30, 181, 'RMF', 80, 76, 70, 76, 60, 86, 81),
(58, 'Mahrez', 'Leicester City', 'Algeria', 24, 179, 'RMF', 80, 78, 77, 72, 61, 82, 82),
(59, 'A. Chamberlain', 'Arsenal', 'England', 22, 175, 'RMF', 79, 77, 70, 70, 56, 89, 86),
(60, 'V. Moses', 'West Ham United', 'Nigeria', 25, 177, 'RMF', 79, 74, 73, 79, 53, 82, 86),
(61, 'E. Hazard', 'Chelsea', 'Belgium', 24, 173, 'LMF', 90, 88, 85, 83, 57, 89, 93),
(62, 'F. Ribéry', 'FC Bayern München', 'France', 32, 170, 'LMF', 90, 85, 85, 79, 60, 86, 97),
(63, 'Nico Gaitán', 'SL Benfica', 'Argentina', 27, 174, 'LMF', 87, 83, 79, 73, 57, 85, 88),
(64, 'Miguel Rosa', 'Belenenses', 'Portugal', 26, 178, 'LMF', 82, 79, 77, 74, 75, 80, 82),
(65, 'F. Tabanou', 'AS Saint-Etienne', 'France', 26, 178, 'LMF', 82, 80, 74, 75, 63, 82, 82),
(66, 'K. Asamoah', 'Juventus F.C.', 'Ghana', 27, 178, 'LMF', 81, 72, 71, 84, 69, 84, 82),
(67, 'N. Chadli', 'Tottenham Hotspur', 'Belgium', 26, 189, 'LMF', 80, 76, 84, 81, 57, 83, 81),
(68, 'Eliseu', 'SL Benfica', 'Portugal', 32, 175, 'LMF', 80, 73, 66, 77, 74, 84, 72),
(69, 'Y. Konoplyanka', 'Sevilla FC', 'Ukraine', 26, 176, 'LMF', 80, 79, 75, 70, 55, 84, 84),
(70, 'G. Sigurðsson', 'Swansea City', 'Iceland', 26, 186, 'LMF', 80, 84, 80, 71, 61, 75, 82),
(71, 'Y. Touré', 'Manchester City', 'Côte dIvoire', 32, 191, 'CMF', 92, 88, 82, 88, 81, 79, 85),
(72, 'Schweinsteiger', 'Manchester United', 'Germany', 31, 183, 'CMF', 90, 91, 79, 82, 74, 67, 83),
(73, 'L. Modric', 'Real Madrid', 'Croatia', 30, 174, 'CMF', 90, 91, 74, 74, 65, 83, 86),
(74, 'A. Vidal', 'FC Bayern München', 'Chile', 28, 180, 'CMF', 90, 82, 82, 80, 86, 76, 82),
(75, 'T. Kroos', 'Real Madrid', 'Germany', 25, 182, 'CMF', 89, 93, 80, 79, 74, 72, 85),
(76, 'P. Pogba', 'Juventus F.C.', 'France', 22, 186, 'CMF', 89, 84, 80, 86, 73, 79, 88),
(77, 'A. Iniesta', 'FC Barcelona', 'Spain', 31, 171, 'CMF', 88, 93, 73, 86, 57, 75, 92),
(78, 'C. Fàbregas', 'Chelsea', 'Spain', 28, 175, 'CMF', 86, 92, 75, 76, 69, 72, 83),
(79, 'B. Matuidi', 'Paris Saint-Germain', 'France', 28, 175, 'CMF', 85, 85, 63, 80, 85, 88, 73),
(80, 'M. Pjanic', 'A.S. Roma', 'Bosnia', 25, 180, 'CMF', 85, 92, 71, 71, 63, 73, 84),
(81, 'N. Matic', 'Chelsea', 'Serbia', 27, 194, 'DMF', 88, 85, 62, 87, 86, 74, 80),
(82, 'X. Alonso', 'FC Bayern München', 'Spain', 34, 183, 'DMF', 86, 91, 68, 78, 84, 64, 76),
(83, 'J. Mascherano', 'FC Barcelona', 'Argentina', 31, 174, 'DMF', 86, 88, 61, 84, 92, 81, 68),
(84, 'F. Melo', 'Internazionale Milano', 'Brazil', 32, 183, 'DMF', 86, 81, 73, 86, 83, 74, 76),
(85, 'S. Busquets', 'FC Barcelona', 'Spain', 27, 189, 'DMF', 86, 91, 62, 78, 90, 64, 80),
(86, 'D. De Rossi', 'A.S. Roma', 'Italy', 32, 185, 'DMF', 85, 84, 74, 86, 85, 69, 70),
(87, 'T. Motta', 'Paris Saint-Germain', 'Italy', 33, 187, 'DMF', 85, 80, 76, 86, 83, 77, 79),
(88, 'R. Cohade', 'AS Saint-Etienne', 'France', 31, 182, 'DMF', 85, 81, 80, 76, 78, 77, 79),
(89, 'J. Martínez', 'FC Bayern München', 'Spain', 27, 190, 'DMF', 85, 83, 68, 84, 85, 75, 76),
(90, 'M. Schneiderlin', 'Manchester United', 'France', 26, 181, 'DMF', 83, 84, 65, 82, 83, 76, 74),
(91, 'P. Lahm', 'FC Bayern München', 'Germany', 32, 170, 'RB', 89, 84, 54, 79, 85, 78, 83),
(92, 'D. Alves', 'FC Barcelona', 'Brazil', 32, 172, 'RB', 85, 83, 60, 75, 66, 87, 81),
(93, 'D. Carvajal', 'Real Madrid', 'Spain', 23, 173, 'RB', 84, 80, 56, 76, 83, 83, 84),
(94, 'B. Ivanovic', 'Chelsea', 'Serbia', 31, 185, 'RB', 82, 72, 60, 84, 85, 78, 70),
(95, 'K. Walker', 'Tottenham Hotspur', 'England', 25, 178, 'RB', 82, 71, 58, 75, 68, 93, 72),
(96, 'N. Clyne', 'Liverpool', 'England', 24, 175, 'RB', 82, 75, 56, 76, 72, 87, 77),
(97, 'C. Maggio', 'S.S.C. Napoli', 'Italy', 33, 184, 'RB', 81, 75, 67, 78, 72, 84, 70),
(98, 'P. Zabaleta', 'Manchester City', 'Argentina', 30, 174, 'RB', 81, 76, 63, 76, 78, 75, 75),
(99, 'S. Aurier', 'Paris Saint-Germain', 'Côte dIvoire', 23, 176, 'RB', 81, 74, 54, 81, 71, 87, 73),
(100, 'Rafinha', 'FC Bayern München', 'Brazil', 30, 172, 'RB', 80, 78, 65, 73, 72, 80, 81),
(101, 'D. Alaba', 'FC Bayern München', 'Austria', 23, 180, 'LB', 91, 84, 70, 81, 82, 86, 81),
(102, 'Marcelo', 'Real Madrid', 'Brazil', 27, 174, 'LB', 86, 80, 74, 80, 81, 82, 83),
(103, 'J. Alba', 'FC Barcelona', 'Spain', 26, 170, 'LB', 86, 78, 73, 70, 76, 92, 80),
(104, 'L. Baines', 'Everton', 'England', 31, 170, 'LB', 85, 81, 67, 73, 79, 79, 79),
(105, 'F. Luís', 'At. Madrid', 'Brazil', 30, 188, 'LB', 84, 77, 61, 76, 80, 86, 77),
(106, 'C. Azpilicueta', 'Chelsea', 'Spain', 26, 178, 'LB', 83, 80, 64, 77, 83, 85, 74),
(107, 'P. Evra', 'Juventus F.C.', 'France', 34, 174, 'LB', 82, 74, 60, 78, 73, 84, 80),
(108, 'Nacho Monreal', 'Arsenal', 'Spain', 29, 178, 'LB', 82, 78, 61, 75, 82, 79, 75),
(109, 'S. Maxwell', 'Paris Saint-Germain', 'Brazil', 34, 176, 'LB', 81, 76, 76, 79, 80, 75, 74),
(110, 'J. Mathieu', 'FC Barcelona', 'France', 32, 189, 'LB', 81, 76, 62, 90, 81, 85, 65),
(111, 'S. Ramos', 'Real Madrid', 'Spain', 29, 183, 'CB', 90, 76, 60, 86, 85, 81, 69),
(112, 'T. Silva', 'Paris Saint-Germain', 'Brazil', 31, 183, 'CB', 90, 80, 62, 86, 95, 79, 72),
(113, 'J. Boateng', 'FC Bayern München', 'Germany', 27, 192, 'CB', 89, 75, 61, 89, 88, 85, 69),
(114, 'V. Kompany', 'Manchester City', 'Belgium', 29, 193, 'CB', 88, 83, 60, 93, 91, 77, 71),
(115, 'D. Godín', 'At. Madrid', 'Uruguay', 29, 186, 'CB', 88, 79, 64, 85, 92, 72, 67),
(116, 'G. Piqué', 'FC Barcelona', 'Spain', 28, 193, 'CB', 87, 84, 68, 89, 91, 69, 70),
(117, 'D. Luiz', 'Paris Saint-Germain', 'Brazil', 28, 189, 'CB', 87, 77, 64, 88, 84, 80, 80),
(118, 'Pepe', 'Real Madrid', 'Portugal', 32, 188, 'CB', 86, 77, 63, 89, 90, 83, 63),
(119, 'M. Benatia', 'FC Bayern München', 'Morocco', 28, 190, 'CB', 86, 68, 59, 88, 92, 75, 66),
(120, 'G. Chiellini', 'Juventus F.C.', 'Italy', 31, 186, 'CB', 85, 70, 55, 88, 89, 81, 68),
(121, 'G. Buffon', 'Juventus F.C.', 'Italy', 37, 191, 'GK', 91, 65, 45, 83, 56, 60, 66),
(122, 'H. Lloris', 'Tottenham Hotspur', 'France', 29, 188, 'GK', 89, 47, 42, 86, 57, 63, 45),
(123, 'D. de Gea', 'Manchester United', 'Spain', 25, 190, 'GK', 89, 67, 45, 75, 56, 72, 62),
(124, 'T. Courtois', 'Chelsea', 'Belgium', 23, 199, 'GK', 89, 65, 45, 88, 57, 73, 58),
(125, 'P. Cech', 'Arsenal', 'Czech Republic', 33, 196, 'GK', 88, 66, 51, 89, 59, 67, 48),
(126, 'C. Bravo', 'FC Barcelona', 'Chile', 32, 184, 'GK', 87, 73, 56, 88, 56, 64, 65),
(127, 'M. Neuer', 'FC Bayern München', 'Germany', 29, 193, 'GK', 87, 83, 56, 95, 71, 84, 80),
(128, 'S. Sirigu', 'Paris Saint-Germain', 'Italy', 28, 192, 'GK', 86, 72, 55, 88, 70, 79, 66),
(129, 'K. Navas', 'Real Madrid', 'Costa Rica', 29, 184, 'GK', 86, 72, 51, 85, 76, 72, 65),
(130, 'J. Hart', 'Manchester City', 'England', 28, 196, 'GK', 85, 54, 44, 85, 85, 74, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `CLUB` varchar(64) NOT NULL,
  `NATIONALITY` varchar(64) NOT NULL,
  `AGE` int(11) NOT NULL,
  `HEIGHT` int(11) NOT NULL,
  `POSITION` varchar(64) NOT NULL,
  `OVERALL` int(11) NOT NULL,
  `PASSING` int(11) NOT NULL,
  `SHOOTING` int(11) NOT NULL,
  `PHYSICAL` int(11) NOT NULL,
  `DEFENSIVE` int(11) NOT NULL,
  `SPEED` int(11) NOT NULL,
  `DRIBBLING` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `test`
--

INSERT INTO `test` (`ID`, `NAME`, `CLUB`, `NATIONALITY`, `AGE`, `HEIGHT`, `POSITION`, `OVERALL`, `PASSING`, `SHOOTING`, `PHYSICAL`, `DEFENSIVE`, `SPEED`, `DRIBBLING`) VALUES
(1, 'G. Higuaín', 'S.S.C. Napoli', 'Argentina', 28, 184, 'CF', 88, 81, 88, 84, 53, 82, 84),
(2, 'E. Cavani', 'Paris Saint-Germain', 'Uruguay', 28, 184, 'CF', 90, 76, 88, 86, 65, 85, 83),
(3, 'M. Balotelli', 'A.C. Milan', 'Italy', 25, 189, 'CF', 86, 76, 84, 88, 52, 79, 86),
(4, 'E. Džeko', 'A.S. Roma', 'Bosnia', 29, 192, 'CF', 86, 74, 87, 86, 54, 74, 83),
(5, 'F. Quagliarella', 'U.C. Sampdoria', 'Italy', 32, 180, 'SS', 85, 80, 83, 80, 56, 80, 81),
(6, 'M. Chamakh', 'Crystal Palace', 'Morocco', 31, 188, 'SS', 77, 79, 75, 80, 66, 70, 73),
(7, 'M. Gabbiadini', 'S.S.C. Napoli', 'Italy', 24, 186, 'SS', 78, 75, 83, 79, 54, 84, 75),
(8, 'Viudez', 'River Plate', 'Uruguay', 26, 164, 'SS', 82, 76, 80, 73, 41, 81, 82),
(9, 'A. Hahn', 'Borussia MG', 'Germany', 25, 185, 'RWF', 79, 72, 73, 78, 53, 88, 79),
(10, 'L. Narsingh', 'PSV', 'Netherlands', 25, 175, 'RWF', 78, 75, 69, 73, 48, 87, 80),
(11, 'R. Alessandrini', 'Olympique de Marseille', 'France', 26, 173, 'RWF', 78, 74, 75, 74, 51, 91, 78),
(12, 'Bryan Ruiz', 'Sporting', 'Costa Rica', 30, 188, 'RWF', 77, 80, 72, 76, 65, 71, 83),
(13, 'Jesé', 'Real Madrid', 'Spain', 22, 178, 'LWF', 79, 74, 82, 75, 46, 82, 81),
(14, 'Ibai', 'Athletic Club', 'Spain', 26, 177, 'LWF', 79, 77, 71, 74, 55, 79, 81),
(15, 'C. Rodríguez', 'Independiente', 'Uruguay', 30, 178, 'LWF', 79, 77, 73, 78, 55, 80, 81),
(16, 'A. Young', 'Manchester United', 'England', 30, 177, 'LWF', 79, 77, 75, 69, 55, 83, 83),
(17, 'Sneijder', 'Galatasaray A.S.', 'Netherlands', 31, 170, 'AMF', 86, 88, 78, 74, 57, 74, 84),
(18, 'M. Hamsik', 'S.S.C. Napoli', 'Slovakia', 28, 183, 'AMF', 86, 87, 80, 79, 60, 77, 82),
(19, 'I. Rakitic', 'FC Barcelona', 'Croatia', 27, 184, 'AMF', 86, 89, 80, 73, 61, 71, 81),
(20, 'Santi Cazorla', 'Arsenal', 'Spain', 31, 168, 'AMF', 85, 88, 79, 61, 54, 69, 89),
(21, 'Salvio', 'SL Benfica', 'Argentina', 25, 173, 'RMF', 82, 75, 75, 77, 56, 87, 85),
(22, 'Blaszczykowski', 'ACF Fiorentina', 'Poland', 30, 175, 'RMF', 82, 80, 71, 77, 54, 89, 84),
(23, 'Bruno Peres', 'Torino F.C.', 'Brazil', 25, 178, 'RMF', 80, 69, 68, 78, 60, 88, 83),
(24, 'M. Moroziuk', 'FC Dynamo Kyiv', 'Ukraine', 27, 176, 'RMF', 79, 81, 67, 73, 71, 77, 82),
(25, 'S. Castillejo', 'Villarreal CF', 'Spain', 20, 179, 'LMF', 77, 76, 71, 79, 62, 83, 79),
(26, 'I. Traoré', 'Borussia MG', 'Guinea', 27, 171, 'LMF', 80, 78, 68, 70, 58, 86, 84),
(27, 'Vitolo', 'Sevilla FC', 'Spain', 26, 184, 'LMF', 80, 82, 73, 86, 63, 82, 82),
(28, 'J. M. Vargas', 'Real Betis', 'Peru', 32, 185, 'LMF', 77, 75, 68, 79, 65, 78, 75),
(29, 'É. Banega', 'Sevilla FC', 'Argentina', 27, 174, 'CMF', 85, 86, 75, 78, 68, 73, 82),
(30, 'Thiago', 'FC Bayern München', 'Spain', 24, 174, 'CMF', 90, 87, 76, 78, 68, 74, 92),
(31, 'Xavi', 'NN', 'Spain', 35, 170, 'CMF', 85, 93, 74, 90, 65, 65, 80),
(32, 'A. Witsel', 'FC Zenit St. Petersburg', 'Belgium', 26, 186, 'CMF', 85, 85, 70, 86, 72, 71, 85),
(33, 'Luiz Gustavo', 'VfL Wolfsburg', 'Brazil', 28, 187, 'DMF', 85, 82, 59, 85, 90, 72, 76),
(34, 'Miguel', 'FC Dynamo Kyiv', 'Portugal', 29, 180, 'DMF', 84, 82, 67, 77, 76, 70, 75),
(35, 'A. Iturraspe', 'Athletic Club', 'Spain', 26, 187, 'DMF', 82, 81, 66, 80, 76, 76, 76),
(36, 'J. Clasie', 'Southampton', 'Netherlands', 24, 169, 'DMF', 83, 81, 68, 76, 74, 75, 78),
(37, 'D. Janmaat', 'Newcastle United', 'Netherlands', 26, 185, 'RB', 81, 73, 61, 78, 77, 80, 74),
(38, 'Juanfran', 'At. Madrid', 'Spain', 30, 180, 'RB', 85, 79, 63, 74, 79, 84, 82),
(39, 'B. Sagna', 'Manchester City', 'France', 32, 176, 'RB', 83, 76, 56, 76, 80, 80, 74),
(40, 'M. Richards', 'Aston Villa', 'England', 27, 180, 'RB', 83, 71, 57, 91, 79, 82, 74),
(41, 'B. Trémoulinas', 'Sevilla FC', 'France', 30, 173, 'LB', 83, 84, 61, 77, 80, 84, 75),
(42, 'F. Peluso', 'U.S. Sassuolo', 'Italy', 31, 187, 'LB', 82, 71, 65, 83, 77, 80, 74),
(43, 'M. Rui', 'Empoli FC', 'Portugal', 24, 170, 'LB', 82, 75, 52, 79, 72, 85, 77),
(44, 'S. Radu', 'S.S. Lazio', 'Romania', 29, 183, 'LB', 81, 74, 55, 81, 83, 78, 71),
(45, 'J. Miranda', 'Internazionale Milano', 'Brazil', 31, 186, 'CB', 85, 76, 61, 83, 90, 78, 69),
(46, 'Civelli', 'LOSC Lille', 'Argentina', 32, 195, 'CB', 85, 75, 71, 88, 79, 77, 71),
(47, 'N. Otamendi', 'Manchester City', 'Argentina', 27, 183, 'CB', 85, 71, 68, 87, 90, 71, 62),
(48, 'Luisão', 'SL Benfica', 'Brazil', 34, 195, 'CB', 84, 74, 66, 89, 85, 74, 64),
(49, 'S. Handanovic', 'Internazionale Milano', 'Slovenia', 31, 193, 'GK', 87, 46, 45, 82, 56, 66, 48),
(50, 'I. Casillas', 'FC Porto', 'Spain', 34, 185, 'GK', 86, 70, 56, 86, 69, 71, 64),
(51, 'Roberto', 'Olympiacos FC', 'Spain', 29, 192, 'GK', 86, 62, 51, 89, 72, 74, 58),
(52, 'D. Alves', 'Valencia CF', 'Brazil', 30, 187, 'GK', 85, 55, 45, 82, 62, 67, 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
