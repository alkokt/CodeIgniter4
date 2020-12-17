-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2020 pada 15.13
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'alika', NULL, '2020-12-13 06:50:54', 0),
(2, '::1', 'alika', NULL, '2020-12-13 07:13:19', 0),
(3, '::1', 'alika@gmail.com', 1, '2020-12-13 07:31:23', 1),
(4, '::1', 'alika@gmail.com', 1, '2020-12-13 07:34:34', 1),
(5, '::1', 'alika@gmail.com', 1, '2020-12-13 07:34:46', 1),
(6, '::1', 'alikaoktaviani', NULL, '2020-12-13 07:40:03', 0),
(7, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-13 07:51:49', 1),
(8, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-13 07:52:03', 1),
(9, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-13 07:54:53', 1),
(10, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 19:00:09', 1),
(11, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 19:03:07', 1),
(12, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 19:07:51', 1),
(13, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:23:30', 1),
(14, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:24:26', 1),
(15, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:37:34', 1),
(16, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:42:31', 1),
(17, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:42:45', 1),
(18, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:49:15', 1),
(19, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:50:14', 1),
(20, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:50:19', 1),
(21, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:54:14', 1),
(22, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 20:58:53', 1),
(23, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:07:52', 1),
(24, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:08:11', 1),
(25, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:08:18', 1),
(26, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:08:41', 1),
(27, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:08:52', 1),
(28, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:10:35', 1),
(29, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:11:45', 1),
(30, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:14:47', 1),
(31, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:15:18', 1),
(32, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:16:00', 1),
(33, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:20:31', 1),
(34, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:24:37', 1),
(35, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:45:46', 1),
(36, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:55:13', 1),
(37, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-15 21:59:47', 1),
(38, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-16 06:53:28', 1),
(39, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-16 07:16:28', 1),
(40, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-16 07:17:41', 1),
(41, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-16 07:20:05', 1),
(42, '::1', 'alikaoktaviani@gmail.com', 3, '2020-12-16 07:21:18', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sinopsis` varchar(9999) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `genre`, `sampul`, `penerbit`, `sinopsis`, `created_at`, `updated_at`) VALUES
(1, 'Super Dragon Ball Heroes: Dark Demon Real Mission 02', 'super-dragon-ball-heroes-dark-demon-real-mission-02', 'Yoshitaka Nagayama', 'Action & Petualang', 'aa.jpg', 'Elex Media Komputindo', 'Para penyihir jahat dari Dunia Kegelapan mengejar Dragon Ball Kegelapan untuk membangkitkan kembali kekuatan pemimpin mereka Mechakabura. Demi mencegah bangkitnya kekuatan jahat, Kaioshin Penguasa Waktu dan pasukan Time Patrol yang terdiri atas para jagoan dari berbagai ruang waktu juga berusaha menghentikan mereka. Pada akhirnya, sanggupkah mereka mencegah kekuatan Dragon Ball Kegelapan jatuh ke tangan para orang jahat?', NULL, '2020-12-15 21:55:27'),
(2, 'One Piece 91', 'one-piece-91', 'Eiichiro Oda', 'Action & Petualang', 'bb.jpg', 'Elex Media Komputindo', 'Luffy yang telah berlabuh di Negara Wano bertemu seorang anak perempuan dan cerita pun bergulir! Ada di mana teman-temannya yang terpencar!? Lalu, fakta mengejutkan apa yang tersembunyi di negara ini!? Babak pergolakan Negara Wano yang tak terhindarkan dimulai! Simak kisah petualangan di lautan, One Piece!', NULL, NULL),
(3, ' Kanata Kakeru - Run into The Horizon 01\r\n\r\n', 'kanata-kakeru', 'SHIN TAKAHASHI', 'School Life', 'cc.jpg', 'Elex Media Komputindo', 'Kehidupan biasa Haruto, anak pemilik penginapan di Hakone, berubah dengan kedatangan siswi pindahan, Kanata. Siswi SD aneh dari Tokyo yang setiap pagi berlari mengejar bus sekolah itu membuatnya penasaran, terutama dengan pengakuannya bahwa dia suka berlari mendahului orang! Inilah kisah masa muda yang akan membuat kalian ingin ikut berlari menyongsong masa depan...', NULL, NULL),
(4, ' New Crayon Shinchan 05', 'new-crayon-shinchan', 'YOSHITO USUI, UY STUDIO', 'Action & Petualang', 'dd.jpg', 'Elex Media Komputindo', 'Shinchan dan ayahnya akan pergi menonton pertunjukan pahlawan bertopeng. Karena Shinchan ke toilet dahulu, mereka ketinggalan kereta. Akibatnya mereka harus menunggu kereta berikutnya, jadilah mereka terlambat melihat pertunjukan. Mereka berdua kecewa. Namun... terjadi sesuatu!', NULL, NULL),
(5, 'Detektif Kindaichi (Premium) 20', 'detektif-kindaichi-premium-20', 'Seimaru Amagi', 'Misteri', 'ee.jpg', 'Elex Media Komputindo', 'Hajime bersama Miyuki dan sahabat baiknya, Senke, tersesat di sebuah lembaga riset yang sudah berubah menjadi gedung terbengkalai. Bekas-bekas eksperimen binatang yang menjijikkan membentang sejauh mata memandang. Bekas cakaran hewan buas yang masih jelas memberi tahu mereka tentang bangkitnya Cerberus, anjing setan dalam legenda. Kemudian, kemunculan gerombolan anjing gila yang tiba-tiba mengepung mereka membuat mereka tidak bisa kabur. Taring anjing setan yang muncul dan menghilang bak hantu berturut-turut membunuh mangsa! Tidak hanya itu, Senke pun digigit anjing liar tersebut dan terancam penyakit rabies! Demi menyelamatkan sahabatnya, Hajime bersumpah akan meloloskan mereka dari kandang raksasa Cerberus itu!', NULL, '2020-12-15 21:53:26'),
(23, 'ALik', 'alik', 'Alika', 'ALika', '1608090968_935076d2570eb1b26a89.jpg', 'ALika', 'Komik ini bercerita tentang sekelompok anak SMA yang mengikuti sebuah klub American Football. Tokoh utama komik ini bernama Kobayakawa Sena, seorang murid SMA Deimon yang lemah. Walaupun begitu, sena memiliki kaki yang amat cepat karena sering disuruh-suruh (dijadikan budak), hal itu dianggap latihan baginya. Bakat ini dilihat oleh Yoichi Hiruman, kapten dari tim Amefuto Deimon Devil Bats di sekolah mereka dan mengajak Sena masuk klub dengan berbagai macam cara. Agar tidak ketahuan, Sena dipakaikan eyeshield (pelindung mata yang dipasang di helm) berwarna pada helmnya dan diberikan nama samaran Eyeshield 21.', '2020-12-15 21:56:08', '2020-12-15 21:57:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-13-051607', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1607836886, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1607859624, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `nilai` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `id_siswa`, `id_pelajaran`, `semester`, `nilai`) VALUES
(1, 1, 1, 1, '90.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Vanya Anggraini', 'Psr. Yos No. 608, Administrasi Jakarta Barat 70800, PapBar', '2000-05-14 21:18:48', '2020-12-13 01:34:52'),
(2, 'Eka Marpaung', 'Jr. Setia Budi No. 788, Payakumbuh 79603, KalUt', '1973-03-25 20:41:07', '2020-12-13 01:34:52'),
(3, 'Hartana Nashiruddin M.Ak', 'Psr. Baranangsiang No. 328, Sorong 82855, SulTra', '2008-01-22 02:58:16', '2020-12-13 01:34:52'),
(4, 'Rika Lidya Rahmawati S.Ked', 'Jr. Jagakarsa No. 196, Manado 59265, SumSel', '1970-01-13 20:28:55', '2020-12-13 01:34:52'),
(5, 'Tri Ardianto', 'Psr. Bambu No. 846, Samarinda 86327, SumBar', '1989-12-08 15:59:29', '2020-12-13 01:34:52'),
(6, 'Prasetya Maulana', 'Dk. Casablanca No. 507, Tarakan 48332, SulSel', '1990-02-01 00:48:47', '2020-12-13 01:34:52'),
(7, 'Amelia Susanti S.IP', 'Ki. Kusmanto No. 14, Padangsidempuan 62595, JaTeng', '1986-04-24 07:46:19', '2020-12-13 01:34:52'),
(8, 'Farhunnisa Mulyani', 'Gg. B.Agam 1 No. 892, Tangerang Selatan 22144, SumBar', '2001-02-24 21:40:41', '2020-12-13 01:34:52'),
(9, 'Argono Pratama M.Ak', 'Dk. W.R. Supratman No. 830, Sukabumi 77281, KalTeng', '2013-05-11 14:52:14', '2020-12-13 01:34:52'),
(10, 'Lulut Warji Nababan', 'Psr. Merdeka No. 366, Lhokseumawe 13684, Jambi', '1980-12-15 18:55:51', '2020-12-13 01:34:53'),
(11, 'Ina Suartini', 'Psr. Flora No. 567, Pekalongan 59826, SumBar', '1983-02-07 10:52:20', '2020-12-13 01:34:53'),
(12, 'Tira Talia Rahimah M.Kom.', 'Psr. Raya Ujungberung No. 376, Ambon 24897, Gorontalo', '1979-11-29 10:08:11', '2020-12-13 01:34:53'),
(13, 'Asman Sihombing', 'Ds. Yogyakarta No. 872, Jambi 67960, Banten', '2004-04-05 06:50:50', '2020-12-13 01:34:53'),
(14, 'Hartana Putra', 'Psr. R.M. Said No. 150, Administrasi Jakarta Utara 25017, DIY', '2004-01-30 14:50:40', '2020-12-13 01:34:53'),
(15, 'Talia Padmasari', 'Kpg. Sugiono No. 337, Dumai 44190, Bengkulu', '1986-11-03 04:03:12', '2020-12-13 01:34:53'),
(16, 'Irsad Karma Winarno', 'Gg. Sutami No. 451, Bontang 35867, KalTim', '2014-07-16 23:06:44', '2020-12-13 01:34:53'),
(17, 'Hilda Palastri', 'Jln. Mahakam No. 19, Bukittinggi 27405, JaTeng', '2008-06-17 07:13:17', '2020-12-13 01:34:53'),
(18, 'Puput Kezia Permata', 'Kpg. Tambun No. 607, Padang 29235, NTB', '2009-01-27 12:08:21', '2020-12-13 01:34:53'),
(19, 'Martaka Setiawan', 'Psr. Salak No. 511, Binjai 43596, DKI', '1985-08-27 16:08:01', '2020-12-13 01:34:53'),
(20, 'Bancar Pratama S.E.I', 'Kpg. Sukabumi No. 312, Gunungsitoli 81373, KalTim', '1992-12-26 18:32:13', '2020-12-13 01:34:53'),
(21, 'Jasmin Diah Riyanti S.E.', 'Psr. Qrisdoren No. 74, Ambon 72590, KalTim', '2000-09-02 12:39:39', '2020-12-13 01:34:53'),
(22, 'Ridwan Damanik', 'Gg. Honggowongso No. 149, Langsa 91797, Bali', '2003-12-28 23:46:34', '2020-12-13 01:34:53'),
(23, 'Umi Melani S.Sos', 'Dk. Yohanes No. 476, Ambon 36200, Bali', '2002-02-25 11:31:17', '2020-12-13 01:34:53'),
(24, 'Prasetya Prayoga', 'Dk. Sutarto No. 392, Administrasi Jakarta Utara 63262, Papua', '1997-09-22 20:20:42', '2020-12-13 01:34:54'),
(25, 'Makara Maulana', 'Dk. Sukajadi No. 618, Palangka Raya 45840, KalTim', '1987-02-22 20:08:03', '2020-12-13 01:34:54'),
(26, 'Nilam Uyainah S.Farm', 'Jr. Hasanuddin No. 131, Bengkulu 64917, Papua', '2010-01-04 15:32:35', '2020-12-13 01:34:54'),
(27, 'Ulva Melani', 'Gg. Pelajar Pejuang 45 No. 938, Palu 74679, Aceh', '1998-03-26 11:46:16', '2020-12-13 01:34:54'),
(28, 'Sakura Ophelia Pertiwi M.M.', 'Jln. Otto No. 976, Banjarmasin 67454, KalSel', '1990-01-22 16:25:23', '2020-12-13 01:34:54'),
(29, 'Pardi Maheswara', 'Ds. Basoka Raya No. 427, Blitar 49872, Lampung', '2011-01-30 13:00:33', '2020-12-13 01:34:54'),
(30, 'Silvia Mulyani', 'Ki. Diponegoro No. 855, Pasuruan 96964, PapBar', '1995-06-16 20:28:42', '2020-12-13 01:34:54'),
(31, 'Titi Pudjiastuti', 'Gg. W.R. Supratman No. 336, Langsa 26167, JaTeng', '1978-05-06 05:38:03', '2020-12-13 01:34:54'),
(32, 'Vivi Aryani', 'Psr. Abdul Rahmat No. 352, Payakumbuh 64075, NTT', '2007-09-29 20:32:26', '2020-12-13 01:34:54'),
(33, 'Sabrina Prastuti', 'Gg. Pasirkoja No. 124, Parepare 76655, Papua', '2019-03-24 22:56:05', '2020-12-13 01:34:54'),
(34, 'Kacung Dariati Prayoga', 'Jr. Babakan No. 548, Metro 96235, DIY', '2017-03-04 22:29:01', '2020-12-13 01:34:54'),
(35, 'Citra Wahyuni', 'Kpg. Batako No. 151, Pematangsiantar 20759, BaBel', '1988-05-17 14:28:51', '2020-12-13 01:34:54'),
(36, 'Mahmud Rajata', 'Jln. Abdul Rahmat No. 220, Binjai 63778, KalSel', '1985-03-16 11:23:22', '2020-12-13 01:34:54'),
(37, 'Jasmin Puspita', 'Dk. Gegerkalong Hilir No. 320, Solok 35479, MalUt', '1970-09-10 04:43:55', '2020-12-13 01:34:54'),
(38, 'Lutfan Situmorang', 'Ki. BKR No. 580, Depok 37601, MalUt', '2007-01-28 08:21:43', '2020-12-13 01:34:54'),
(39, 'Cinta Susanti', 'Ki. Surapati No. 71, Serang 74329, Papua', '1999-03-23 11:52:00', '2020-12-13 01:34:54'),
(40, 'Pia Suartini S.Gz', 'Ds. Sutami No. 786, Tebing Tinggi 34042, SumSel', '1985-12-21 18:21:05', '2020-12-13 01:34:55'),
(41, 'Wardi Irawan', 'Ds. Soekarno Hatta No. 137, Palangka Raya 81853, KalBar', '2005-12-28 09:06:47', '2020-12-13 01:34:55'),
(42, 'Rahmi Nasyiah', 'Jln. Pahlawan No. 656, Banjarmasin 37035, SumSel', '1997-12-11 11:51:16', '2020-12-13 01:34:55'),
(43, 'Vega Gunarto', 'Jln. Untung Suropati No. 240, Administrasi Jakarta Timur 16765, SulBar', '2020-07-06 13:38:07', '2020-12-13 01:34:55'),
(44, 'Anastasia Usamah', 'Jr. Baung No. 267, Bitung 70737, SumBar', '1983-08-10 06:20:16', '2020-12-13 01:34:55'),
(45, 'Anastasia Eva Riyanti M.Kom.', 'Ds. Kyai Mojo No. 173, Tanjung Pinang 47225, MalUt', '1980-09-07 17:23:23', '2020-12-13 01:34:55'),
(46, 'Sabrina Lailasari', 'Gg. Katamso No. 757, Padangsidempuan 80423, Jambi', '1972-06-13 15:03:52', '2020-12-13 01:34:55'),
(47, 'Hendri Januar M.Pd', 'Psr. Achmad No. 624, Surakarta 58862, Bali', '2003-05-15 18:48:10', '2020-12-13 01:34:55'),
(48, 'Harto Anggriawan', 'Jr. Kiaracondong No. 174, Tasikmalaya 84748, SumBar', '2009-07-28 20:44:07', '2020-12-13 01:34:55'),
(49, 'Nadine Mandasari', 'Dk. Reksoninten No. 451, Mataram 35253, KepR', '2015-05-25 20:34:12', '2020-12-13 01:34:55'),
(50, 'Maimunah Farida', 'Ds. Bappenas No. 109, Langsa 42987, KepR', '1974-09-02 11:41:39', '2020-12-13 01:34:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `nama_pelajaran`) VALUES
(1, 'Matematika'),
(2, 'Fisika'),
(3, 'Biologi'),
(4, 'Kimia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `Alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `tempat_lahir`, `tanggal_lahir`, `Alamat`) VALUES
(1, '2019077', 'Andi Nur Salsabila Syamsu', 'Makassar', '2001-09-20', 'Tidung 10 Stp 8 No.105 A'),
(2, '2019078', 'Sakinah Yunus', 'Sidrap', '2001-05-20', 'Sudiang'),
(3, '2017001', 'Alika Oktaviani', 'Sidrap', '2001-10-25', 'Kos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `hak_akses` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'alika@gmail.com', 'alikaoktaviani', '$2y$10$ZWP9lcWty.WmlwfIc0.qa.tcmvWs.xeoo4bZO.HiWfMukvSAc.dGS', NULL, NULL, NULL, 'eff7ffb82a31121fbf026cda7600553e', NULL, NULL, 0, 0, '2020-12-13 07:44:57', '2020-12-13 07:44:57', NULL),
(3, 'alikaoktaviani@gmail.com', 'alika', '$2y$10$SqL8iVl3XHuhD2XHldh10uHrKcO.rjavaauWPaE6pyvM7iuY9pDDq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-13 07:48:15', '2020-12-13 07:48:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
