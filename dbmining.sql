-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2015 at 12:41 PM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbmining`
--

-- --------------------------------------------------------

--
-- Table structure for table `atribut`
--

CREATE TABLE IF NOT EXISTS `atribut` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `atribut`
--

INSERT INTO `atribut` (`id`, `atribut`, `nilai_atribut`) VALUES
(1, 'total', 'total'),
(2, 'umur', '=>30'),
(3, 'umur', '<30'),
(4, 'penghasilan', '10-<50juta'),
(5, 'penghasilan', '<2,5juta'),
(6, 'penghasilan', '2,5juta'),
(7, 'pekerjaan', 'tani'),
(8, 'pekerjaan', 'swasta'),
(9, 'jenis_barang', 'basa');

-- --------------------------------------------------------

--
-- Table structure for table `data_survey`
--

CREATE TABLE IF NOT EXISTS `data_survey` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(100) NOT NULL,
  `umur` varchar(100) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `data_survey`
--

INSERT INTO `data_survey` (`id`, `kode_barang`, `umur`, `penghasilan`, `pekerjaan`, `harga`, `status`) VALUES
(1, '0001', '=>30', '< 2,5juta', 'swasta', '>100juta', 'tidak'),
(2, '0009', '=>30', '< 2,5juta', 'Tani', '>100juta', 'tidak'),
(3, '0014', '=>30', '10-<50juta', 'swasta', '>100juta', 'ya'),
(4, '0025', '=>30', '2,5-10juta', 'Swasta', '50-100juta', 'ya'),
(5, '0034', '<30', '2,5-10juta', 'Swasta', '<50juta', 'ya'),
(6, '0081', '<30', '2,5-10juta', 'Tani', '<50juta', 'ya'),
(7, '0100', '<30', '10-<50juta', 'Tani', '<50juta', 'ya'),
(8, '0103', '=>30', '< 2,5juta', 'Swasta', '50-100juta', 'Tidak'),
(9, '0037', '<30', '< 2,5juta', 'Swasta', '<50juta', 'ya'),
(10, '0010', '<30', '2,5-10juta', 'Swasta', '50-100juta', 'ya'),
(11, '0023', '<30', '< 2,5juta', 'Tani', '50-100juta', 'ya'),
(12, '0040', '=>30', '10-<50juta', 'Tani', '50-100juta', 'ya'),
(13, '0056', '<30', '10-<50juta', 'Swasta', '>100juta', 'ya'),
(14, '0065', '=>30', '2,5-10juta', 'Tani', '50-100juta', 'tidak'),
(15, '0070', '=>30', '< 2,5juta', 'Swasta', '>100juta', 'tidak'),
(16, '0071', '=>30', '< 2,5juta', 'Tani', '>100juta', 'tidak'),
(17, '0077', '=>30', '10-<50juta', 'Swasta', '>100juta', 'ya'),
(18, '0080', '=>30', '2,5-10juta', 'Swasta', '50-100juta', 'ya'),
(19, '0089', '<30', '2,5-10juta', 'Swasta', '<50juta', 'ya'),
(20, '0093', '<30', '2,5-10juta', 'Tani', '<50juta', 'ya'),
(21, '0097', '<30', '10-<50juta', 'Tani', '<50juta', 'ya'),
(22, '0101', '=>30', '2,5-10juta', 'Swasta', '50-100juta', 'tidak'),
(23, '0002', '<30', '< 2,5juta', 'Swasta', '<50juta', 'ya'),
(24, '0004', '<30', '2,5-10juta', 'Swasta', '50-100juta', 'ya'),
(25, '0005', '<30', '< 2,5juta', 'Tani', '50-100juta', 'ya'),
(26, '0006', '=>30', '10-<50juta', 'Tani', '50-100juta', 'ya'),
(27, '0007', '<30', '10-<50juta', 'Swasta', '=>100juta', 'ya'),
(28, '0008', '=>30', '2,5-10juta', 'Tani', '50-100juta', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `iterasi_c45`
--

CREATE TABLE IF NOT EXISTS `iterasi_c45` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iterasi` varchar(3) NOT NULL,
  `atribut_gain_ratio_max` varchar(255) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `jml_kasus_total` varchar(5) NOT NULL,
  `jml_laris` varchar(5) NOT NULL,
  `jml_tdk_laris` varchar(5) NOT NULL,
  `entropy` varchar(10) NOT NULL,
  `inf_gain` varchar(10) NOT NULL,
  `split_info` varchar(10) NOT NULL,
  `gain_ratio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `iterasi_c45`
--

INSERT INTO `iterasi_c45` (`id`, `iterasi`, `atribut_gain_ratio_max`, `atribut`, `nilai_atribut`, `jml_kasus_total`, `jml_laris`, `jml_tdk_laris`, `entropy`, `inf_gain`, `split_info`, `gain_ratio`) VALUES
(1, '1', 'Total', 'Total', 'Total', '28', '20', '8', '0.8631', '', '', '0'),
(2, '2', 'umur', 'umur', '=>30', '14', '6', '8', '0.9852', '0.3705', '1', '0.3705'),
(3, '3', 'umur', 'umur', '<30', '14', '14', '0', '0', '0.3705', '1', '0.3705'),
(4, '4', 'umur', 'penghasilan', '10-<50juta', '4', '4', '0', '1', '0.6995', '0.5164', '0.6995'),
(5, '5', 'umur', 'penghasilan', '<2,5juta', '6', '0', '6', '0', '0.6995', '0.5164', '0.6995'),
(6, '6', 'umur', 'penghasilan', '2,5juta', '4', '2', '2', '1', '0.6995', '0.5164', '0.6995'),
(7, '7', 'penghasilan', 'pekerjaan', 'tani', '2', '0', '2', '0', '1', '0.9852', '1'),
(8, '8', 'penghasilan', 'pekerjaan', 'swasta', '2', '2', '0', '0', '1', '0.9852', '1');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`) VALUES
('manager', '1d0258c2440a8d19e716292b231e3190', 'Manager Perusahaan', 'manager.perusahaan@yahoo.com', '081267771344', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `mining_c45`
--

CREATE TABLE IF NOT EXISTS `mining_c45` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `jml_kasus_total` varchar(5) NOT NULL,
  `jml_laris` varchar(5) NOT NULL,
  `jml_tdk_laris` varchar(5) NOT NULL,
  `entropy` varchar(10) NOT NULL,
  `inf_gain` varchar(10) NOT NULL,
  `inf_gain_temp` varchar(10) NOT NULL,
  `split_info` varchar(10) NOT NULL,
  `split_info_temp` varchar(10) NOT NULL,
  `gain_ratio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mining_c45`
--

INSERT INTO `mining_c45` (`id`, `atribut`, `nilai_atribut`, `jml_kasus_total`, `jml_laris`, `jml_tdk_laris`, `entropy`, `inf_gain`, `inf_gain_temp`, `split_info`, `split_info_temp`, `gain_ratio`) VALUES
(1, 'Total', 'Total', '28', '20', '8', '0.8631', '', '', '', '', '0'),
(2, 'umur', '=>30', '14', '6', '8', '0.9852', '0.3705', '-0.4926', '1', '-0.5', '0.3705'),
(3, 'umur', '<30', '14', '14', '0', '0', '0.3705', '0', '1', '-0.5', '0.3705'),
(4, 'penghasilan', '10-<50juta', '8', '8', '0', '0', '0.8631', '0', '0.5164', '-0.5163871', '1.6714'),
(5, 'penghasilan', '<2,5juta', '0', '0', '0', '0', '0.8631', '0', '0.5164', '', '1.6714'),
(6, 'penghasilan', '2,5juta', '0', '0', '0', '0', '0.8631', '0', '0.5164', '', '1.6714'),
(7, 'pekerjaan', 'tani', '12', '8', '4', '0.9183', '0.0059', '-0.3935571', '0.9852', '-0.5238824', '0.006'),
(8, 'pekerjaan', 'swasta', '16', '12', '4', '0.8113', '0.0059', '-0.4636', '0.9852', '-0.4613456', '0.006');

-- --------------------------------------------------------

--
-- Table structure for table `pohon_keputusan_c45`
--

CREATE TABLE IF NOT EXISTS `pohon_keputusan_c45` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `id_parent` char(3) DEFAULT NULL,
  `jml_laris` varchar(5) NOT NULL,
  `jml_tdk_laris` varchar(5) NOT NULL,
  `keputusan` varchar(100) NOT NULL,
  `diproses` varchar(10) NOT NULL,
  `kondisi_atribut` varchar(255) NOT NULL,
  `looping_kondisi` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pohon_keputusan_c45`
--

