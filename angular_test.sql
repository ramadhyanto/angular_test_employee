-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2020 pada 05.44
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular_test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `basicsalary` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `grup` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `username`, `firstname`, `lastname`, `email`, `basicsalary`, `status`, `grup`, `birthdate`, `description`) VALUES
(12, 'ramadhyanto', 'Renaldi', 'Ramadhyanto', 'ramadhyanto@gmail.com', 5000000, 'Karyawan Tetap', 'Teller', '2020-04-04 20:00:00', 'Karyawan'),
(13, 'johndoe', 'John', 'Doe', 'johndoe@gmail.com', 2000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-21 10:00:00', 'Kontrak'),
(14, 'Tiger Nixon', 'Tiger ', 'Nixon', 'johndoe@gmail.com', 70000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-03-31 17:00:00', 'Karyawan'),
(15, 'Garrett Winters', 'Garrett ', 'Winters', 'Winters@gmail.com', 9000000, 'Karyawan Kontrak', 'Cleaning Service', '2020-04-06 17:00:00', 'Karyawan'),
(16, 'Gina', 'Gina', 'Nira', 'Gina@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(17, 'Elsa', 'Elsa', 'Elsa', 'Elsa@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(18, 'John', 'John', 'John', 'John@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(19, 'Elsa', 'Elsa', 'Nira', 'Elsa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(20, 'Randi', 'Randi', 'Randi', 'Randi@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(21, 'David', 'David', 'Elsa', 'David@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(22, 'Yufa', 'Yufa', 'Rina', 'Yufa@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(23, 'John', 'John', 'David', 'John@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(24, 'Yori', 'Yori', 'Gina', 'Yori@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(25, 'Ari', 'Ari', 'David', 'Ari@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(26, 'Gina', 'Gina', 'Hadi', 'Gina@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(27, 'Yufa', 'Yufa', 'Yori', 'Yufa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(28, 'Randi', 'Randi', 'Albert', 'Randi@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(29, 'Yufa', 'Yufa', 'David', 'Yufa@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(30, 'Ari', 'Ari', 'Albert', 'Ari@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(31, 'Rina', 'Rina', 'Yufa', 'Rina@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(32, 'John', 'John', 'John', 'John@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(33, 'Rina', 'Rina', 'John', 'Rina@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(34, 'Yori', 'Yori', 'Elsa', 'Yori@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(35, 'Gina', 'Gina', 'Rina', 'Gina@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(36, 'Elsa', 'Elsa', 'John', 'Elsa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(37, 'Rina', 'Rina', 'Rina', 'Rina@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(38, 'Yori', 'Yori', 'Rina', 'Yori@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(39, 'Yori', 'Yori', 'Rina', 'Yori@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(40, 'Ari', 'Ari', 'Ari', 'Ari@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(41, 'Hadi', 'Hadi', 'Elsa', 'Hadi@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(42, 'Randi', 'Randi', 'Hadi', 'Randi@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(43, 'Yori', 'Yori', 'David', 'Yori@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(44, 'Yori', 'Yori', 'Randi', 'Yori@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(45, 'Gina', 'Gina', 'Albert', 'Gina@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(46, 'Rina', 'Rina', 'Yori', 'Rina@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(47, 'Yufa', 'Yufa', 'Nira', 'Yufa@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(48, 'Nira', 'Nira', 'Gina', 'Nira@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(49, 'Elsa', 'Elsa', 'Elsa', 'Elsa@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(50, 'Ari', 'Ari', 'Yori', 'Ari@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(51, 'Randi', 'Randi', 'Hadi', 'Randi@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(52, 'Albert', 'Albert', 'Albert', 'Albert@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(53, 'Hadi', 'Hadi', 'John', 'Hadi@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(54, 'Albert', 'Albert', 'Randi', 'Albert@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(55, 'Hadi', 'Hadi', 'Elsa', 'Hadi@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(56, 'Gina', 'Gina', 'Elsa', 'Gina@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(57, 'Yori', 'Yori', 'Rina', 'Yori@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(58, 'Hadi', 'Hadi', 'Yufa', 'Hadi@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(59, 'Ari', 'Ari', 'Yufa', 'Ari@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(60, 'John', 'John', 'Gina', 'John@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(61, 'Hadi', 'Hadi', 'Gina', 'Hadi@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(62, 'David', 'David', 'Rina', 'David@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(63, 'Randi', 'Randi', 'Yufa', 'Randi@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(64, 'Elsa', 'Elsa', 'Randi', 'Elsa@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(65, 'Gina', 'Gina', 'Hadi', 'Gina@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(66, 'Elsa', 'Elsa', 'Rina', 'Elsa@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(67, 'Hadi', 'Hadi', 'Nira', 'Hadi@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(68, 'John', 'John', 'Hadi', 'John@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(69, 'Rina', 'Rina', 'John', 'Rina@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(70, 'John', 'John', 'Elsa', 'John@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(71, 'Rina', 'Rina', 'David', 'Rina@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(72, 'Yori', 'Yori', 'Hadi', 'Yori@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(73, 'Elsa', 'Elsa', 'Elsa', 'Elsa@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(74, 'Yori', 'Yori', 'Yufa', 'Yori@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(75, 'Hadi', 'Hadi', 'Albert', 'Hadi@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(76, 'Hadi', 'Hadi', 'Yori', 'Hadi@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(77, 'Hadi', 'Hadi', 'Ari', 'Hadi@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(78, 'Gina', 'Gina', 'Ari', 'Gina@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(79, 'Elsa', 'Elsa', 'Hadi', 'Elsa@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(80, 'Rina', 'Rina', 'Rina', 'Rina@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(81, 'Elsa', 'Elsa', 'Albert', 'Elsa@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(82, 'Elsa', 'Elsa', 'Yufa', 'Elsa@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(83, 'David', 'David', 'Yufa', 'David@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(84, 'Elsa', 'Elsa', 'Hadi', 'Elsa@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(85, 'Gina', 'Gina', 'Hadi', 'Gina@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(86, 'Randi', 'Randi', 'Elsa', 'Randi@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(87, 'Gina', 'Gina', 'Rina', 'Gina@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(88, 'Yori', 'Yori', 'Nira', 'Yori@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(89, 'Randi', 'Randi', 'Hadi', 'Randi@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(90, 'Albert', 'Albert', 'Yufa', 'Albert@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(91, 'John', 'John', 'Hadi', 'John@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(92, 'Albert', 'Albert', 'Nira', 'Albert@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(93, 'Nira', 'Nira', 'Elsa', 'Nira@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(94, 'David', 'David', 'Rina', 'David@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(95, 'Elsa', 'Elsa', 'Albert', 'Elsa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(96, 'Ari', 'Ari', 'Hadi', 'Ari@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(97, 'Gina', 'Gina', 'Yufa', 'Gina@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(98, 'John', 'John', 'Hadi', 'John@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(99, 'Elsa', 'Elsa', 'Nira', 'Elsa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(100, 'Gina', 'Gina', 'Elsa', 'Gina@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(101, 'Yufa', 'Yufa', 'Gina', 'Yufa@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(102, 'Randi', 'Randi', 'Ari', 'Randi@gmail.com', 3000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(103, 'Ari', 'Ari', 'John', 'Ari@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(104, 'Randi', 'Randi', 'Yufa', 'Randi@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(105, 'Yori', 'Yori', 'David', 'Yori@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(106, 'John', 'John', 'John', 'John@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(107, 'David', 'David', 'David', 'David@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(108, 'Yufa', 'Yufa', 'Randi', 'Yufa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(109, 'Elsa', 'Elsa', 'Elsa', 'Elsa@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(110, 'Albert', 'Albert', 'David', 'Albert@gmail.com', 6000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(111, 'Gina', 'Gina', 'John', 'Gina@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(112, 'Ari', 'Ari', 'Rina', 'Ari@gmail.com', 7000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(113, 'David', 'David', 'Ari', 'David@gmail.com', 5000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(114, 'John', 'John', 'Yori', 'John@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan'),
(115, 'Nira', 'Nira', 'Albert', 'Nira@gmail.com', 8000000, 'Karyawan Kontrak', 'Mobile Developer', '2020-04-04 13:00:00', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
