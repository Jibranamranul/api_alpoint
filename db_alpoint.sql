-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2025 at 04:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alpoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_pelanggaran`
--

CREATE TABLE `tbl_kategori_pelanggaran` (
  `id` int(10) NOT NULL,
  `kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori_pelanggaran`
--

INSERT INTO `tbl_kategori_pelanggaran` (`id`, `kategori`) VALUES
(1, 'Ibadah\r\n'),
(2, 'Akhlaq'),
(3, 'Kegiatan Belajar Mengajar'),
(4, 'Kebahasaan\r\n'),
(5, 'Organisasi'),
(6, 'Ketertiban dan Keamanan'),
(7, 'Kebersihan dan Keindahan'),
(8, 'Perizinan'),
(9, 'Kesehatan'),
(10, 'Ektrakulikuler'),
(11, 'Keasramaan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_reward`
--

CREATE TABLE `tbl_kategori_reward` (
  `id` int(10) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori_reward`
--

INSERT INTO `tbl_kategori_reward` (`id`, `kategori`) VALUES
(1, 'Akademik'),
(2, 'Tahfizul Quran'),
(3, 'Ibadah\r\n'),
(4, 'Kebahasaan'),
(5, 'Ketertiban dan Keamanan\r\n'),
(6, 'Akhlaq'),
(7, 'Kegiatan Santri'),
(9, 'Perlombaan Luar Pesantren');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ket_pelanggaran`
--

CREATE TABLE `tbl_ket_pelanggaran` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(255) NOT NULL,
  `kategori` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ket_pelanggaran`
--

INSERT INTO `tbl_ket_pelanggaran` (`id`, `name`, `score`, `kategori`) VALUES
(1, 'Tidak Shalat Berjamaah di Masjid', 5, 1),
(2, 'Tidak Memakai Peci Saat Shalat', 5, 1),
(3, 'Bercanda Saat Shalat', 10, 1),
(4, 'Menaruh Al-Quran Sembarangan', 5, 1),
(5, 'Berkata Kasar', 10, 2),
(6, 'Ghosob ', 5, 2),
(7, 'Tidak Menggunakan Seragam Sesuai Harinya ', 5, 6),
(8, 'Tidak Menggunakan Seragam Sekolah', 5, 6),
(9, 'Tidak Mengikuti Jam Pelajaran Dengan Sengaja', 10, 6),
(10, 'Mengguanakan Bahasa Daerah', 5, 4),
(11, 'Merusak Sarana Fasilitas Pondok ', 5, 6),
(12, 'Tidak Membaca Dzikir Pagi atau Sore', 5, 1),
(13, 'Bercanda Saat di Masjid Antara Adzan dan Iqomat', 5, 1),
(14, 'Tidak Shalat Fardhu Dengan Sengaja', 80, 1),
(15, 'Mencuri', 90, 2),
(16, 'Membuka Situs Porno', 80, 2),
(17, 'Kabur', 80, 6),
(19, 'LGBT', 100, 2),
(20, 'Melawan Guru', 100, 2),
(21, 'Tidak Mengikuti Kegiatan OSAF', 5, 6),
(22, 'Membuat Organisasi lain Tanpa Izin', 20, 6),
(23, 'Membuat Gaduh Kelas', 10, 6),
(24, 'Tidak Melaksanakan Piket Kelas ', 5, 7),
(25, 'Tidak mengikuti kegiatan ilqo mufrodat', 5, 4),
(26, 'Tidak mengikuti kegiatan muhadatsah', 5, 4),
(27, 'Tidak betbahasa arab atau inggris sesuain ketentuan', 5, 4),
(28, 'Tidak menyetor hafalan mufrodat', 5, 4),
(29, 'Menyalah gunakan peralatan ekskul', 5, 10),
(30, 'Tidak mengikuti ketentuan ekskul wajib yang berlaku', 10, 10),
(31, 'Masuk kamar saat kegiatan sedang berlangsung', 10, 6),
(32, 'Tidur dikamar orang lain', 10, 6),
(33, 'Memelihara binatang ', 5, 6),
(34, 'Memiliki dan memakai aksesoris yang tidak islami', 5, 6),
(35, 'Menyimpan barang mahal', 10, 6),
(36, 'Tidak mengunci pintu lemari', 10, 6),
(37, 'Bebuat usil', 5, 6),
(38, 'Tidak memiliki mushaf', 10, 6),
(39, 'Tidak menjaga dan merawat buku pelajaran', 10, 6),
(40, 'Tidak menjaga dan merawat barang pribadi', 15, 6),
(41, 'Olahraga dikamar', 15, 6),
(42, 'Bercanda berlebihan', 15, 6),
(43, 'Berkuku panjang', 5, 7),
(44, 'Bercutek', 5, 7),
(45, 'Buang sampah sembarangan ', 5, 7),
(46, 'memanjat pohon', 10, 7),
(47, 'Berkelahi', 90, 6),
(48, 'Pura-pura sakit', 10, 9),
(49, 'Mengambil obat tanpa izin', 10, 9),
(50, 'Terlambat datang perizinan', 10, 8),
(51, 'Tidak memakai seragam perizinan', 10, 8),
(52, 'Tidur tidak ditempat yg ditentukan', 15, 11),
(53, 'Tidak melaksanakan piket', 10, 11),
(54, 'Pindah kamar tanpa izin', 10, 11),
(55, 'Membawa tamu tanpa izin', 10, 11),
(56, 'Membuat buku bacaan yang tidak isami', 30, 2),
(57, 'Menonoton film tidak islami di bioskop atau pun di tempat lai', 40, 2),
(58, 'Bermain dan mengunjungi tempat yang tidak islami', 40, 2),
(59, 'Menyontek dan melakukan tindakan kecurangan', 40, 3),
(60, 'Melawan guru dikelas', 75, 3),
(61, 'Kabur dari kelas pada waktu kbm', 60, 3),
(62, 'Melecehkan pengguna bahasa', 75, 4),
(63, 'Merusak sarana pesantren ', 40, 5),
(64, 'Mengejek,mencemooh atau mengolok-olok dan mengancam sesama santri', 75, 6),
(65, 'Menghina,melawan dan mengancam guru', 75, 6),
(66, 'Menghina,melawan dan mengancam pengurus', 75, 6),
(67, 'Mengintip', 50, 6),
(68, 'Memakai hal milik orang lain', 75, 6),
(69, 'Membawa,memiliki dan menggunakan senjata tajam,api dan senjata angin', 50, 6),
(70, 'membawa hp dan alat elektronik lainya', 60, 6),
(71, 'Menjual atau memperdagangkan barang di dalam pesantren', 60, 6),
(72, 'Membawa hap,laptop,yang dibawa wali santri ke asrama ', 50, 6),
(73, 'Bergaul dengan ob dan security', 30, 6),
(74, 'menitipkan barang atau meminta jasa yang melanggar disiplin ke on tau security', 40, 6),
(75, 'Menyalahgunakan perizinan', 50, 8),
(77, 'Tidak melaksanakan puasa ramadhan tanpa udzur syar\'i', 90, 1),
(78, 'Membuat buku bacaan atau mengambar yang mengandung unsur pornografi', 80, 2),
(79, 'Melakukan demonstrasi', 90, 2),
(80, 'menyebar fitnah ', 90, 2),
(81, 'Merusak nama baik pesantren', 90, 2),
(82, 'Menganiaya sesama teman', 90, 2),
(83, 'Berpacaran', 90, 2),
(84, 'Mengadu domba', 90, 2),
(85, 'Melecehkan,menghina,melawan pimpinan dewan guru dan segenap pengurus OSAF', 90, 6),
(86, 'Memberikan keterangan Palsu', 90, 6),
(87, 'membuat gank/maker', 90, 6),
(88, 'Merokok', 90, 6),
(89, 'Melakukan tindakan demonstrasi da provokasi destuktif dilingkungan peasantren secara tidak wajar', 100, 2),
(90, 'Pelecehan seksual', 100, 2),
(91, 'Melawan pimpinan dan guru peasantren secara langsung ', 100, 2),
(92, 'Melakukan asusila ', 100, 2),
(93, 'Membuat dan memakai tato ', 100, 6),
(94, 'Penganiyaan yang membuat luka berat/kematian', 100, 6),
(95, 'Tawuran ', 100, 6),
(96, 'Mengambil hak milik orang lain dalam jumlah besar', 100, 6),
(97, 'Membawa/ memiliki dan menkonsumsi narkoba dan miras', 100, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ket_reward`
--

CREATE TABLE `tbl_ket_reward` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `score` int(255) NOT NULL,
  `kategori` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ket_reward`
--

INSERT INTO `tbl_ket_reward` (`id`, `name`, `score`, `kategori`) VALUES
(1, 'Ranking 1 di Kelas', 40, 1),
(2, 'Ranking 2 di Kelas', 30, 1),
(3, 'Ranking 3 di Kelas', 20, 1),
(4, 'Melebihi Target Hafalan yang ditetapkan', 40, 2),
(5, 'Tepat waktu dalam shalat 5 waktu dalam 1 semester', 50, 3),
(6, 'Menaati seluruh peraturan ibadah selama 1 semester', 50, 3),
(7, 'Mentaati peraturan bahasa dalam 1 semester', 50, 4),
(8, 'Selalu berbahasa arab dan inggris dalam 1 semester', 50, 4),
(9, 'Suka menolong sesama', 30, 5),
(10, 'Tidak pernah buang sampah sembarangan', 20, 5),
(11, 'Terdiri sebagai santri teladan', 50, 6),
(12, 'Terpilih sebagai musyrif ', 50, 7),
(13, 'juara 1', 40, 9),
(14, 'juara 2', 30, 9),
(15, 'juara 3', 20, 9),
(16, 'rajin melaksanakan piket', 30, 5),
(18, 'kehadiran kbm 100% setiap 1 semester', 50, 7),
(19, 'menjadi ketua kelas, kamar, asrama, club eskul', 30, 6),
(20, 'terpilih sebagai pengurus OSAF teladan', 50, 7),
(21, 'kehadiran 100% dalam kegiatan kepesantrenan', 50, 7),
(22, 'tidak melanggar sedikitpun kebahasaan selama 1 semester', 50, 4),
(23, 'Mendapat nilai 9 pada ujian bahasa sekali dalam 1 bulan', 20, 4),
(24, 'Tidak pernah nyeker sekalipun', 30, 5),
(25, 'Memiliki lemari yang rapih dan selalu menguncinya selama kurang waktu minimal 1 semester', 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggaran`
--

CREATE TABLE `tbl_pelanggaran` (
  `id` int(10) NOT NULL,
  `id_name` int(100) NOT NULL,
  `id_pelanggaran` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelanggaran`
--

INSERT INTO `tbl_pelanggaran` (`id`, `id_name`, `id_pelanggaran`, `date`) VALUES
(1, 11, 75, '2025-05-05 09:14:02'),
(2, 4, 46, '2025-05-05 09:20:27'),
(3, 4, 50, '2025-05-05 16:42:25'),
(4, 4, 10, '2025-05-05 16:42:39'),
(5, 28, 30, '2025-05-08 09:52:34'),
(6, 18, 75, '2025-05-10 10:24:34'),
(7, 28, 54, '2025-05-10 10:25:18'),
(10, 7, 3, '2025-05-23 16:19:33'),
(11, 28, 48, '2025-05-26 10:07:59'),
(12, 28, 10, '2025-06-05 05:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posisi`
--

CREATE TABLE `tbl_posisi` (
  `id` int(10) NOT NULL,
  `posisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_posisi`
--

INSERT INTO `tbl_posisi` (`id`, `posisi`) VALUES
(1, 'Guru'),
(2, 'Murid'),
(3, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reward`
--

CREATE TABLE `tbl_reward` (
  `id` int(10) NOT NULL,
  `id_name` int(255) NOT NULL,
  `id_reward` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reward`
--

INSERT INTO `tbl_reward` (`id`, `id_name`, `id_reward`, `date`) VALUES
(1, 2, 5, '2025-03-01 07:46:48'),
(2, 2, 8, '2025-03-01 07:46:54'),
(3, 3, 1, '2025-03-01 07:47:00'),
(4, 3, 9, '2025-03-01 07:47:07'),
(5, 16, 7, '2025-05-05 15:31:38'),
(6, 17, 4, '2025-05-05 15:33:42'),
(7, 9, 6, '2025-05-05 15:34:37'),
(8, 31, 22, '2025-05-06 06:11:01'),
(9, 31, 5, '2025-05-06 06:12:29'),
(10, 31, 1, '2025-05-06 06:12:45'),
(11, 31, 12, '2025-05-23 16:39:34'),
(12, 6, 4, '2025-05-23 16:49:40'),
(13, 22, 2, '2025-05-26 10:06:42'),
(14, 8, 5, '2025-06-05 05:10:14'),
(15, 23, 1, '2025-06-05 05:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` int(100) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kelas` int(10) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `kelas`, `id`) VALUES
(2024010010, 'Muhammad Miftahusshiddiq', 5, 1),
(2024010013, 'Jibran Amranulhaq', 4, 2),
(2024010004, 'Fachri Ahmad Muzaki', 4, 3),
(2023010011, 'Dhiya Ulhaq', 6, 4),
(2023010002, 'Muhammad Abdurrahim Kholid', 6, 5),
(2024020006, 'Gaffa Mafaza Aqso Kencana', 2, 6),
(2024020003, 'Affan Lutfian Al-fath', 2, 7),
(2024020005, 'Fajri Mulki DZ', 2, 8),
(2024020002, 'Abdullah Hamzah ', 2, 9),
(2024020004, 'Ahmad Basyir', 2, 10),
(2024020007, 'Hafidzul Haq\r\n', 2, 11),
(2024020001, 'Abdullah Ahmad Faqih', 2, 12),
(2024010008, 'Khalil Ghufron Hidayat', 5, 13),
(2024010011, 'Muhammad Rizqi Damarjati\r\n\r\n\r\n', 5, 14),
(2024010002, 'Ali Syukhron Abdillah', 5, 15),
(2024010007, 'Hasan Afif Abdullah\r\n', 5, 16),
(2024010005, 'Fahri Novizar Ramdan ', 5, 17),
(2024010006, 'Hasbi Al Ghifari', 5, 18),
(2024010009, 'Miqdad Jihadin Alhaq', 5, 19),
(2024010003, 'Azzam Abdul Hakim', 5, 20),
(2024010001, 'Aiman Akbar Jihadi', 5, 21),
(2023010001, 'Muhammad Abdurahman Khalid', 6, 22),
(2023010003, 'Ibrahim', 6, 23),
(2023010009, 'Muhammad Farhan Anshori', 6, 24),
(2023010012, 'Muhammad Hafiz Al Kautsar', 6, 25),
(2023010013, 'Suheil Jundullah', 6, 26),
(2023010004, 'Maulana Asy Syamsi Hajar Aswad', 6, 27),
(2023010005, 'Muhammad Yusuf Syafiq', 6, 28),
(2023010008, 'Abdul Aziz Mulah Umar', 6, 29),
(2023010006, 'Muhammad Yahya Al Fatih', 6, 30),
(2023010007, 'Ahmad Husaeri', 6, 31),
(2025030001, 'Abyan Arkaan Vijar', 1, 32),
(2025030002, 'Hanifuddin R', 1, 33),
(2025030003, 'Ismail Rafiq Tsani', 1, 36),
(2025030004, 'Muhammad Hasbiyallah Agam Ayale', 1, 37),
(2025030005, 'Muhammad Zaki Bayu Adji Putra', 1, 38),
(2025030006, 'Muhammad Umar Syafiq', 1, 39),
(2025010001, 'Ahmad Zaky Romadhon', 4, 40),
(2025010002, 'Fathurrohman Husnayan Barsan', 4, 41),
(2025010003, 'Khadafi Azril', 4, 42),
(2025010004, 'Muhammad Abdul Yasser Arafah', 4, 43),
(2025010005, 'Muhammad Dzaky Harimurti', 4, 44),
(2025010006, 'Muhammad Fatan Al Farizi', 4, 45),
(2025010007, 'Muhammad Syahdan Al Asqalani', 4, 46),
(2025010008, 'Muhammad Zahabi Altaf', 4, 47);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_posisi` int(100) NOT NULL,
  `id_account` int(10) DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `id_posisi`, `id_account`, `password`) VALUES
(1, 'Ulhaq', 2, 4, '123'),
(2, 'muzaki', 2, 3, '111'),
(3, 'Sam', 1, NULL, '111'),
(4, 'Yusuf', 2, 28, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori_pelanggaran`
--
ALTER TABLE `tbl_kategori_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kategori_reward`
--
ALTER TABLE `tbl_kategori_reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ket_pelanggaran`
--
ALTER TABLE `tbl_ket_pelanggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_pelanggaran` (`kategori`);

--
-- Indexes for table `tbl_ket_reward`
--
ALTER TABLE `tbl_ket_reward`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_reward` (`kategori`);

--
-- Indexes for table `tbl_pelanggaran`
--
ALTER TABLE `tbl_pelanggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelanggaran` (`id_pelanggaran`),
  ADD KEY `id_name` (`id_name`);

--
-- Indexes for table `tbl_posisi`
--
ALTER TABLE `tbl_posisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reward` (`id_reward`),
  ADD KEY `id_name_reward` (`id_name`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_posisi` (`id_posisi`),
  ADD KEY `id_account` (`id_account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori_pelanggaran`
--
ALTER TABLE `tbl_kategori_pelanggaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_kategori_reward`
--
ALTER TABLE `tbl_kategori_reward`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_ket_pelanggaran`
--
ALTER TABLE `tbl_ket_pelanggaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_ket_reward`
--
ALTER TABLE `tbl_ket_reward`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_pelanggaran`
--
ALTER TABLE `tbl_pelanggaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_posisi`
--
ALTER TABLE `tbl_posisi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_ket_pelanggaran`
--
ALTER TABLE `tbl_ket_pelanggaran`
  ADD CONSTRAINT `kategori_pelanggaran` FOREIGN KEY (`kategori`) REFERENCES `tbl_kategori_pelanggaran` (`id`);

--
-- Constraints for table `tbl_ket_reward`
--
ALTER TABLE `tbl_ket_reward`
  ADD CONSTRAINT `kategori_reward` FOREIGN KEY (`kategori`) REFERENCES `tbl_kategori_reward` (`id`);

--
-- Constraints for table `tbl_pelanggaran`
--
ALTER TABLE `tbl_pelanggaran`
  ADD CONSTRAINT `id_name` FOREIGN KEY (`id_name`) REFERENCES `tbl_siswa` (`id`),
  ADD CONSTRAINT `id_pelanggaran` FOREIGN KEY (`id_pelanggaran`) REFERENCES `tbl_ket_pelanggaran` (`id`);

--
-- Constraints for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD CONSTRAINT `id_name_reward` FOREIGN KEY (`id_name`) REFERENCES `tbl_siswa` (`id`),
  ADD CONSTRAINT `id_reward` FOREIGN KEY (`id_reward`) REFERENCES `tbl_ket_reward` (`id`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `id_account` FOREIGN KEY (`id_account`) REFERENCES `tbl_siswa` (`id`),
  ADD CONSTRAINT `id_posisi` FOREIGN KEY (`id_posisi`) REFERENCES `tbl_posisi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
