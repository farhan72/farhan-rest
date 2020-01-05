-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2020 pada 11.41
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `animal`
--

CREATE TABLE `animal` (
  `animalId` int(11) NOT NULL,
  `animalName` varchar(50) NOT NULL,
  `weight` int(5) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `animal`
--

INSERT INTO `animal` (`animalId`, `animalName`, `weight`, `date_created`, `date_modified`) VALUES
(2, 'Gajah', 0, '2020-01-05 09:43:36', '0000-00-00 00:00:00'),
(6, 'anjing', 12, '2020-01-05 09:43:36', '0000-00-00 00:00:00'),
(10, 'anoa', 5, '2020-01-05 10:40:13', '2020-01-05 17:40:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `email`, `password`) VALUES
(4, 'paijo abraham', 'abra@yahoo.com', '$2y$10$2f6nCRYqwxf2XendySpnTOLrGH9uKdiscjSAux1a.DPRrXtJy7P.S');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animalId`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `animal`
--
ALTER TABLE `animal`
  MODIFY `animalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
