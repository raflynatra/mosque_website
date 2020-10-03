-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 05:19 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
('219001', 'raflyprdn', '12345', 'Rafly Pradana');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `id_admin`) VALUES
(1, 'Syarat-syarat Hewan yang Akan Dikurbankan', '1. Harus berkurban dengan hewan ternak yang ditetapkan oleh syariat\r\nHewan yang ditetapkan oleh syariat, yakni: sapi, kambing, serta unta, dan tidak boleh berkurban dengan selain hewan-hewan tersebut. Sebagai tambahan, kerbau termasuk jenis sapi menurut pendapat para ahli fiqih.\r\n\r\nHal ini disandarkan pada firman Allah Ta’ala\r\n\r\n????????? ??????? ????????? ???????? ?????????????? ????? ??????? ?????? ??? ????????? ????? ????????? ?????????????\r\n\r\nDan bagi tiap-tiap umat telah Kami syariatkan penyembelihan (kurban), supaya mereka menyebut nama Allah terhadap binatang ternak yang telah direzekikan Allah kepada mereka.(1)\r\n\r\nYang paling afdhol adalah unta, setelahnya sapi, setelahnya kambing kibas setelahnya domba dan kambing, menurut pendapat yang paling rajih. (2)\r\n\r\nTidak masalah berkurban dengan hewan kurban jantan maupun betina. Berkata Imam Nawawy\r\n\r\n(??????) ???????????? ???????? ??????????? ??? ?????????????? ???? ??????? ???? ???????????? ?????? ????????? ??????????? ??????????? ??????? ??? ?????? ??????? ????????? ????????? ???? ????????????? ???????????? ????????? ????????? ????????? ???? ????????????? ???????????? ?????????? ????????? ????????? ????????? ???? ????????? ??????????? ???????????????? ????? ???????? ?????? ???????????? ???? ?????? ????????? ??????????? ??????????? ??????????? ????? ??????? ????????? ????????? ????????????.\r\n\r\nAdapun syarat diperbolehkannya dalam berkurban adalah hendaknya hewan kurban merupakan jenis hewan ternak yaitu unta, sapi, dan kambing. Dalam hal ini sama saja semua jenis unta, baik yang Bakhoti atau jenis ‘Irab, dan semua jenis sapi, baik kerbau atau ‘irab maupun jenis lainnya, dan semua jenis kambing dari domba atau kambing kacang atau yang sejenisnya. Tidak boleh selain hewan ternak, seperti sapi liar, keledai liar dan kambing liar dan selainnya tanpa ada pendapat di kalangan ulama, baik yang jantan atau pun betina.(3)\r\n\r\n2. Hewan kurban harus mencapai usia yang diperkenankan oleh syariat untuk dikurbankan\r\nSepakat ulama bahwasanya hewan kurban yang usianya di bawah ketentuan syariat maka sembelihanya tidak sah(4)\r\n\r\nAdapun untuk semua jenis hewan kurban harus mencapai usia musinnah, Perincian per masing-masing jenis adalah sebagai berikut:\r\n\r\nUnta harus berusia 5 tahun ke atas.\r\nSapi harus berusia dua tahun atau lebih\r\nKambing satu tahun atau lebih\r\nJabir bin Abdillah berkata, Rasulullah shallallahu ‘alaihi wa sallam bersabda;\r\n\r\n«?? ?????? ??? ????? ??? ?? ???? ????? ??????? ???? ?? ?????»\r\n\r\n“Janganlah kalian menyembelih (berkurban) kecuali musinnah (berumur satu tahun), dan jika sulit bagi kalian, maka sembelih lah oleh kalian jad’ah dari domba/biri-biri.”\r\n\r\nUsia Musinnah adalah usia yang ditandai tanggalnya gigi seri atas baik unta, sapi atau kambing.\r\n\r\nAdapun untuk jenis domba, jika tidak mampu berkurban dengan yang berusia satu tahun, maka boleh berkurban dengan jadz’ah (yg berusia enam bulan) atau yang diatasnya.\r\n\r\nDalam fatwanya, Lajnah Daimah menyatakan, “Dalil-dalil syar’i menunjukkan bahwasanya sah berkurban dengan domba yang usianya sudah sempurna mencapai enam bulan. (6)\r\n\r\n3. Hewan yang dikurbankan bukanlah hewan yang memiliki cacat\r\nCacat pada hewan kurban dibagi menjadi tiga kategori, salah satunya adalah cacat yang menyebabkan tidak sahnya kurban. Jumlahnya ada empat sebagaimana yang dijelaskan dalam sebuah hadits akan ketidaksahanya:\r\n\r\nButa Sebelah. Kalau putih bola matanya mendominasi lingkaran hitam matanya, sehingga bulatan hitam matanya hanya kecil, maka ini juga tidak sah dikurbankan. Atau buta kedua-duanya, yang tentu lebih tidak sah lagi untuk dikurbankan;\r\nYang benar-benar sedang terserang penyakit. Seperti demam yangmengakibatkan hewan tersebut kehilangan nafsu makan dan menjadi lemah, atau luka dalam atau yang serius pada tubuhnya yang berpengaruh terhadap kesehatannya. Jika penyakit yang mengenainya adalah penyakit yang ringan, maka hewan tersebut sah untuk dikurbankan;\r\nYang jelas-jelas pincang kakinya. Yang terputus atau patah kakinya tentu lebih utama untuk tidak dikurbankan, alias tidak sah;\r\nYang sangat kurus, sampai-sampai seperti tidak memiliki sum-sum.\r\nKeempat hal diatas dijelaskan oleh Rasulullah Shallallahu’alaihi wa sallam dalam sebuah hadits yang diriwayatkan Bara’ bin ‘Ajib Radhiallahu ‘anhu,\r\n\r\n«????? ?? ????? ?? ???????: ??????? ????? ?????? ???????? ????? ?????? ???????? ????? ?????? ???????? ???? ?? ????»\r\n\r\nEmpat hal yang membuat hewan kurban tidak sah untuk dikurbankan, buta matanya sebelah, yang jelas akan kebutaannya, yang sakit dengan penyakit yang jelas, yang pincang dengan jelas kepincangannya, dan yang kurus seperti tidak bersum-sum. (7)\r\n\r\n4. Hewan tersebut milik orang yang berkurban\r\nBukan hewan curian, rampasan atau yang diklaim milik dirinya dengan cara yang dzalim. Hewan yang digadaikan kepada dirinya, tidak boleh ia kurbankan, karena bukanlah miliknya.\r\n\r\n5. Disembelih pada waktu-waktu yang telah ditentukan syariat\r\nWaktunya adalah setelah shalat ‘Ied, dan ini adalah waktu yang afdhol. Batas waktu penyembelihan sampai dengan hari terakhir Tasyriq (tanggal 13 Dzulhijjah) ketika matahari sudah tenggelam.\r\n\r\nBarangsiapa yang menyembelih hewan kurbannya sebelum shalat ‘Ied atau setelah tenggelamnya matahari tanggal ke-13 Dzulhijjah, maka kurbannya tidak sah. Akan tetapi, jika terdapat udzur-udzur syar’i, semisal larinya hewan kurban, dan baru ditemukan setelah hari ke-14 Dzulhijjah atau setelahnya, maka tetap sah untuk dikurbankan.\r\n\r\nDiperbolehkan untuk menyembelih malam hari sebagaimana diperbolehkan untuk menyembelihnya siang hari. Akan tetapi siang hari tentu saja lebih utama.\r\n\r\nWallahu ‘alam\r\n\r\nKukuh Abu Yumnaa\r\n\r\n \r\n\r\nReferensi\r\n\r\nQur’an Surat Al Hajj:34\r\nBidayatul Mujtahid, hal.559 juz.2\r\nAl Majmu’ Lil imam An Nawawy, hal.393 Juz.8\r\nAl Majmu’ Lil imam An Nawawy, hal.176 Juz.1\r\nHR. Muslim no.1963\r\nFatwa Lajnah Daimah (377/11).\r\nHR. An Nasa’i, Ibnu Majah (3144) dan Ahmad (274/4).', 'kurban.jpg', '219001');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kegiatan`
--

CREATE TABLE `jadwal_kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `penanggung_jawab` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_kegiatan`
--

INSERT INTO `jadwal_kegiatan` (`id`, `nama`, `tanggal`, `waktu`, `penanggung_jawab`, `url`, `id_admin`) VALUES
(1, 'Pesantren Ramadhan', '2019-05-27', '06.00', 'Nurcahyono', 'rame.jpg', '219001'),
(2, 'Pengajian Rutin', '2019-08-08', '18.00', 'Agus', 'pengajian.jpg', '219001');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id` int(11) NOT NULL,
  `sumber` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `pemasukan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL,
  `id_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id`, `sumber`, `tanggal`, `pemasukan`, `pengeluaran`, `id_admin`) VALUES
(1, 'Infaq Jumat', '2019-10-18', 750000, 0, '219001'),
(2, 'Infaq Jumat', '2019-10-25', 975000, 0, '219001'),
(3, 'Infaq Jumat', '2019-11-01', 647000, 0, '219001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `jadwal_kegiatan`
--
ALTER TABLE `jadwal_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_kegiatan`
--
ALTER TABLE `jadwal_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `jadwal_kegiatan`
--
ALTER TABLE `jadwal_kegiatan`
  ADD CONSTRAINT `jadwal_kegiatan_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD CONSTRAINT `keuangan_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
