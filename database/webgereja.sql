-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2024 pada 18.24
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgereja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL,
  `level` varchar(40) DEFAULT NULL,
  `photo_profile` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`, `level`, `photo_profile`, `email`, `nama`) VALUES
(1, 'admin', '$2y$10$mHlZ9AFZ/iacrdP3eTzh/ussYDNARlOk13sg3JpLT3a3Ob.p2RKWu', 'jVVei3128F6bfusLMDAJrdm2gHFoNlkOP4Mr5OvYWsmBjq6Wh8tGcQyaZSUpEBQT', 'admin', '58a65bcb757e557b7f641dc01e486bb1.png', NULL, 'Brilliant');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `excerpt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `user`, `judul`, `slug`, `isi`, `waktu`, `foto`, `view_count`, `excerpt`) VALUES
(4, 1, 'Penyaluran Bantuan Terhadap Siswa Korban Bencana', 'penyaluran-bantuan-terhadap-siswa-korban-2', '<p>Selama bertahun-tahun, manusia telah menciptakan berbagai karya seni yang terinspirasi oleh keindahan alam dan budaya dunia. Karya seni wisata adalah hasil ekspresi kreatif yang berfungsi sebagai medium untuk mengabadikan pengalaman perjalanan, menciptakan kesan mendalam, dan membagikan keindahan dunia kepada orang lain. Dalam materi ini, kita akan menjelajahi berbagai jenis karya seni wisata dan mengapa mereka begitu penting dalam dunia perjalanan.</p><p>Selama bertahun-tahun, manusia telah menciptakan berbagai karya seni yang terinspirasi oleh keindahan alam dan budaya dunia. Karya seni wisata adalah hasil ekspresi kreatif yang berfungsi sebagai medium untuk mengabadikan pengalaman perjalanan, menciptakan kesan mendalam, dan membagikan keindahan dunia kepada orang lain. Dalam materi ini, kita akan menjelajahi berbagai jenis karya seni wisata dan mengapa mereka begitu penting dalam dunia perjalanan.<br></p>', '2024-05-21 09:44:07', 'f65210f4c0452d54da3c05e8be7df216.jpg', 62, 'Menyalurkan bantuan kepada peserta didik yang terdampak bencana banjir di Kota Manado.'),
(5, 1, 'Sosialisasi Pembelajaran Dalam Masa Pandemi', 'sosialisasi-pembelajaran-dalam-masa-pandemi-2', '<p>Selama bertahun-tahun, manusia telah menciptakan berbagai karya seni yang terinspirasi oleh keindahan alam dan budaya dunia. Karya seni wisata adalah hasil ekspresi kreatif yang berfungsi sebagai medium untuk mengabadikan pengalaman perjalanan, menciptakan kesan mendalam, dan membagikan keindahan dunia kepada orang lain. Dalam materi ini, kita akan menjelajahi berbagai jenis karya seni wisata dan mengapa mereka begitu penting dalam dunia perjalanan.</p><p>Selama bertahun-tahun, manusia telah menciptakan berbagai karya seni yang terinspirasi oleh keindahan alam dan budaya dunia. Karya seni wisata adalah hasil ekspresi kreatif yang berfungsi sebagai medium untuk mengabadikan pengalaman perjalanan, menciptakan kesan mendalam, dan membagikan keindahan dunia kepada orang lain. Dalam materi ini, kita akan menjelajahi berbagai jenis karya seni wisata dan mengapa mereka begitu penting dalam dunia perjalanan.<br></p>', '2024-04-05 09:29:11', '86a46022e3d843c104dcd4f63ea06324.jpg', 37, 'Pemerintah telah memberikan ruang untuk Pembelajaran Tatap Muka pada Semester Genap, dengan memenuhi sejumlah Daftar Periksa. '),
(6, 1, 'Pembelajaran Aktif: Memaksimalkan Potensi Siswa di Era Digital', 'pembelajaran-aktif-memaksimalkan-potensi-siswa', '**Pembelajaran Aktif: Memaksimalkan Potensi Siswa di Era Digital**<div><br></div><div>Dalam era yang dipenuhi dengan perkembangan teknologi, pendidikan mengalami pergeseran paradigma. Sekarang, bukan lagi tentang seberapa banyak informasi yang dapat diserap siswa, tetapi lebih kepada bagaimana siswa dapat mengaplikasikan pengetahuan tersebut dalam kehidupan nyata. Inilah yang menjadi inti dari konsep pembelajaran aktif.</div><div><br></div><div>Pembelajaran aktif menempatkan siswa sebagai subjek aktif dalam proses belajar. Bukan lagi menjadi objek yang pasif yang hanya menerima informasi dari guru, melainkan siswa didorong untuk aktif berpartisipasi, berdiskusi, menemukan solusi, dan berkolaborasi dengan sesama siswa.</div><div><br></div><div>Salah satu metode pembelajaran aktif yang sedang populer adalah pembelajaran berbasis proyek. Dalam metode ini, siswa diberikan proyek-proyek nyata yang memerlukan mereka untuk menerapkan pengetahuan dan keterampilan yang telah dipelajari dalam situasi yang mirip dengan dunia nyata. Misalnya, siswa dapat diminta untuk merancang solusi inovatif untuk masalah lingkungan di komunitas mereka, atau membuat produk teknologi yang memecahkan masalah sosial.</div><div><br></div><div>Tidak hanya itu, integrasi teknologi dalam pembelajaran juga menjadi kunci dalam pembelajaran aktif. Dengan memanfaatkan berbagai alat dan aplikasi digital, guru dapat menciptakan pengalaman belajar yang lebih menarik dan interaktif bagi siswa. Misalnya, penggunaan platform pembelajaran daring memungkinkan siswa untuk belajar secara mandiri, mengakses materi pelajaran kapan pun dan di mana pun mereka berada.</div><div><br></div><div>Namun demikian, kesuksesan pembelajaran aktif tidak hanya bergantung pada teknologi. Peran guru sebagai fasilitator pembelajaran yang menginspirasi dan memandu siswa dalam proses belajar masih sangat penting. Guru harus mampu menciptakan lingkungan belajar yang memotivasi siswa, memfasilitasi diskusi yang produktif, dan memberikan umpan balik yang konstruktif.</div><div><br></div><div>Dengan menerapkan konsep pembelajaran aktif, kita tidak hanya menciptakan siswa yang memiliki pengetahuan yang luas, tetapi juga siswa yang memiliki keterampilan kritis, kreatif, dan kolaboratif yang diperlukan untuk berhasil di dunia yang terus berubah. Inilah masa depan pendidikan yang kita harapkan: sebuah pendidikan yang memaksimalkan potensi setiap siswa untuk menjadi pemimpin masa depan yang tangguh dan inovatif.</div>', '2024-05-21 09:41:55', 'cd425b71f2ad0e85f7db7daa0711678c.png', 9, 'Dalam era yang dipenuhi dengan perkembangan teknologi, pendidikan mengalami pergeseran paradigma.'),
(7, 1, 'Menjadi Guru yang Berdaya: Kunci Sukses Pendidikan di Era Modern', 'menjadi-guru-yang-berdaya-kunci', '**Menjadi Guru yang Berdaya: Kunci Sukses Pendidikan di Era Modern**<div><br></div><div>Peran seorang guru tidak pernah lekang oleh waktu. Namun, dengan masuknya era modern yang dipenuhi dengan teknologi, tuntutan terhadap guru pun semakin berkembang. Guru modern bukan hanya sebagai penyampai informasi, tetapi juga sebagai fasilitator pembelajaran, motivator, dan bahkan inspirator bagi siswa.</div><div><br></div><div>Pentingnya menjadi guru yang berdaya tidak hanya terletak pada kemampuan menguasai materi pelajaran, tetapi juga pada kemampuan untuk beradaptasi dengan perkembangan zaman. Guru harus mampu memanfaatkan teknologi sebagai alat bantu pembelajaran yang efektif. Mulai dari penggunaan presentasi digital hingga platform pembelajaran daring, teknologi dapat menjadi sarana yang powerful untuk menciptakan pengalaman belajar yang menarik dan interaktif bagi siswa.</div><div><br></div><div>Selain itu, menjadi guru yang berdaya juga berarti memiliki keterampilan dalam membimbing siswa untuk mengembangkan kemampuan kritis, kreatif, dan kolaboratif. Guru harus mampu menciptakan lingkungan belajar yang memfasilitasi diskusi, eksperimen, dan pemecahan masalah, sehingga siswa dapat aktif berpartisipasi dalam proses pembelajaran.</div><div><br></div><div>Namun, menjadi guru yang berdaya bukanlah tugas yang mudah. Diperlukan kesabaran, dedikasi, dan komitmen untuk terus belajar dan berkembang. Guru harus selalu membuka diri terhadap berbagai inovasi dan perubahan dalam dunia pendidikan, serta siap untuk menghadapi tantangan dan hambatan yang mungkin muncul di sepanjang perjalanan karir mereka.</div><div><br></div><div>Meskipun demikian, menjadi guru yang berdaya adalah investasi yang bernilai. Guru yang mampu menginspirasi, memotivasi, dan membimbing siswa untuk mencapai potensi terbaik mereka akan meninggalkan jejak yang tak terlupakan dalam kehidupan siswa-siswanya. Dengan menjadi guru yang berdaya, kita tidak hanya membentuk generasi yang cerdas dan kompeten, tetapi juga membantu menciptakan masa depan yang lebih baik untuk bangsa dan dunia.</div>', '2024-05-21 09:43:14', 'fbe2fbfc141dbd6ae1c28bffec293c6b.jpg', 11, 'Peran seorang guru tidak pernah lekang oleh waktu. Namun, dengan masuknya era modern yang dipenuhi dengan teknologi, tuntutan terhadap guru pun semakin berkembang.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `denah`
--

CREATE TABLE `denah` (
  `id` int(11) NOT NULL,
  `denah` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `denah`
--

INSERT INTO `denah` (`id`, `denah`) VALUES
(1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15769.686122737925!2d121.6493651!3d-8.8402878!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dad58b596591155%3A0xedf154f4020cab19!2sGMIT%20Jemaat%20Syalom%20Ende!5e0!3m2!1sid!2sid!4v1729872070490!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `denahbangunan`
--

CREATE TABLE `denahbangunan` (
  `id` int(11) NOT NULL,
  `denahbangunan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `denahbangunan`
--

INSERT INTO `denahbangunan` (`id`, `denahbangunan`) VALUES
(1, 'd8f94faec17e8ca47c7f0b7a59069980.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekskul`
--

CREATE TABLE `ekskul` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ekskul`
--

INSERT INTO `ekskul` (`id`, `judul`, `foto`, `desc`, `slug`) VALUES
(15, 'Sains', '933a502efb06d511a6c398a67afab9b7.jpeg', '', 'sains'),
(16, 'Pramuka', '6bcbd95c5e9d3272cfd98803fd317c2b.jpeg', '', 'pramuka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id`, `file`, `keterangan`) VALUES
(9, 'f3adbbacfe828f285ccb94a85797f244.pdf', 'Liturgi Kebaktian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `user` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id`, `foto`, `judul`, `waktu`, `user`) VALUES
(7, '692203acb9fd79da11ee7ae02e38ece6.png', 'A', '2024-04-05 09:07:06', '1'),
(8, 'a8274f7637cedd332d6dca2e9f16072c.png', 'B', '2024-04-05 09:07:37', '1'),
(9, '91973abcf84fe20d539749fc6c0deddd.png', 'C', '2024-04-05 09:07:48', '1'),
(10, 'e05b33e1e6af78fa0de5938c3dd92c30.png', 'E', '2024-04-05 09:08:02', '1'),
(11, '3dbbd8318e32321eeeee97a93e539ee2.png', 'F', '2024-04-05 09:08:15', '1'),
(12, '5ea49648d55b579687375ec85727d9e3.png', 'G', '2024-04-05 09:08:25', '1'),
(13, '2a5003fd16b7d00c52b43f9338ea70be.png', '1', '2024-04-05 09:09:43', '1'),
(14, '8ed46b58fc4561b6fd077f73bbf158b0.png', '2', '2024-04-05 09:09:54', '1'),
(15, '4b59c99eb5adabfd1cc16853ceb5b8f8.png', '3', '2024-04-05 09:10:07', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `app_name` varchar(150) NOT NULL,
  `nama_sekolah` varchar(150) NOT NULL,
  `host_mail` varchar(50) NOT NULL,
  `port_mail` varchar(10) NOT NULL,
  `crypto_smtp` varchar(20) NOT NULL,
  `account_gmail` varchar(50) NOT NULL,
  `pass_gmail` varchar(50) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `breadcumb` varchar(100) DEFAULT NULL,
  `map` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `general`
--

INSERT INTO `general` (`id`, `app_name`, `nama_sekolah`, `host_mail`, `port_mail`, `crypto_smtp`, `account_gmail`, `pass_gmail`, `whatsapp`, `logo`, `alamat`, `instagram`, `facebook`, `twitter`, `youtube`, `jurusan`, `breadcumb`, `map`) VALUES
(1, 'Website Gereja', 'GMIT Syalom Ende', 'mail.zhafranhashif.com', '465', 'ssl', 'gmitsyalomende@gmail.com', 'pmb2023', '085242358994', '89335b8a6e2c5ad189a19db85cd647b5.png', 'Kel. Onekore, Kec. Ende Tengah, Kabupaten Ende, Nusa Tenggara Timur', '#', '#', '#', '#', 'tidak', 'ee266970fbe22e84a8782084aa5f5395.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nbm` varchar(100) DEFAULT NULL,
  `pendidikan` varchar(100) DEFAULT NULL,
  `alumni` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `nbm`, `pendidikan`, `alumni`, `jabatan`, `foto`) VALUES
(11, 'Godfried Elmarthen Soan', NULL, 'S2', '-', 'Pendeta', 'b73b49df716d9f3a77154dd4c89ca33c.png'),
(12, 'Benyamin Huwae, S.Th', NULL, 'S2', '-', 'Pendeta', '54e163fb6d15c5526ee1c377e879ff91.png'),
(13, 'Fernando Paulus,S.Th', NULL, 'S1', '-', 'Pendeta', '2c607b0dae30f8387cfe5ed6f2d2bb95.png'),
(15, 'Soneta Lodia Paulus-Nenotek', NULL, 'S3', '-', 'Ketua Majelis', '05abd2c25d559883ca59a1727dff5dbd.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `industri`
--

CREATE TABLE `industri` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `industri`
--

INSERT INTO `industri` (`id`, `judul`, `foto`, `slug`) VALUES
(18, 'TVN', 'beea5800a25d7155aa32dc8b54ca9835.png', 'tvn'),
(21, 'YONGSAN INTERNASIONAL SCHOOL OF SEOUL', 'e319a56e966c6769788984a9d8a689cc.jpg', 'yongsan-internasional-school-of-seoul'),
(22, 'Harvard', '494b27e9e702a526949494012bcbf759.png', 'harvard'),
(23, 'Kemendagri', '68f9c14c7aa52b420f06b176a0f4fec7.png', 'kemendagri'),
(24, 'ITB', '7cfe894f21364cd28e8ce71f78aaaa8b.png', 'itb'),
(25, 'https://ppdb.com', 'c35c74363f2a57bf55fad9aadcf3ad9b.png', 'httpsppdbcom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `judul`, `foto`, `desc`, `slug`) VALUES
(18, 'UMUM', 'a1038447aba58ec1c70a716ffabef7d0.png', '<p>Apa Itu Kurikulum Merdeka?</p><p>Kurikulum Merdeka adalah&nbsp;kurikulum dengan pembelajaran intrakurikuler yang beragam di mana konten akan lebih optimal agar peserta didik memiliki cukup waktu untuk mendalami konsep dan menguatkan kompetensi.<br></p>', 'umum'),
(19, 'MIPA', 'ede49ffdc05e967dfa1870692cb322f2.jpeg', 'Pengetahuan Alam merupakan&nbsp;jurusan&nbsp;yang mempelajari tentang gejala alam melalui metode ilmiah. Maka dari&nbsp;itu, mata pelajaran&nbsp;jurusan&nbsp;Ilmu Pengetahuan Alam tidak jauh dari materi tentang alam dan ekosistem di dalamnya.', 'mipa'),
(20, 'IPS', '687807914f80a2c5cf9f49c504ae5229.png', '<span class=\"ILfuVd\" lang=\"id\" style=\"line-height: 24px;\"><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px;\">Jurusan IPS&nbsp;mempelajari ilmu-ilmu sosial seperti ekonomi, sosiologi, sejarah, geografi dan sebagainya. Karena berhubungan dengan bidang-bidang yang ada di instansi pemerintah, anak IPS memiliki kesempatan yang luas untuk bekerja di bidang ini.</span></span>', 'ips'),
(21, 'BAHASA', '39dcc7fe71ea20144e4c37915582c393.jpeg', 'Dalam jurusan Ilmu Bahasa dan Budaya, siswa akan mempelajari berbagai aspek bahasa, seperti&nbsp;tata bahasa, fonologi, morfologi, sintaksis, dan semantik. Mereka juga akan mempelajari berbagai jenis bahasa, termasuk bahasa asing, seperti bahasa Inggris, bahasa Prancis, atau bahasa Jepang.', 'bahasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keutamaan`
--

CREATE TABLE `keutamaan` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keutamaan`
--

INSERT INTO `keutamaan` (`id`, `judul`, `foto`, `desc`, `slug`) VALUES
(18, 'Pengembangan Diri', 'bc641fcaeb4541b07603affd934b7aa5.png', '<p>Mengembangkan dalam diri manusia sifat-sifat seperti Kristus</p>', 'pengembangan-diri'),
(19, 'Membantu Orang', '032f0991d0e35eab40395b57f8dc02ec.png', '<p>Membantu orang-orang untuk terus-menerus mencari Tuhan.</p>', 'membantu-orang'),
(20, 'Perutusan', '689375d7dc6da56907f0229db6b10742.png', 'Melanjutkan karya Yesus dalam mewartakan kerajaan Allah', 'perutusan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subjek` varchar(100) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subjek`, `pesan`, `waktu`) VALUES
(1, 'pak muh', 'muh@gmail.com', 'pesan', 'pesan pesan', '2023-05-05 00:52:33'),
(3, 'Andrew Huffman', 'jyfinokem@mailinator.com', 'Excepteur enim asper', 'Velit consequat Qua', '2023-05-07 00:06:59'),
(4, 'Vivian Peck', 'hyfiwytij@mailinator.com', 'Ipsam vitae vel quae', 'Delectus ullam exce', '2023-05-07 00:09:12'),
(5, 'Gillian Rich', 'pajegucoqi@mailinator.com', 'Sed ipsam fuga Veli', 'Necessitatibus sed a', '2023-05-07 00:09:57'),
(6, 'Gareth Ellison', 'syducu@mailinator.com', 'Et laboriosam qui u', 'Odit culpa laborios', '2023-05-07 00:11:25'),
(7, 'Curran Shelton', 'davo@mailinator.com', 'Culpa et laborum E', 'Fuga Delectus odit', '2023-05-07 00:12:48'),
(8, 'Ramona Mcgee', 'ryveheziwy@mailinator.com', 'Elit nobis reiciend', 'Ut explicabo Accusa', '2023-05-07 00:14:33'),
(10, 'Adena Burnett', 'kaxo@mailinator.com', 'Sunt quis nobis null', 'Rerum quidem quos sa', '2024-03-04 00:42:01'),
(11, 'Anna Wilson', 'annawilson.mkt@gamil.com', 'Re: Want to attract more clients and customers?', 'Hello team my.id,\r\n\r\nI would like to discuss SEO!\r\n\r\nI can help your website to get on first page of Google and increase the number of leads and sales you are getting from your website.\r\n\r\nMay I send you a quote & price list?\r\n\r\nBest wishes,\r\nAnna Wilson | Webpage Optimized\r\nSr SEO consultant\r\nwww.webpageoptimized.com\r\nSr SEO Manager\r\n\r\n\r\n\r\nNote: - If you’re not Interested in our Services, please send us unsubscribe in.', '2024-05-12 17:20:18'),
(12, 'Hassan Talal', 'hassantaabi@gmail.com', 'Best Wishes for my.id.', 'Dear Sir\r\n\r\nCongratulations for my.id, Wish you lots of luck for this startup.\r\n\r\nWe have introduce $99 Plan for new Start-ups where we will promote your website with deeply targeted Facebook and Google ads, B2B Cold Bulk Emails for generating targeted traffic on your website with guaranteed results\r\n\r\nLet me know a convenient time for a brief call, so we can explore the possibilities.\r\n\r\nCall or Whatsapp\r\nHassan Talal\r\nCall or Whatsapp\r\n+447458935470\r\nhttps://wa.me/923434162018', '2024-05-14 14:59:23'),
(13, 'Raymond Tsin', 'bd@chinesesourcingagent.com', 'Do you handle sourcing for http://smadcstondano.my.id/?', 'Want a Chinese private agent to help you scale your ecommerce business rapidly?\r\n\r\nFree Consultation on WhatsApp: +1 878 880 1688 or https://wa.link/7qtprw\r\n\r\nWhy us?\r\n\r\nReliable sourcing & dropshipshipping services from China.\r\nFulfilling 10,000+ orders for global clients daily.\r\nAutomated fulfillment with ERP systems.\r\nStrong ties with over 30,000+ factories for the best deals.\r\nWhite label, Branding, ODM/OEM services at your fingertips.Fast shipping with more saving options.\r\n\r\nContact now!\r\nEmail: bd@chinesesourcingagent.com\r\nFree Consultation on WhatsApp: +1 878 880 1688 or https://wa.link/7qtprw\r\nWebsite: https://ChineseSourcingAgent.com', '2024-05-14 19:28:29'),
(14, 'Ini Test', 'test@gmail.com', 'Test kirim pesan', 'Ini sebuah percobaan test kirim pesan', '2024-06-22 12:10:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `profil` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `profil`) VALUES
(1, '<p style=\"box-sizing: inherit; margin-bottom: 1.5em; color: rgb(88, 86, 86); font-family: Muli, sans-serif; font-size: 18px;\"><br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sambutan`
--

CREATE TABLE `sambutan` (
  `id` int(11) NOT NULL,
  `sambutan` text DEFAULT NULL,
  `foto_kepsek` varchar(100) DEFAULT NULL,
  `excerpt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sambutan`
--

INSERT INTO `sambutan` (`id`, `sambutan`, `foto_kepsek`, `excerpt`) VALUES
(1, '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\">Salam dalam Kristus Yesus Raja Gereja!\r\nJemaat Tuhan yang Yesus kasihi,\r\npertama-tama mari kita naikkan puji\r\nsyukur kepada Tuhan Yesus Raja Gereja,\r\nyang atas anugerah-Nya, sudah\r\nmempersatukan dan mempersekutukan\r\nkita sebagai jemaat-Nya dalam keadaan\r\nsehat dan penuh sukacita.</p>', 'cd75d38e25e5d18738c2140bb3d2fc02.jpg', 'Salam dalam Kristus Yesus Raja Gereja! Jemaat Tuhan yang Yesus kasihi, pertama-tama mari kita naikkan puji syukur kepada Tuhan Yesus Raja Gereja, yang atas anugerah-Nya, sudah mempersatukan dan mempersekutukan kita sebagai jemaat-Nya dalam keadaan sehat dan penuh sukacita.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `jumlah` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `kelas`, `jumlah`) VALUES
(6, 'Perempuan', '160'),
(7, 'Laki-Laki', '160');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `button_capt` varchar(100) DEFAULT NULL,
  `button_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `foto`, `keterangan`, `button_capt`, `button_link`) VALUES
(6, 'afa5555f1eda0c5e34548f09f957387f.jpg', 'Beribadahlah Bersama Kami', '', ''),
(7, '61f68c30ad62044fafd70fd061e3e4a0.jpg', 'Portal Informasi Gereja', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur`
--

CREATE TABLE `struktur` (
  `id` int(11) NOT NULL,
  `struktur` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `struktur`
--

INSERT INTO `struktur` (`id`, `struktur`) VALUES
(1, '<section class=\"elementor-section elementor-top-section elementor-element elementor-element-d12fbe4 elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"d12fbe4\" data-element_type=\"section\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); position: relative; --swiper-theme-color:#000; --swiper-navigation-size:44px; --swiper-pagination-bullet-size:6px; --swiper-pagination-bullet-horizontal-gap:6px; --widgets-spacing:20px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(247, 247, 247);\"><div class=\"elementor-container elementor-column-gap-default\" style=\"margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: flex; position: relative; max-width: 1140px;\"><div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-5964b97\" data-id=\"5964b97\" data-element_type=\"column\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); position: relative; min-height: 1px; display: flex; --swiper-theme-color:#000; --swiper-navigation-size:44px; --swiper-pagination-bullet-size:6px; --swiper-pagination-bullet-horizontal-gap:6px; --widgets-spacing:20px; width: 702.656px;\"><div class=\"elementor-widget-wrap elementor-element-populated\" style=\"margin: 0px; padding: 10px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; position: relative; width: 702.656px; flex-wrap: wrap; align-content: flex-start; display: flex;\"><div class=\"elementor-element elementor-element-7e4ce3a animated-slow elementor-widget elementor-widget-image animated fadeIn\" data-id=\"7e4ce3a\" data-element_type=\"widget\" data-settings=\"{}\" data-widget_type=\"image.default\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color:#000; --swiper-navigation-size:44px; --swiper-pagination-bullet-size:6px; --swiper-pagination-bullet-horizontal-gap:6px; animation-duration: 2s; text-align: center; animation-name: fadeIn; --widgets-spacing:20px; width: 682.656px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; transition: background 0.3s,border 0.3s,border-radius 0.3s,box-shadow 0.3s,transform var(--e-transform-transition-duration,0.4s);\"><a href=\"https://smpn1plemahan.sch.id/wp-content/uploads/2021/03/struktur-1.png\" data-elementor-open-lightbox=\"yes\" data-elementor-lightbox-title=\"STRUKTUR ORGANISASI SEKOLAH\" data-elementor-lightbox-description=\"STRUKTUR ORGANISASI SEKOLAH\n\" data-e-action-hash=\"#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6ODMxLCJ1cmwiOiJodHRwczpcL1wvc21wbjFwbGVtYWhhbi5zY2guaWRcL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjFcLzAzXC9zdHJ1a3R1ci0xLnBuZyJ9\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; box-shadow: none; display: inline-block; color: rgb(102, 102, 119);\"></a></div></div><div class=\"elementor-element elementor-element-b1fe037 animated-slow elementor-widget elementor-widget-image animated fadeIn\" data-id=\"b1fe037\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeIn&quot;}\" data-widget_type=\"image.default\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color:#000; --swiper-navigation-size:44px; --swiper-pagination-bullet-size:6px; --swiper-pagination-bullet-horizontal-gap:6px; animation-duration: 2s; text-align: center; animation-name: fadeIn; --widgets-spacing:20px; width: 682.656px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; transition: background 0.3s,border 0.3s,border-radius 0.3s,box-shadow 0.3s,transform var(--e-transform-transition-duration,0.4s);\"><a href=\"https://smpn1plemahan.sch.id/wp-content/uploads/2021/03/struktur-2.png\" data-elementor-open-lightbox=\"yes\" data-elementor-lightbox-title=\"STRUKTUR ORGANISASI SEKOLAH\" data-e-action-hash=\"#elementor-action%3Aaction%3Dlightbox%26settings%3DeyJpZCI6ODMyLCJ1cmwiOiJodHRwczpcL1wvc21wbjFwbGVtYWhhbi5zY2guaWRcL3dwLWNvbnRlbnRcL3VwbG9hZHNcLzIwMjFcLzAzXC9zdHJ1a3R1ci0yLnBuZyJ9\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; box-shadow: none; display: inline-block; color: rgb(102, 102, 119);\"></a></div></div><div class=\"elementor-element elementor-element-fdf696d animated-slow elementor-widget elementor-widget-image animated fadeIn\" data-id=\"fdf696d\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeIn&quot;}\" data-widget_type=\"image.default\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color:#000; --swiper-navigation-size:44px; --swiper-pagination-bullet-size:6px; --swiper-pagination-bullet-horizontal-gap:6px; animation-duration: 2s; text-align: center; animation-name: fadeIn; --widgets-spacing:20px; width: 682.656px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; transition: background 0.3s,border 0.3s,border-radius 0.3s,box-shadow 0.3s,transform var(--e-transform-transition-duration,0.4s);\"><br></div></div></div></div></div></section><p></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kegiatan`
--

CREATE TABLE `tbl_kegiatan` (
  `kegiatan_id` int(11) NOT NULL,
  `kegiatan_user` int(11) DEFAULT NULL,
  `kegiatan_judul` varchar(100) DEFAULT NULL,
  `kegiatan_slug` varchar(100) DEFAULT NULL,
  `kegiatan_isi` text DEFAULT NULL,
  `kegiatan_waktu` date DEFAULT NULL,
  `kegiatan_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kegiatan`
--

INSERT INTO `tbl_kegiatan` (`kegiatan_id`, `kegiatan_user`, `kegiatan_judul`, `kegiatan_slug`, `kegiatan_isi`, `kegiatan_waktu`, `kegiatan_foto`) VALUES
(51, 50, 'santunan anak yatim bersama ketua masjid fatimah zahro', 'santunan-anak-yatim-bersama-ketua-2', '<p>lojerbvklklbvklrvrklvblkv</p>', '2022-03-09', 'd1ac4b49585d3c2e0c3e8ef561549e8b.jpeg'),
(52, 50, 'pengajian & Sholat eid fitri', 'pengajian-sholat-eid-fitri-2', '<p>sholat&nbsp; eid + pengajian\"</p><p>bvkejrjqke;jnqrbklnktnbltlrkblrkbr</p><p>bkjrtnlktwrbkrngwbkljtnbpwkb;twbnkrtnbnrgj</p>', '2022-05-02', '9509ba0848aac5e5720905f15bf35090.jpeg'),
(53, 50, 'poto bersama ustadz ', 'poto-bersama-ustadz-2', '<p>Tabligh akbar&nbsp;</p><p>vjnrwkhntkbtnwitohniotntjnbthgkregibhrgu ricthritvirbvtoirt9ut9wtuiortirehveolbvlighwi;w;g;wgb;bg;wighlwglwrkvjgvwghlkrwg</p><p>rvgiewon</p><p><br></p>', '2022-01-21', '5983c57849883ce1953a715df76b7e30.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rencanakegiatan`
--

CREATE TABLE `tbl_rencanakegiatan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `nama_kegiatan` varchar(200) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_rencanakegiatan`
--

INSERT INTO `tbl_rencanakegiatan` (`id`, `tanggal`, `tanggal_selesai`, `nama_kegiatan`, `keterangan`) VALUES
(8, '2024-08-17', '2024-08-17', 'Upacara Kemerdekaan', 'Upacara Bendera'),
(9, '2024-08-14', '2024-08-16', 'Lomba Hari Kemerdekaan', 'Diikuti semua siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id`, `nama`, `foto`, `desc`, `slug`) VALUES
(21, 'Kim So-Hyun', 'b967d73c9cda29b39e9372c4aadf68b4.jpeg', 'Thank you to all the teachers and staff who have supported us, as well as our comrades in arms who made our learning experience so valuable. I am proud to say that being part of the Tondano Ini School community is an honor', 'kim-so-hyun'),
(22, 'Kim Ji-WOn', 'eaba79ca938b89963b28c75669476d3d.jpeg', 'The supportive learning environment, dedicated teaching staff, and variety of extracurricular activities have helped me grow personally and academically. I am very grateful for the valuable education and happy memories I have while at Dulwich College School Tondano High School', 'kim-ji-won'),
(23, 'Rivaldo', 'b279563f3950b18c6dff4644f1d34ec4.jpeg', 'Sebagai alumnus SMA Dulwich College School Tondano, saya dengan bangga mengakui bahwa pengalaman pendidikan saya di sekolah ini telah memberikan landasan yang kuat untuk kesuksesan saya di masa depan', 'rivaldo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `user` varchar(10) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id`, `url`, `judul`, `desc`, `waktu`, `user`, `slug`) VALUES
(1, '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/VihHK9ccohc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'MENGENAL PRAMUKA PENGGALANG', '<p><span style=\"color: rgb(15, 15, 15); font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgba(0, 0, 0, 0.05);\">Salam Pramuka\r\nSelamat bertemu lagi adik-adik dan kakak-kakak semua\r\nSemoga materi Pramuka dalam video  ini dapat bermanfaat</span><br></p>', '2024-04-05 09:42:20', '1', 'mengenal-pramuka-penggalang'),
(4, '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/2zlyLDHfq8o\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'yyyyy', '<p>yyy</p>', '2024-04-05 09:43:51', '1', 'yyyyy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi`
--

CREATE TABLE `visi` (
  `id` int(11) NOT NULL,
  `visi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `visi`
--

INSERT INTO `visi` (`id`, `visi`) VALUES
(1, '<div><br></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `visit_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`) VALUES
(4, '::1', '2023-09-19 20:57:52'),
(5, '::1', '2023-09-20 08:30:04'),
(6, '::1', '2023-09-30 16:55:13'),
(7, '::1', '2023-10-03 17:05:24'),
(8, '::1', '2023-10-05 10:01:59'),
(9, '::1', '2023-10-06 00:59:48'),
(10, '::1', '2023-10-14 12:36:45'),
(11, '::1', '2023-10-24 10:18:18'),
(12, '::1', '2023-11-27 09:21:59'),
(13, '::1', '2023-11-29 19:01:59'),
(14, '::1', '2023-11-30 00:29:27'),
(15, '::1', '2024-02-28 09:48:33'),
(16, '::1', '2024-02-29 00:04:14'),
(17, '::1', '2024-03-01 21:27:38'),
(18, '::1', '2024-03-03 11:24:08'),
(19, '::1', '2024-03-04 00:08:20'),
(20, '::1', '2024-03-05 10:10:17'),
(21, '103.10.64.10', '2024-04-03 11:43:43'),
(22, '199.45.154.70', '2024-04-03 12:32:19'),
(23, '103.10.65.113', '2024-04-03 12:55:09'),
(24, '199.45.154.22', '2024-04-03 13:38:19'),
(25, '62.141.44.236', '2024-04-03 13:45:02'),
(26, '103.10.65.124', '2024-04-03 17:24:58'),
(27, '199.45.154.55', '2024-04-03 18:33:30'),
(28, '199.45.154.52', '2024-04-03 19:37:22'),
(29, '66.249.66.82', '2024-04-04 01:49:09'),
(30, '66.249.71.8', '2024-04-04 01:50:19'),
(31, '63.35.213.163', '2024-04-04 04:54:33'),
(32, '199.45.154.20', '2024-04-04 06:53:57'),
(33, '144.217.135.152', '2024-04-04 07:08:05'),
(34, '149.56.160.165', '2024-04-04 07:08:44'),
(35, '149.56.150.10', '2024-04-04 07:09:02'),
(36, '34.30.116.66', '2024-04-04 07:41:34'),
(37, '161.35.97.228', '2024-04-04 08:46:31'),
(38, '103.10.65.123', '2024-04-04 13:12:17'),
(39, '64.233.173.231', '2024-04-04 13:12:18'),
(40, '64.233.173.232', '2024-04-04 13:12:19'),
(41, '74.125.212.102', '2024-04-04 13:12:20'),
(42, '199.45.154.68', '2024-04-04 15:40:53'),
(43, '159.89.89.40', '2024-04-04 18:25:36'),
(44, '103.10.65.126', '2024-04-04 18:41:24'),
(45, '103.10.65.119', '2024-04-04 19:18:56'),
(46, '65.154.226.168', '2024-04-04 20:18:32'),
(47, '199.45.155.55', '2024-04-05 04:51:31'),
(48, '103.10.65.101', '2024-04-05 05:38:28'),
(49, '34.72.137.41', '2024-04-05 07:21:22'),
(50, '103.10.64.20', '2024-04-05 09:06:13'),
(51, '103.10.64.10', '2024-04-05 09:29:15'),
(52, '54.213.145.55', '2024-04-05 19:14:38'),
(53, '34.211.6.132', '2024-04-05 19:14:43'),
(54, '80.94.92.105', '2024-04-05 19:35:35'),
(55, '164.90.205.219', '2024-04-06 07:37:43'),
(56, '104.154.18.0', '2024-04-06 08:24:04'),
(57, '103.10.65.101', '2024-04-06 08:26:26'),
(58, '159.203.27.29', '2024-04-06 09:40:42'),
(59, '66.249.74.134', '2024-04-06 11:27:06'),
(60, '80.94.92.105', '2024-04-07 05:15:17'),
(61, '205.210.31.19', '2024-04-07 06:17:19'),
(62, '54.217.83.13', '2024-04-08 09:35:49'),
(63, '46.101.147.204', '2024-04-08 09:55:14'),
(64, '34.170.178.246', '2024-04-08 11:54:06'),
(65, '66.249.74.129', '2024-04-08 17:39:21'),
(66, '66.249.71.6', '2024-04-08 18:24:23'),
(67, '66.249.71.100', '2024-04-09 13:08:50'),
(68, '192.0.86.86', '2024-04-09 14:06:59'),
(69, '110.172.98.2', '2024-04-09 18:07:41'),
(70, '34.31.245.84', '2024-04-09 21:54:14'),
(71, '66.249.71.6', '2024-04-10 11:58:49'),
(72, '35.88.34.152', '2024-04-10 16:28:20'),
(73, '34.170.178.246', '2024-04-10 23:29:50'),
(74, '66.249.66.84', '2024-04-11 00:40:24'),
(75, '87.236.176.71', '2024-04-11 01:12:52'),
(76, '66.249.71.8', '2024-04-11 13:48:51'),
(77, '66.249.66.83', '2024-04-11 13:58:30'),
(78, '206.168.34.188', '2024-04-11 14:29:14'),
(79, '18.246.46.144', '2024-04-11 15:17:28'),
(80, '34.221.165.255', '2024-04-11 16:16:00'),
(81, '199.45.155.20', '2024-04-11 18:02:53'),
(82, '134.122.34.24', '2024-04-11 18:41:31'),
(83, '157.245.241.154', '2024-04-11 18:48:56'),
(84, '199.45.155.39', '2024-04-11 19:28:46'),
(85, '178.254.24.91', '2024-04-12 00:23:57'),
(86, '115.231.78.4', '2024-04-12 05:40:59'),
(87, '34.69.231.15', '2024-04-12 07:38:40'),
(88, '114.10.100.83', '2024-04-12 14:39:01'),
(89, '66.249.71.6', '2024-04-13 03:18:22'),
(90, '35.193.14.145', '2024-04-13 14:28:27'),
(91, '66.249.77.6', '2024-04-13 20:29:12'),
(92, '66.249.71.1', '2024-04-13 20:29:40'),
(93, '66.249.77.8', '2024-04-13 20:32:27'),
(94, '66.249.77.7', '2024-04-13 20:32:34'),
(95, '198.235.24.40', '2024-04-13 20:39:16'),
(96, '34.135.193.206', '2024-04-14 08:29:40'),
(97, '161.35.162.82', '2024-04-14 08:46:55'),
(98, '35.84.134.216', '2024-04-14 17:25:21'),
(99, '66.249.79.130', '2024-04-15 04:33:46'),
(100, '35.84.198.24', '2024-04-15 06:45:52'),
(101, '199.45.154.23', '2024-04-15 19:47:58'),
(102, '178.62.79.147', '2024-04-15 20:53:08'),
(103, '199.244.88.225', '2024-04-16 03:51:52'),
(104, '104.248.35.88', '2024-04-16 08:00:12'),
(105, '44.242.152.53', '2024-04-16 23:07:51'),
(106, '44.242.166.61', '2024-04-16 23:27:50'),
(107, '205.210.31.230', '2024-04-17 07:34:09'),
(108, '206.168.34.183', '2024-04-17 09:29:04'),
(109, '3.110.163.3', '2024-04-17 10:58:07'),
(110, '206.168.34.122', '2024-04-17 13:06:14'),
(111, '66.249.66.84', '2024-04-17 16:11:01'),
(112, '35.84.31.226', '2024-04-17 19:03:37'),
(113, '35.87.229.188', '2024-04-17 19:10:34'),
(114, '52.41.254.201', '2024-04-17 19:44:46'),
(115, '35.91.29.169', '2024-04-17 19:44:51'),
(116, '205.210.31.2', '2024-04-17 20:05:06'),
(117, '34.71.34.11', '2024-04-17 21:00:33'),
(118, '66.249.71.160', '2024-04-17 22:12:29'),
(119, '66.249.66.13', '2024-04-17 23:47:44'),
(120, '209.38.136.129', '2024-04-18 02:59:58'),
(121, '34.172.1.0', '2024-04-18 15:36:09'),
(122, '137.184.100.172', '2024-04-18 18:51:39'),
(123, '66.249.79.104', '2024-04-19 15:56:09'),
(124, '34.30.130.58', '2024-04-19 18:53:16'),
(125, '66.249.71.2', '2024-04-19 22:48:29'),
(126, '198.235.24.175', '2024-04-20 04:24:00'),
(127, '178.254.12.183', '2024-04-20 05:49:59'),
(128, '159.65.63.33', '2024-04-20 14:42:10'),
(129, '202.165.46.25', '2024-04-20 15:42:44'),
(130, '93.115.0.36', '2024-04-20 16:26:46'),
(131, '54.184.241.177', '2024-04-20 18:10:11'),
(132, '35.93.152.109', '2024-04-20 18:10:12'),
(133, '199.45.155.63', '2024-04-21 03:15:19'),
(134, '175.176.37.132', '2024-04-21 15:07:24'),
(135, '202.74.40.142', '2024-04-21 17:18:03'),
(136, '27.115.124.38', '2024-04-21 17:22:58'),
(137, '66.249.72.103', '2024-04-21 18:16:25'),
(138, '66.249.71.6', '2024-04-21 18:21:55'),
(139, '54.215.191.51', '2024-04-21 18:47:00'),
(140, '35.188.160.11', '2024-04-22 00:11:03'),
(141, '52.179.174.232', '2024-04-22 00:47:55'),
(142, '103.214.8.36', '2024-04-22 03:34:01'),
(143, '15.204.182.106', '2024-04-22 08:37:11'),
(144, '52.11.101.75', '2024-04-22 12:44:36'),
(145, '15.204.183.221', '2024-04-22 19:41:18'),
(146, '3.75.89.197', '2024-04-23 13:15:37'),
(147, '18.246.39.215', '2024-04-23 18:19:20'),
(148, '35.88.100.231', '2024-04-23 18:19:21'),
(149, '66.249.66.83', '2024-04-23 23:37:12'),
(150, '104.197.139.221', '2024-04-23 23:48:24'),
(151, '66.249.75.96', '2024-04-24 00:34:34'),
(152, '66.249.75.100', '2024-04-24 01:03:00'),
(153, '103.10.65.118', '2024-04-24 04:50:35'),
(154, '182.1.164.15', '2024-04-24 06:00:34'),
(155, '182.1.162.15', '2024-04-24 06:00:41'),
(156, '182.1.177.23', '2024-04-24 06:57:30'),
(157, '182.1.179.7', '2024-04-24 08:14:32'),
(158, '178.62.17.209', '2024-04-24 09:26:15'),
(159, '66.249.66.83', '2024-04-24 12:18:42'),
(160, '66.249.66.82', '2024-04-24 16:34:51'),
(161, '198.235.24.104', '2024-04-24 22:59:37'),
(162, '34.123.44.46', '2024-04-25 02:13:31'),
(163, '209.97.157.2', '2024-04-25 13:03:53'),
(164, '138.197.11.211', '2024-04-25 16:31:22'),
(165, '66.249.66.83', '2024-04-25 22:29:20'),
(166, '66.249.71.1', '2024-04-25 22:29:29'),
(167, '66.249.66.82', '2024-04-25 22:29:38'),
(168, '66.249.71.6', '2024-04-25 23:11:30'),
(169, '134.122.15.193', '2024-04-26 09:47:23'),
(170, '54.241.156.9', '2024-04-26 13:05:53'),
(171, '181.214.218.57', '2024-04-26 15:12:33'),
(172, '205.210.31.196', '2024-04-26 17:03:48'),
(173, '34.216.196.85', '2024-04-26 18:16:28'),
(174, '54.191.32.197', '2024-04-26 18:16:44'),
(175, '35.194.56.139', '2024-04-27 03:36:03'),
(176, '66.249.71.99', '2024-04-27 08:16:53'),
(177, '66.249.68.36', '2024-04-27 09:25:38'),
(178, '65.154.226.169', '2024-04-27 22:02:32'),
(179, '66.249.79.128', '2024-04-28 06:11:39'),
(180, '35.239.41.14', '2024-04-29 02:01:10'),
(181, '51.81.245.138', '2024-04-29 11:22:22'),
(182, '195.211.77.142', '2024-04-29 11:23:08'),
(183, '129.153.125.162', '2024-04-29 11:23:15'),
(184, '205.169.39.180', '2024-04-29 11:24:11'),
(185, '205.169.39.181', '2024-04-29 11:24:11'),
(186, '104.129.57.76', '2024-04-29 11:25:04'),
(187, '198.44.128.132', '2024-04-29 11:26:15'),
(188, '65.154.226.171', '2024-04-29 11:28:23'),
(189, '65.154.226.166', '2024-04-29 11:28:28'),
(190, '115.231.78.2', '2024-04-29 12:24:04'),
(191, '104.164.173.234', '2024-04-29 13:29:38'),
(192, '154.28.229.131', '2024-04-29 13:29:38'),
(193, '154.28.229.249', '2024-04-29 13:31:31'),
(194, '154.28.229.127', '2024-04-29 13:31:31'),
(195, '104.164.173.81', '2024-04-29 13:31:39'),
(196, '154.28.229.212', '2024-04-29 13:31:44'),
(197, '104.197.69.115', '2024-04-29 13:55:12'),
(198, '133.242.174.119', '2024-04-29 14:56:56'),
(199, '137.184.45.221', '2024-04-29 15:16:37'),
(200, '52.10.67.107', '2024-04-29 19:09:23'),
(201, '34.220.154.183', '2024-04-29 19:09:26'),
(202, '47.242.224.70', '2024-04-29 19:23:11'),
(203, '159.223.148.104', '2024-04-29 20:59:19'),
(204, '212.186.110.8', '2024-04-29 21:56:21'),
(205, '179.43.169.181', '2024-04-29 23:58:39'),
(206, '129.153.125.162', '2024-04-30 00:34:34'),
(207, '195.211.77.142', '2024-04-30 01:06:14'),
(208, '171.244.43.14', '2024-04-30 01:20:58'),
(209, '178.254.38.45', '2024-04-30 05:26:12'),
(210, '206.189.2.51', '2024-04-30 07:35:47'),
(211, '134.122.68.172', '2024-04-30 08:02:50'),
(212, '66.249.66.82', '2024-04-30 10:24:23'),
(213, '81.217.67.172', '2024-04-30 11:36:57'),
(214, '91.92.255.49', '2024-04-30 17:00:03'),
(215, '66.249.66.6', '2024-05-01 08:07:38'),
(216, '129.153.125.162', '2024-05-01 12:39:01'),
(217, '192.0.89.241', '2024-05-01 16:36:46'),
(218, '192.0.86.86', '2024-05-01 16:36:57'),
(219, '167.99.2.194', '2024-05-01 20:00:04'),
(220, '34.72.229.126', '2024-05-02 02:16:59'),
(221, '209.38.132.199', '2024-05-02 07:44:40'),
(222, '159.203.3.222', '2024-05-02 08:42:10'),
(223, '66.249.71.6', '2024-05-02 13:51:01'),
(224, '68.183.46.45', '2024-05-02 18:01:26'),
(225, '167.71.178.90', '2024-05-03 19:42:37'),
(226, '205.210.31.171', '2024-05-03 23:22:49'),
(227, '167.99.243.254', '2024-05-04 08:58:11'),
(228, '128.199.21.30', '2024-05-04 09:30:15'),
(229, '138.68.133.2', '2024-05-04 11:45:26'),
(230, '66.249.71.7', '2024-05-04 17:37:45'),
(231, '139.59.179.126', '2024-05-06 08:21:54'),
(232, '35.95.14.194', '2024-05-06 17:34:01'),
(233, '52.35.230.148', '2024-05-06 17:34:02'),
(234, '103.10.64.14', '2024-05-07 16:25:39'),
(235, '2a00:6800:3:b9e::1', '2024-05-07 16:53:39'),
(236, '198.199.71.187', '2024-05-08 07:44:54'),
(237, '8.41.221.55', '2024-05-08 08:28:38'),
(238, '2607:9000:6000:18::a01e', '2024-05-08 09:01:14'),
(239, '199.244.88.231', '2024-05-08 15:43:09'),
(240, '66.249.71.7', '2024-05-08 19:22:57'),
(241, '66.249.79.105', '2024-05-09 05:01:26'),
(242, '142.93.147.149', '2024-05-09 11:06:43'),
(243, '2001:ac8:8b:29::d001', '2024-05-09 13:46:52'),
(244, '103.10.64.3', '2024-05-09 16:00:07'),
(245, '2a01:4f9:c012:6365::1', '2024-05-09 16:05:01'),
(246, '2600:3c03::f03c:94ff:fe64:a752', '2024-05-09 16:05:01'),
(247, '2600:3c03::f03c:94ff:fe64:a747', '2024-05-09 16:05:01'),
(248, '35.238.155.7', '2024-05-09 16:05:53'),
(249, '89.149.37.17', '2024-05-09 16:06:11'),
(250, '161.129.70.206', '2024-05-09 16:06:12'),
(251, '103.87.68.155', '2024-05-09 16:06:26'),
(252, '207.241.236.84', '2024-05-09 16:06:28'),
(253, '35.184.104.238', '2024-05-09 16:06:29'),
(254, '34.41.201.221', '2024-05-09 16:06:32'),
(255, '54.91.15.69', '2024-05-09 16:06:33'),
(256, '129.153.125.162', '2024-05-09 16:08:08'),
(257, '168.151.98.43', '2024-05-09 16:08:23'),
(258, '216.194.81.36', '2024-05-09 16:08:23'),
(259, '185.246.175.223', '2024-05-09 16:08:23'),
(260, '93.114.136.0', '2024-05-09 16:08:24'),
(261, '199.244.60.127', '2024-05-09 16:08:24'),
(262, '162.43.226.162', '2024-05-09 16:08:24'),
(263, '119.13.210.145', '2024-05-09 16:08:39'),
(264, '65.154.226.168', '2024-05-09 16:08:48'),
(265, '179.43.169.181', '2024-05-09 16:09:46'),
(266, '3.14.65.37', '2024-05-09 16:10:42'),
(267, '205.169.39.159', '2024-05-09 16:16:07'),
(268, '198.54.130.103', '2024-05-09 16:16:50'),
(269, '103.177.249.81', '2024-05-09 16:18:00'),
(270, '209.127.253.97', '2024-05-09 16:20:08'),
(271, '191.102.163.232', '2024-05-09 16:20:09'),
(272, '38.154.198.148', '2024-05-09 16:20:10'),
(273, '104.239.33.47', '2024-05-09 16:23:27'),
(274, '38.153.137.135', '2024-05-09 16:23:33'),
(275, '146.70.173.176', '2024-05-09 16:24:23'),
(276, '95.164.156.92', '2024-05-09 16:34:50'),
(277, '138.122.193.99', '2024-05-09 16:34:51'),
(278, '193.34.72.9', '2024-05-09 16:34:54'),
(279, '64.15.129.107', '2024-05-09 16:46:53'),
(280, '192.175.111.232', '2024-05-09 16:46:58'),
(281, '64.15.129.106', '2024-05-09 16:46:59'),
(282, '64.15.129.115', '2024-05-09 16:47:10'),
(283, '20.105.137.134', '2024-05-09 16:55:01'),
(284, '191.101.157.9', '2024-05-09 17:01:16'),
(285, '199.244.88.231', '2024-05-09 17:01:18'),
(286, '37.120.213.220', '2024-05-09 17:01:34'),
(287, '34.41.251.144', '2024-05-09 17:33:17'),
(288, '154.28.229.105', '2024-05-09 17:38:18'),
(289, '154.28.229.255', '2024-05-09 17:38:18'),
(290, '104.164.173.114', '2024-05-09 17:38:20'),
(291, '104.164.173.36', '2024-05-09 17:38:24'),
(292, '154.28.229.88', '2024-05-09 17:39:30'),
(293, '154.28.229.185', '2024-05-09 17:39:30'),
(294, '154.28.229.140', '2024-05-09 17:39:31'),
(295, '104.164.173.53', '2024-05-09 17:39:32'),
(296, '104.164.173.56', '2024-05-09 17:39:32'),
(297, '104.164.173.148', '2024-05-09 17:39:32'),
(298, '104.164.173.226', '2024-05-09 17:43:21'),
(299, '154.28.229.99', '2024-05-09 17:46:33'),
(300, '107.23.14.41', '2024-05-09 18:27:41'),
(301, '104.166.80.239', '2024-05-09 18:51:58'),
(302, '104.166.80.230', '2024-05-09 18:52:35'),
(303, '104.164.173.20', '2024-05-09 18:54:13'),
(304, '104.164.173.39', '2024-05-09 18:54:13'),
(305, '104.166.80.192', '2024-05-09 18:54:37'),
(306, '34.136.254.217', '2024-05-09 19:24:44'),
(307, '104.166.80.5', '2024-05-09 19:30:30'),
(308, '104.166.80.13', '2024-05-09 19:45:41'),
(309, '2a03:1b20:6:f011::4e', '2024-05-09 19:54:39'),
(310, '2a01:4a0:1338:93::4', '2024-05-09 19:58:55'),
(311, '2a01:4a0:1338:93::8', '2024-05-09 20:04:44'),
(312, '152.89.160.101', '2024-05-09 20:06:02'),
(313, '80.82.70.198', '2024-05-09 20:06:48'),
(314, '104.165.199.222', '2024-05-09 20:07:09'),
(315, '89.208.29.82', '2024-05-09 20:08:24'),
(316, '2.57.171.34', '2024-05-09 20:08:46'),
(317, '89.248.171.23', '2024-05-09 20:09:27'),
(318, '154.30.116.70', '2024-05-09 20:23:06'),
(319, '139.99.236.252', '2024-05-09 20:28:47'),
(320, '74.80.181.135', '2024-05-09 20:31:25'),
(321, '198.147.22.234', '2024-05-09 20:31:25'),
(322, '103.87.68.55', '2024-05-09 20:31:26'),
(323, '118.107.220.51', '2024-05-09 20:31:39'),
(324, '54.86.129.172', '2024-05-09 20:59:07'),
(325, '54.247.57.72', '2024-05-09 21:04:13'),
(326, '205.169.39.219', '2024-05-09 22:34:21'),
(327, '205.169.39.183', '2024-05-09 22:34:22'),
(328, '47.242.224.70', '2024-05-10 01:26:22'),
(329, '198.199.96.73', '2024-05-10 02:45:40'),
(330, '2604:5040:11:746::9b57', '2024-05-10 02:45:41'),
(331, '139.99.236.252', '2024-05-10 03:49:34'),
(332, '104.164.173.9', '2024-05-10 04:04:03'),
(333, '154.28.229.246', '2024-05-10 04:04:03'),
(334, '154.28.229.36', '2024-05-10 04:04:03'),
(335, '154.28.229.41', '2024-05-10 04:04:03'),
(336, '154.28.229.85', '2024-05-10 04:04:07'),
(337, '129.153.125.162', '2024-05-10 05:10:30'),
(338, '103.134.152.245', '2024-05-10 06:12:17'),
(339, '191.102.174.16', '2024-05-10 06:57:12'),
(340, '191.102.174.22', '2024-05-10 06:57:13'),
(341, '3.80.56.196', '2024-05-10 06:57:18'),
(342, '154.28.229.138', '2024-05-10 07:02:14'),
(343, '154.28.229.175', '2024-05-10 07:02:14'),
(344, '154.28.229.74', '2024-05-10 07:02:14'),
(345, '154.28.229.202', '2024-05-10 07:02:14'),
(346, '154.28.229.199', '2024-05-10 07:02:14'),
(347, '154.28.229.181', '2024-05-10 07:02:14'),
(348, '8.41.221.54', '2024-05-10 10:15:53'),
(349, '178.33.107.250', '2024-05-10 15:10:34'),
(350, '35.165.215.140', '2024-05-10 15:12:58'),
(351, '13.95.133.245', '2024-05-10 16:23:52'),
(352, '65.154.226.220', '2024-05-10 16:28:55'),
(353, '80.82.70.198', '2024-05-10 21:26:54'),
(354, '188.42.195.140', '2024-05-10 21:27:00'),
(355, '35.225.166.53', '2024-05-11 02:55:04'),
(356, '104.166.80.128', '2024-05-11 04:21:43'),
(357, '2a01:4a0:1338:93::3', '2024-05-11 06:14:52'),
(358, '212.143.94.254', '2024-05-11 06:15:54'),
(359, '188.241.80.47', '2024-05-11 06:16:47'),
(360, '89.208.29.83', '2024-05-11 06:17:40'),
(361, '104.164.195.61', '2024-05-11 06:17:41'),
(362, '38.100.114.42', '2024-05-11 06:18:01'),
(363, '173.239.196.96', '2024-05-11 06:18:01'),
(364, '89.248.171.23', '2024-05-11 06:20:31'),
(365, '34.207.67.63', '2024-05-11 06:28:45'),
(366, '103.87.68.151', '2024-05-11 06:35:23'),
(367, '128.90.61.151', '2024-05-11 06:35:23'),
(368, '67.21.32.148', '2024-05-11 06:35:24'),
(369, '104.248.171.218', '2024-05-11 07:57:40'),
(370, '206.189.247.132', '2024-05-11 08:32:26'),
(371, '46.246.122.57', '2024-05-11 08:32:26'),
(372, '146.70.103.228', '2024-05-11 08:32:28'),
(373, '103.87.68.61', '2024-05-11 08:32:29'),
(374, '154.92.121.67', '2024-05-11 09:55:26'),
(375, '152.228.243.2', '2024-05-11 10:04:55'),
(376, '94.102.49.123', '2024-05-11 11:57:40'),
(377, '80.82.70.198', '2024-05-11 11:57:44'),
(378, '164.92.250.160', '2024-05-11 13:33:29'),
(379, '223.113.128.185', '2024-05-11 13:40:21'),
(380, '191.102.174.35', '2024-05-11 15:12:38'),
(381, '191.102.170.113', '2024-05-11 15:12:42'),
(382, '95.164.159.6', '2024-05-11 15:12:45'),
(383, '34.222.116.26', '2024-05-11 16:13:50'),
(384, '34.219.167.244', '2024-05-11 16:13:50'),
(385, '2604:2dc0:100:55dd::', '2024-05-11 16:17:45'),
(386, '129.153.125.162', '2024-05-11 17:11:52'),
(387, '131.202.14.152', '2024-05-11 17:23:35'),
(388, '104.166.80.53', '2024-05-11 18:35:05'),
(389, '104.166.80.60', '2024-05-11 18:38:13'),
(390, '104.166.80.241', '2024-05-11 18:39:10'),
(391, '52.90.202.143', '2024-05-11 18:40:48'),
(392, '44.195.0.163', '2024-05-11 18:40:52'),
(393, '44.234.62.22', '2024-05-11 20:18:22'),
(394, '68.183.111.108', '2024-05-11 21:52:22'),
(395, '40.113.118.83', '2024-05-11 23:28:12'),
(396, '128.140.127.242', '2024-05-11 23:40:02'),
(397, '101.35.239.216', '2024-05-12 00:12:16'),
(398, '104.166.80.104', '2024-05-12 02:34:46'),
(399, '54.92.107.92', '2024-05-12 05:58:37'),
(400, '43.206.208.110', '2024-05-12 06:00:47'),
(401, '8.41.221.54', '2024-05-12 07:17:06'),
(402, '124.220.24.137', '2024-05-12 07:34:19'),
(403, '188.42.195.140', '2024-05-12 08:16:27'),
(404, '94.102.49.206', '2024-05-12 08:16:31'),
(405, '54.81.144.107', '2024-05-12 09:31:08'),
(406, '54.242.231.249', '2024-05-12 09:31:18'),
(407, '104.165.199.67', '2024-05-12 10:13:20'),
(408, '139.162.61.41', '2024-05-12 10:49:35'),
(409, '222.249.228.245', '2024-05-12 10:54:47'),
(410, '198.13.62.122', '2024-05-12 11:16:51'),
(411, '46.246.122.112', '2024-05-12 12:15:55'),
(412, '103.9.79.228', '2024-05-12 12:15:55'),
(413, '45.87.212.78', '2024-05-12 12:15:56'),
(414, '146.70.92.28', '2024-05-12 12:16:00'),
(415, '72.44.41.245', '2024-05-12 14:18:11'),
(416, '178.33.107.250', '2024-05-12 14:30:08'),
(417, '122.176.200.5', '2024-05-12 14:57:05'),
(418, '46.246.122.113', '2024-05-12 15:54:49'),
(419, '74.80.181.154', '2024-05-12 15:54:49'),
(420, '146.70.103.228', '2024-05-12 15:54:49'),
(421, '103.87.68.152', '2024-05-12 15:54:50'),
(422, '68.183.245.101', '2024-05-12 16:00:23'),
(423, '185.253.97.94', '2024-05-12 16:04:43'),
(424, '84.17.57.120', '2024-05-12 16:09:39'),
(425, '35.205.159.124', '2024-05-12 16:27:14'),
(426, '178.211.57.76', '2024-05-12 16:27:17'),
(427, '194.113.112.100', '2024-05-12 17:20:17'),
(428, '184.174.30.34', '2024-05-12 17:20:20'),
(429, '128.90.62.67', '2024-05-12 17:45:49'),
(430, '45.133.172.72', '2024-05-12 17:45:50'),
(431, '2a13:6304:0:15::1', '2024-05-12 17:45:50'),
(432, '37.120.203.78', '2024-05-12 17:45:51'),
(433, '104.166.80.205', '2024-05-12 18:47:07'),
(434, '104.166.80.224', '2024-05-12 18:47:52'),
(435, '104.166.80.4', '2024-05-12 18:50:56'),
(436, '103.87.68.54', '2024-05-12 19:07:48'),
(437, '196.240.60.216', '2024-05-12 19:07:48'),
(438, '46.246.122.70', '2024-05-12 19:07:48'),
(439, '35.176.23.226', '2024-05-12 19:07:48'),
(440, '185.253.97.102', '2024-05-12 19:07:50'),
(441, '37.120.203.76', '2024-05-12 19:21:01'),
(442, '185.242.177.16', '2024-05-12 19:55:18'),
(443, '34.148.99.127', '2024-05-12 22:16:49'),
(444, '116.202.24.129', '2024-05-12 22:31:51'),
(445, '104.166.80.13', '2024-05-13 02:35:05'),
(446, '34.102.12.154', '2024-05-13 03:14:31'),
(447, '34.125.193.195', '2024-05-13 03:31:41'),
(448, '34.145.158.194', '2024-05-13 04:02:01'),
(449, '23.111.114.116', '2024-05-13 04:46:55'),
(450, '61.48.133.81', '2024-05-13 07:25:17'),
(451, '2001:bc8:701:1e:1618:77ff:fe4d:4fc9', '2024-05-13 10:04:31'),
(452, '101.35.239.216', '2024-05-13 11:53:06'),
(453, '109.69.66.101', '2024-05-13 12:36:33'),
(454, '159.223.206.134', '2024-05-13 14:21:54'),
(455, '223.113.128.208', '2024-05-13 14:47:28'),
(456, '161.35.50.146', '2024-05-13 15:20:10'),
(457, '104.166.80.252', '2024-05-13 18:47:02'),
(458, '104.166.80.119', '2024-05-13 18:51:01'),
(459, '104.166.80.102', '2024-05-13 18:51:52'),
(460, '65.21.36.4', '2024-05-13 19:10:26'),
(461, '103.179.223.23', '2024-05-13 19:11:10'),
(462, '153.246.135.238', '2024-05-13 19:17:56'),
(463, '157.245.212.34', '2024-05-13 20:51:58'),
(464, '110.226.197.116', '2024-05-13 21:06:47'),
(465, '54.89.7.62', '2024-05-13 23:57:24'),
(466, '35.202.93.229', '2024-05-14 00:36:21'),
(467, '104.166.80.13', '2024-05-14 02:10:54'),
(468, '83.97.112.51', '2024-05-14 02:59:32'),
(469, '23.111.114.116', '2024-05-14 03:36:00'),
(470, '34.162.27.164', '2024-05-14 04:29:05'),
(471, '52.58.12.201', '2024-05-14 09:43:46'),
(472, '185.139.7.72', '2024-05-14 10:02:27'),
(473, '206.206.192.132', '2024-05-14 12:56:51'),
(474, '39.48.181.60', '2024-05-14 14:59:22'),
(475, '193.36.225.243', '2024-05-14 15:54:01'),
(476, '122.176.206.253', '2024-05-14 17:11:52'),
(477, '129.153.125.162', '2024-05-14 17:15:45'),
(478, '104.166.80.87', '2024-05-14 18:52:18'),
(479, '104.166.80.237', '2024-05-14 18:55:30'),
(480, '104.166.80.177', '2024-05-14 18:56:57'),
(481, '124.223.196.50', '2024-05-14 23:28:15'),
(482, '43.143.28.57', '2024-05-15 00:11:41'),
(483, '185.139.7.72', '2024-05-15 02:15:31'),
(484, '23.111.114.116', '2024-05-15 02:48:32'),
(485, '104.166.80.98', '2024-05-15 03:04:05'),
(486, '54.149.134.217', '2024-05-15 08:18:58'),
(487, '101.35.239.216', '2024-05-15 09:19:38'),
(488, '152.42.143.28', '2024-05-15 13:27:38'),
(489, '206.206.192.132', '2024-05-15 13:57:24'),
(490, '34.212.9.157', '2024-05-15 16:31:28'),
(491, '34.220.217.82', '2024-05-15 16:31:31'),
(492, '65.154.226.170', '2024-05-15 17:08:31'),
(493, '94.102.63.27', '2024-05-15 17:59:50'),
(494, '94.102.49.123', '2024-05-15 17:59:59'),
(495, '124.223.193.80', '2024-05-15 18:15:14'),
(496, '104.166.80.102', '2024-05-15 18:33:52'),
(497, '104.166.80.141', '2024-05-15 18:35:02'),
(498, '104.166.80.207', '2024-05-15 18:35:58'),
(499, '165.232.153.19', '2024-05-15 19:39:47'),
(500, '185.220.101.141', '2024-05-15 21:53:48'),
(501, '23.111.114.116', '2024-05-16 01:31:36'),
(502, '104.166.80.220', '2024-05-16 02:37:09'),
(503, '8.217.130.245', '2024-05-16 10:37:21'),
(504, '182.1.213.134', '2024-05-16 11:20:55'),
(505, '146.70.205.172', '2024-05-16 15:07:10'),
(506, '122.176.206.110', '2024-05-16 16:17:07'),
(507, '124.221.186.26', '2024-05-16 17:22:12'),
(508, '124.220.171.218', '2024-05-16 18:22:55'),
(509, '152.32.252.136', '2024-05-16 18:38:31'),
(510, '104.166.80.130', '2024-05-16 18:46:38'),
(511, '104.166.80.188', '2024-05-16 18:51:12'),
(512, '104.166.80.53', '2024-05-16 18:52:22'),
(513, '80.82.70.198', '2024-05-16 21:47:35'),
(514, '34.34.75.158', '2024-05-16 21:59:05'),
(515, '104.166.80.19', '2024-05-17 02:23:41'),
(516, '23.111.114.116', '2024-05-17 03:02:11'),
(517, '209.127.252.85', '2024-05-17 05:24:57'),
(518, '95.164.159.81', '2024-05-17 05:24:58'),
(519, '138.122.193.235', '2024-05-17 05:24:59'),
(520, '185.220.100.244', '2024-05-17 06:19:39'),
(521, '182.1.182.194', '2024-05-17 09:23:25'),
(522, '136.243.220.212', '2024-05-17 11:43:03'),
(523, '2600:1f13:c14:e500:e2cd:342d:59:2ddf', '2024-05-17 17:39:18'),
(524, '165.227.41.17', '2024-05-17 19:45:46'),
(525, '34.94.252.57', '2024-05-17 19:46:27'),
(526, '35.246.94.215', '2024-05-17 19:47:54'),
(527, '124.223.196.50', '2024-05-17 21:25:07'),
(528, '154.16.192.199', '2024-05-17 22:34:22'),
(529, '34.28.173.54', '2024-05-18 00:33:46'),
(530, '104.166.80.220', '2024-05-18 02:26:52'),
(531, '23.111.114.116', '2024-05-18 03:17:54'),
(532, '2600:1900:2000:92::1:100', '2024-05-18 04:24:36'),
(533, '124.223.196.50', '2024-05-18 15:23:44'),
(534, '205.210.31.25', '2024-05-18 15:45:45'),
(535, '199.192.18.45', '2024-05-18 18:07:40'),
(536, '124.223.193.173', '2024-05-18 22:53:29'),
(537, '23.111.114.116', '2024-05-19 01:37:02'),
(538, '54.188.244.75', '2024-05-19 08:19:47'),
(539, '122.176.197.184', '2024-05-19 12:18:23'),
(540, '52.38.147.84', '2024-05-19 16:40:14'),
(541, '54.214.231.148', '2024-05-19 16:40:20'),
(542, '92.118.57.47', '2024-05-19 17:54:25'),
(543, '94.247.172.129', '2024-05-19 18:22:45'),
(544, '198.235.24.148', '2024-05-19 18:34:30'),
(545, '104.166.80.132', '2024-05-19 18:42:51'),
(546, '104.166.80.230', '2024-05-19 18:43:19'),
(547, '104.166.80.198', '2024-05-19 18:43:54'),
(548, '165.22.228.191', '2024-05-19 20:56:30'),
(549, '34.89.50.230', '2024-05-20 00:04:02'),
(550, '23.111.114.116', '2024-05-20 01:30:29'),
(551, '193.148.16.118', '2024-05-20 12:31:51'),
(552, '193.148.16.118', '2024-05-20 12:31:51'),
(553, '23.111.114.116', '2024-05-21 00:10:27'),
(554, '182.1.180.49', '2024-05-21 08:14:21'),
(555, '2604:a880:cad:d0::d82:8001', '2024-05-21 09:17:46'),
(556, '182.1.162.57', '2024-05-21 09:20:50'),
(557, '129.153.125.162', '2024-05-21 09:21:24'),
(558, '205.169.39.250', '2024-05-21 09:22:38'),
(559, '34.123.170.104', '2024-05-21 09:23:07'),
(560, '207.241.236.84', '2024-05-21 09:26:57'),
(561, '182.1.165.185', '2024-05-21 09:44:14'),
(562, '192.175.111.254', '2024-05-21 09:54:39'),
(563, '64.15.129.102', '2024-05-21 09:54:44'),
(564, '52.16.245.145', '2024-05-21 11:18:04'),
(565, '133.242.174.119', '2024-05-21 12:18:47'),
(566, '104.166.80.6', '2024-05-21 12:30:56'),
(567, '104.166.80.2', '2024-05-21 12:31:44'),
(568, '104.166.80.156', '2024-05-21 13:32:51'),
(569, '2a01:4a0:1338:93::8', '2024-05-21 13:58:28'),
(570, '212.143.94.254', '2024-05-21 13:59:20'),
(571, '2a03:1b20:6:f011::5e', '2024-05-21 14:00:12'),
(572, '18.209.167.114', '2024-05-21 14:12:10'),
(573, '100.24.46.155', '2024-05-21 14:13:26'),
(574, '192.145.127.212', '2024-05-21 14:16:57'),
(575, '54.173.196.236', '2024-05-21 14:17:32'),
(576, '89.208.29.98', '2024-05-21 16:54:04'),
(577, '45.95.243.31', '2024-05-21 16:54:24'),
(578, '80.82.70.198', '2024-05-21 17:51:46'),
(579, '188.42.195.140', '2024-05-21 17:51:54'),
(580, '94.102.49.206', '2024-05-21 17:53:15'),
(581, '94.102.49.123', '2024-05-21 17:53:18'),
(582, '89.248.171.23', '2024-05-21 19:04:07'),
(583, '171.244.43.14', '2024-05-21 23:22:09'),
(584, '110.172.98.2', '2024-05-22 01:27:19'),
(585, '156.146.57.47', '2024-05-22 09:48:31'),
(586, '198.12.64.40', '2024-05-22 09:48:31'),
(587, '167.160.167.233', '2024-05-22 09:48:31'),
(588, '118.107.220.60', '2024-05-22 09:48:32'),
(589, '74.80.181.140', '2024-05-22 09:49:08'),
(590, '196.240.60.204', '2024-05-22 09:49:09'),
(591, '38.95.13.131', '2024-05-22 09:49:09'),
(592, '104.166.80.32', '2024-05-22 12:29:55'),
(593, '104.166.80.40', '2024-05-22 12:30:29'),
(594, '104.166.80.6', '2024-05-23 12:34:05'),
(595, '104.166.80.2', '2024-05-23 12:38:08'),
(596, '104.166.80.119', '2024-05-24 12:39:21'),
(597, '104.166.80.190', '2024-05-24 12:40:59'),
(598, '209.97.151.87', '2024-05-25 03:46:19'),
(599, '209.38.238.64', '2024-05-25 09:30:47'),
(600, '104.166.80.224', '2024-05-25 12:22:55'),
(601, '104.166.80.115', '2024-05-25 12:28:35'),
(602, '68.183.120.3', '2024-05-26 12:04:41'),
(603, '104.166.80.226', '2024-05-26 12:18:34'),
(604, '104.166.80.245', '2024-05-26 12:22:43'),
(605, '104.166.80.158', '2024-05-27 12:24:36'),
(606, '104.166.80.53', '2024-05-27 12:28:05'),
(607, '161.35.189.197', '2024-05-27 16:01:53'),
(608, '104.166.80.183', '2024-05-28 12:29:16'),
(609, '104.166.80.181', '2024-05-28 12:31:36'),
(610, '104.166.80.49', '2024-05-28 12:59:19'),
(611, '104.166.80.241', '2024-05-28 13:29:19'),
(612, '104.166.80.254', '2024-05-28 14:02:25'),
(613, '104.166.80.72', '2024-05-28 14:32:21'),
(614, '104.166.80.147', '2024-05-28 15:02:26'),
(615, '104.166.80.190', '2024-05-31 12:32:39'),
(616, '104.166.80.179', '2024-05-31 12:33:21'),
(617, '3.252.253.67', '2024-05-31 23:39:10'),
(618, '34.253.207.160', '2024-06-05 00:31:07'),
(619, '18.201.15.216', '2024-06-05 08:00:43'),
(620, '104.166.80.5', '2024-06-06 05:22:34'),
(621, '104.166.80.128', '2024-06-06 09:12:47'),
(622, '2a01:4a0:1338:92::3', '2024-06-07 02:18:31'),
(623, '54.146.228.129', '2024-06-07 02:19:50'),
(624, '94.102.63.27', '2024-06-07 02:20:20'),
(625, '118.107.220.49', '2024-06-07 02:20:27'),
(626, '84.17.59.75', '2024-06-07 02:20:28'),
(627, '212.80.214.9', '2024-06-07 02:20:30'),
(628, '2400:6180:0:d0::284:c001', '2024-06-07 02:20:34'),
(629, '212.143.94.254', '2024-06-07 02:20:39'),
(630, '89.248.171.23', '2024-06-07 02:23:15'),
(631, '198.240.71.188', '2024-06-07 02:23:54'),
(632, '164.90.241.135', '2024-06-07 02:25:10'),
(633, '103.131.95.72', '2024-06-07 02:52:08'),
(634, '106.161.65.206', '2024-06-07 02:56:13'),
(635, '139.99.170.109', '2024-06-07 02:56:17'),
(636, '159.203.53.95', '2024-06-07 03:03:28'),
(637, '68.183.245.101', '2024-06-07 03:06:02'),
(638, '169.150.208.134', '2024-06-07 03:11:45'),
(639, '35.163.238.88', '2024-06-07 03:34:51'),
(640, '94.102.49.206', '2024-06-07 07:48:28'),
(641, '80.82.70.198', '2024-06-07 07:49:51'),
(642, '181.214.164.72', '2024-06-07 12:25:17'),
(643, '93.174.93.114', '2024-06-08 04:23:32'),
(644, '54.245.191.82', '2024-06-08 11:05:05'),
(645, '143.110.214.145', '2024-06-09 18:49:33'),
(646, '159.203.83.82', '2024-06-10 09:39:23'),
(647, '114.10.129.99', '2024-06-11 06:36:05'),
(648, '182.1.211.72', '2024-06-11 08:19:58'),
(649, '182.1.212.156', '2024-06-11 08:20:13'),
(650, '2a03:2880:ff:10::face:b00c', '2024-06-11 08:49:13'),
(651, '2a03:2880:10ff::face:b00c', '2024-06-11 08:49:16'),
(652, '2a03:2880:10ff:13::face:b00c', '2024-06-11 08:49:16'),
(653, '114.10.129.119', '2024-06-11 08:49:25'),
(654, '114.5.212.19', '2024-06-11 08:51:03'),
(655, '182.253.131.187', '2024-06-11 10:13:59'),
(656, '182.0.201.150', '2024-06-11 12:13:25'),
(657, '182.0.230.154', '2024-06-11 12:13:54'),
(658, '2600:1f18:13dc:5c0d:d4fe:bbc:c879:ba6a', '2024-06-11 12:13:59'),
(659, '103.236.190.199', '2024-06-11 15:36:50'),
(660, '54.86.66.252', '2024-06-12 11:59:26'),
(661, '184.72.115.35', '2024-06-12 14:07:35'),
(662, '184.72.121.156', '2024-06-12 17:05:02'),
(663, '184.72.121.156', '2024-06-13 02:23:29'),
(664, '44.242.135.248', '2024-06-13 22:56:45'),
(665, '2a03:2880:ff:f::face:b00c', '2024-06-15 17:52:55'),
(666, '2a03:2880:21ff:70::face:b00c', '2024-06-15 17:52:59'),
(667, '2a03:2880:20ff:6::face:b00c', '2024-06-15 17:53:00'),
(668, '2a03:2880:21ff:7::face:b00c', '2024-06-15 17:53:01'),
(669, '110.136.219.3', '2024-06-15 17:53:26'),
(670, '2a03:2880:31ff:16::face:b00c', '2024-06-15 17:53:28'),
(671, '2a03:2880:30ff:73::face:b00c', '2024-06-15 17:53:29'),
(672, '2a03:2880:24ff:73::face:b00c', '2024-06-15 17:53:33'),
(673, '2a03:2880:27ff:73::face:b00c', '2024-06-15 17:53:34'),
(674, '2a03:2880:31ff:b::face:b00c', '2024-06-15 17:53:59'),
(675, '2a03:2880:31ff:3::face:b00c', '2024-06-15 17:54:02'),
(676, '104.154.107.180', '2024-06-21 07:26:36'),
(677, '182.1.210.177', '2024-06-22 11:33:10'),
(678, '182.3.42.233', '2024-06-22 11:33:51'),
(679, '103.240.110.42', '2024-06-22 11:41:18'),
(680, '110.136.12.96', '2024-06-22 12:07:04'),
(681, '2600:1f18:13dc:5c0c:ff6d:50a4:7813:89', '2024-06-22 12:35:41'),
(682, '182.4.71.229', '2024-06-22 12:37:42'),
(683, '2a03:2880:ff:1::face:b00c', '2024-06-22 12:40:23'),
(684, '116.206.33.55', '2024-06-22 12:40:34'),
(685, '36.79.239.153', '2024-06-22 13:28:42'),
(686, '110.50.81.198', '2024-06-22 13:28:44'),
(687, '103.189.123.8', '2024-06-22 13:29:41'),
(688, '103.189.123.6', '2024-06-22 13:30:14'),
(689, '110.50.81.199', '2024-06-22 13:48:19'),
(690, '182.2.134.96', '2024-06-22 13:48:42'),
(691, '202.43.172.5', '2024-06-22 13:51:45'),
(692, '182.4.70.77', '2024-06-22 15:27:08'),
(693, '2a03:2880:ff:14::face:b00c', '2024-06-22 16:28:09'),
(694, '182.1.86.144', '2024-06-22 16:29:17'),
(695, '182.3.4.82', '2024-06-22 16:29:28'),
(696, '2001:448a:50e0:97c6:1c89:82e7:ef7b:5cd0', '2024-06-22 16:34:58'),
(697, '38.188.249.76', '2024-06-22 16:48:57'),
(698, '114.125.87.250', '2024-06-22 16:49:40'),
(699, '175.45.186.197', '2024-06-22 16:49:42'),
(700, '2600:1f18:13dc:5c0c:6da2:5ff8:b948:349c', '2024-06-22 16:50:42'),
(701, '182.2.228.45', '2024-06-22 16:53:01'),
(702, '182.4.69.44', '2024-06-22 17:00:28'),
(703, '182.1.86.108', '2024-06-22 17:03:52'),
(704, '182.2.77.36', '2024-06-22 17:05:36'),
(705, '114.124.214.253', '2024-06-22 17:36:07'),
(706, '114.10.153.101', '2024-06-22 17:46:54'),
(707, '2001:448a:1128:1054:659a:d151:121a:f36', '2024-06-22 18:25:03'),
(708, '116.206.33.48', '2024-06-22 18:32:45'),
(709, '103.168.44.213', '2024-06-22 18:39:20'),
(710, '114.10.123.205', '2024-06-22 18:41:25'),
(711, '182.4.68.165', '2024-06-22 18:52:30'),
(712, '2001:448a:1128:1054:4d77:914c:b48e:3bf8', '2024-06-22 18:58:27'),
(713, '114.10.136.170', '2024-06-22 19:29:21'),
(714, '103.26.211.5', '2024-06-22 23:24:55'),
(715, '2600:1f18:13dc:5c0c:eaef:5612:5451:77ce', '2024-06-22 23:25:15'),
(716, '182.1.170.85', '2024-06-23 06:02:59'),
(717, '202.46.68.155', '2024-06-23 06:03:18'),
(718, '114.125.186.201', '2024-06-23 06:05:18'),
(719, '42.62.176.110', '2024-06-23 07:11:47'),
(720, '18.246.234.120', '2024-06-23 07:42:32'),
(721, '134.122.41.128', '2024-06-23 10:37:02'),
(722, '36.79.228.109', '2024-06-23 12:31:18'),
(723, '2001:448a:1190:2345:aceb:c5a3:ed4e:3512', '2024-06-23 14:57:27'),
(724, '182.2.234.242', '2024-06-23 15:30:44'),
(725, '103.26.211.4', '2024-06-23 15:33:27'),
(726, '114.125.174.166', '2024-06-23 16:54:11'),
(727, '114.125.189.164', '2024-06-23 16:56:42'),
(728, '110.50.81.202', '2024-06-23 16:59:39'),
(729, '140.213.133.66', '2024-06-23 17:27:43'),
(730, '182.1.197.78', '2024-06-23 17:36:29'),
(731, '140.213.81.223', '2024-06-23 17:40:46'),
(732, '110.50.81.199', '2024-06-23 18:00:30'),
(733, '103.116.13.228', '2024-06-23 18:01:53'),
(734, '118.98.26.6', '2024-06-23 18:06:10'),
(735, '114.125.186.168', '2024-06-23 18:48:10'),
(736, '::1', '2024-10-25 21:53:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `denah`
--
ALTER TABLE `denah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `denahbangunan`
--
ALTER TABLE `denahbangunan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `industri`
--
ALTER TABLE `industri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keutamaan`
--
ALTER TABLE `keutamaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  ADD PRIMARY KEY (`kegiatan_id`);

--
-- Indeks untuk tabel `tbl_rencanakegiatan`
--
ALTER TABLE `tbl_rencanakegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `denah`
--
ALTER TABLE `denah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `denahbangunan`
--
ALTER TABLE `denahbangunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `industri`
--
ALTER TABLE `industri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `keutamaan`
--
ALTER TABLE `keutamaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  MODIFY `kegiatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `tbl_rencanakegiatan`
--
ALTER TABLE `tbl_rencanakegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `visi`
--
ALTER TABLE `visi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
