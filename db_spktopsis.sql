-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2017 at 12:44 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_spktopsis`
--

-- --------------------------------------------------------

--
-- Table structure for table `talternatif`
--

CREATE TABLE IF NOT EXISTS `talternatif` (
  `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,
  `nama_alternatif` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `talternatif`
--

INSERT INTO `talternatif` (`id_alternatif`, `nama_alternatif`, `deskripsi`) VALUES
(1, 'Tanah Pak Muhidin', 'Terletak Di Daerah Kapur'),
(2, 'Tanah Pak Satar', 'Terletak Di Kota Baru Km 18'),
(3, 'Tanah Kavling Pak Haji Muksin', 'Terletak Di Jl.Kom.Yos Soedarso KM 18'),
(4, 'Tanah Pak Kumis', 'Jl.Sui.Raya Dalam Km.17');

-- --------------------------------------------------------

--
-- Table structure for table `talternatif_kriteria`
--

CREATE TABLE IF NOT EXISTS `talternatif_kriteria` (
  `id_alternatif_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`id_alternatif_kriteria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `talternatif_kriteria`
--

INSERT INTO `talternatif_kriteria` (`id_alternatif_kriteria`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(2, 3, 2, 50),
(3, 3, 4, 70),
(4, 3, 1, 400000000),
(5, 3, 10, 50),
(6, 3, 3, 30),
(7, 3, 5, 70),
(8, 3, 6, 20),
(9, 3, 9, 70),
(10, 4, 2, 50),
(11, 4, 4, 20),
(12, 4, 1, 350000000),
(13, 4, 10, 50),
(14, 4, 3, 20),
(15, 4, 5, 70),
(16, 4, 6, 20),
(17, 4, 9, 80),
(18, 1, 2, 70),
(19, 1, 4, 30),
(20, 1, 1, 400000000),
(21, 1, 10, 50),
(22, 1, 3, 20),
(23, 1, 5, 20),
(24, 1, 6, 70),
(25, 1, 9, 80),
(26, 2, 2, 70),
(27, 2, 4, 70),
(28, 2, 1, 350000000),
(29, 2, 10, 50),
(30, 2, 3, 20),
(31, 2, 5, 50),
(32, 2, 6, 30),
(33, 2, 9, 70);

-- --------------------------------------------------------

--
-- Table structure for table `tkriteria`
--

CREATE TABLE IF NOT EXISTS `tkriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kriteria` varchar(100) DEFAULT NULL,
  `kepentingan` double DEFAULT NULL,
  `costbenefit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tkriteria`
--

INSERT INTO `tkriteria` (`id_kriteria`, `nama_kriteria`, `kepentingan`, `costbenefit`) VALUES
(1, 'Harga', 4, 'cost'),
(2, 'Akses Jalur Utama', 5, 'Benefit'),
(3, 'Kemiringan Lereng', 4, 'Benefit'),
(4, 'Fasilitas (Kesehatan,Pendidikan,Peribatan,Pasar)', 3, 'Benefit'),
(5, 'Lingkungan Sekitar', 3, 'Benefit'),
(6, 'Potensi Bencana Alam (Banjir, Longsor,Kebekaran)', 2, 'Benefit'),
(9, 'Prospek Kawasan', 2, 'Benefit'),
(10, 'Intensitas Pengguna Lahan', 2, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `tpengguna`
--

CREATE TABLE IF NOT EXISTS `tpengguna` (
  `kdPengguna` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nmLengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tglMasuk` date NOT NULL,
  `levelPengguna` varchar(100) NOT NULL,
  `aktif` char(1) NOT NULL,
  PRIMARY KEY (`kdPengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tpengguna`
--

INSERT INTO `tpengguna` (`kdPengguna`, `username`, `password`, `nmLengkap`, `email`, `kontak`, `alamat`, `foto`, `tglMasuk`, `levelPengguna`, `aktif`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'freescriptsweb.com', 'mail.administrator@sultan.com', '-', 'Jalan :...', 'b020e47a5291d18b47146b8603af4c58Lucy-Frazer-MP.jpg', '2017-02-13', 'Administrator', 'Y');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
