-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2020 pada 06.49
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_akses`
--

CREATE TABLE `pj_akses` (
  `id_akses` tinyint(1) UNSIGNED NOT NULL,
  `label` varchar(10) NOT NULL,
  `level_akses` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_akses`
--

INSERT INTO `pj_akses` (`id_akses`, `label`, `level_akses`) VALUES
(1, 'admin', 'Administrator'),
(2, 'kasir', 'Staff Kasir'),
(3, 'inventory', 'Staff Inventory'),
(4, 'keuangan', 'Staff Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_barang`
--

CREATE TABLE `pj_barang` (
  `id_barang` int(1) UNSIGNED NOT NULL,
  `kode_barang` varchar(40) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `total_stok` mediumint(1) UNSIGNED NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL,
  `id_merk_barang` mediumint(1) UNSIGNED DEFAULT NULL,
  `keterangan` text NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_barang`
--

INSERT INTO `pj_barang` (`id_barang`, `kode_barang`, `nama_barang`, `total_stok`, `harga`, `id_kategori_barang`, `id_merk_barang`, `keterangan`, `dihapus`) VALUES
(1, '0001', 'Nike Sport C993', 4, '400000', 1, 2, '', 'tidak'),
(2, '0002', 'Runme Everynight Y98', 45, '120000', 3, 6, '', 'tidak'),
(3, '0003', 'My Lovely Bag 877', 30, '350000', 2, 3, '', 'tidak'),
(4, '0004', 'Quick Silver Gaul', 15, '35000', 3, 5, '', 'tidak'),
(5, '0005', 'My Cool Shoes', 39, '550000', 1, 2, '', 'tidak'),
(6, '3453453', 'Testing', 45, '929992', 1, 6, '', 'ya'),
(7, '9982429', 'Tes ada', 67, '600000', 3, 3, '', 'ya'),
(8, '8787829', 'Yes desk', 88, '999999', 1, 3, '', 'ya'),
(9, '0009', 'Test', 18, '100000', 3, 1, '', 'ya'),
(10, '99989', 'Test', 9, '99', 1, 2, '', 'ya'),
(11, '00010', 'Rinso', 17, '30000', 3, NULL, '', 'tidak'),
(12, '00011', 'mouse', 20, '20000', 3, 1, '', 'tidak'),
(13, '00012', 'Soklin Lantai', 20, '3000', 3, 1, '', 'tidak'),
(14, '00013', 'Beras Merah', 15, '2000', 3, 1, '', 'tidak'),
(16, '00018', 'Testing', 20, '3000', 4, 3, '', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_ci_sessions`
--

CREATE TABLE `pj_ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_ci_sessions`
--

INSERT INTO `pj_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('t5q12a20ab0omtjbvvioqliimq', '::1', 1606367407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373430373b),
('q5vvpmjo86u9513lpm9t8ncbm9', '::1', 1606367411, ''),
('n7fmtampiuqpkejfd4824v3gvt', '::1', 1606367429, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('v2mttph3hhkh6ghsjdollp2va7', '::1', 1606367429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373432393b),
('05hgi91kuppbfskfco1o3v08j5', '::1', 1606367430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373433303b),
('q7hcb716v4v9h0o7ppdatjlam9', '::1', 1606367434, ''),
('5m57b5hnuoe4vhiglvu5hl4v6r', '::1', 1606367656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373635363b),
('4chj1lgappvmih6gg9qrrov83h', '::1', 1606367660, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('d1ble9p7u5rbb8hfsqvbesind7', '::1', 1606367660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373636303b),
('tlk9u32nc171nv35oldtris4fp', '::1', 1606367661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373636313b),
('t140vtlpadsemievketv76i2f3', '::1', 1606367682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373638323b),
('pv66147qq6qh9khj6350q9sdkk', '::1', 1606367686, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('3o33to3ku339llq7534ne9i5ds', '::1', 1606367687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373638373b),
('dfo5is4mnhgdtc8eof1fnj21le', '::1', 1606367687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336373638373b),
('c2aqmv7vgh6291nncoknjec9co', '::1', 1606368006, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('c01pem7ftj7u122ngffqfhkv98', '::1', 1606368007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383030373b),
('v2be97i8spduq9qc782pm6nn0v', '::1', 1606368008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383030383b),
('kmd23qc687rihil50co5sfkiq4', '::1', 1606368013, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('ichehclsoc9cl496n635fi0dfd', '::1', 1606368013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383031333b),
('bum0u1pdb2raptiiofptdbpu9l', '::1', 1606368014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383031343b),
('pdo53m098ta4t468667aupcd16', '::1', 1606368334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383333343b),
('q0ej2mdhqiro79huh3av320bcg', '::1', 1606368339, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('tvfn1j7ltj78kepki0u060f8vo', '::1', 1606368339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383333393b),
('njgs7pth51mbsvjchv1t4aiiv3', '::1', 1606368340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383334303b),
('adv0l6t5h3ag9tcrv7ske9uf3a', '::1', 1606368450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383435303b),
('hg1jl0erfqelsb88dcn2utitep', '::1', 1606368454, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('uoov88oqm58ln7335234ohnhn0', '::1', 1606368455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383435353b),
('aiielj1o9b2123qf2h9u3bjidr', '::1', 1606368455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383435353b),
('uk0fc1c7kpirprqkih2v7sg73i', '::1', 1606368519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383531393b),
('tbt9kq47e2fij2p1q411j0okqi', '::1', 1606368523, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('tpfvukhb71lr3rtnhnqjj9l539', '::1', 1606368524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383532343b),
('3ondumgv969vtiq62idvbe20tq', '::1', 1606368524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383532343b),
('vb41ngjcsqjq0h2m4kcb35bkrl', '::1', 1606368528, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('hdj0ujb5qsn0ol292iif9bmue8', '::1', 1606368528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383532383b),
('5p01js4oona7svoa01ubaufn5k', '::1', 1606368529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383532393b),
('t42crhmlcfomnk2v27v2iqsbiu', '::1', 1606368881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383838313b),
('rg91vli5g9j5814audi8kv6uvv', '::1', 1606368886, ''),
('pl4emtjs603pid1tc18h66teln', '::1', 1606368934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383933343b),
('93afa2d2dtsoicahmks8d9k1oj', '::1', 1606368940, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a33323a223231323332663239376135376135613734333839346130653461383031666333223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('i2v6hqotrtgn1endah1tm24nb5', '::1', 1606368940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383934303b),
('rov8qsrjntrqq97pj6g1dsv586', '::1', 1606368940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336383934303b),
('ou1otc1k3qddgdtl8b3vv69b3f', '::1', 1606369139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393133393b),
('2hog89lmqo48t6sltjcessske8', '::1', 1606369145, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a33323a223231323332663239376135376135613734333839346130653461383031666333223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('jpocgoq4nbsr93s1fulgc6giv4', '::1', 1606369145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393134353b),
('ok6eg2ath5svj9hd0fe21nt9mi', '::1', 1606369145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393134353b),
('q9mh7c5vp1kbjfk5s5btoe8dfn', '::1', 1606369150, 0x61705f69645f757365727c733a313a2232223b61705f70617373776f72647c733a33323a226337393131616633616462643132613033356232383935353664393634373061223b61705f6e616d617c733a383a2253696c616e6f6c64223b61705f6c6576656c7c733a353a226b61736972223b61705f6c6576656c5f63617074696f6e7c733a31313a225374616666204b61736972223b),
('dm511k5e0iq045a8q5qpnv31ea', '::1', 1606369150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393135303b),
('mntk5itktl4vct62o0s1c5r3jk', '::1', 1606369151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393135313b),
('oo83uhdqt8d46fphh29hogdcel', '::1', 1606369235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393233353b),
('vi38n5e02fmv7fbna4lsn61e35', '::1', 1606369246, ''),
('o4dekh1nkscbt5d4ajbghcoigb', '::1', 1606369247, ''),
('kah4q6p341s4hp010vlreprpao', '::1', 1606369248, ''),
('059enes8hgv16j8ask74ndisdm', '::1', 1606369249, ''),
('vb94ng6o1v239cfp8mo6rmma04', '::1', 1606369253, ''),
('8ciane1jk0q83up0oel3kt7h5v', '::1', 1606369253, ''),
('cq6j3l7tbmqi8ff5dst18o94lk', '::1', 1606369253, ''),
('ntkhsq8eq39gqvu66kdcm0vqc2', '::1', 1606369253, ''),
('qq411s3tfpq3qbr7lu7m3qqjni', '::1', 1606369254, ''),
('p7lag61kftfdqmvp5h1l4rotov', '::1', 1606369254, ''),
('mb2ktjtpeq33cc8qbei05d21b8', '::1', 1606369255, ''),
('v87srplh8kuc0i0fqqcu0qs885', '::1', 1606369255, ''),
('lvcbvqdbn2gupjfn4ua45bmfpc', '::1', 1606369286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393238363b),
('6o4as36iednkbqhcpbur5ht2sf', '::1', 1606369291, ''),
('fts21ckt0svrd8l1s4ko1ne8oe', '::1', 1606369292, ''),
('nuagodvao0qllujg3l9afjs9l6', '::1', 1606369292, ''),
('5vruqqkrk7roe81651alds5vh2', '::1', 1606369293, ''),
('cssmo0ufuodesackqb8fdk64a1', '::1', 1606369294, ''),
('tmmh6ova60n7eh2en8b4rmoeiv', '::1', 1606369294, ''),
('980ic5rebq0r8326aaav7s19gm', '::1', 1606369294, ''),
('uuguggqfdb45r8ehphrkop4shn', '::1', 1606369295, ''),
('32kmrui1sangb4fb35uos2m289', '::1', 1606369295, ''),
('jni3ue05tmta03jhrsicptgqi1', '::1', 1606369295, ''),
('vvbpea3m5rid82kgbdtsgiud1g', '::1', 1606369295, ''),
('mptfo9f2n68ha56v6hqhkr3q6o', '::1', 1606369296, ''),
('pes89bkri5an3750c8dh2r2bqq', '::1', 1606369296, ''),
('d3bl2ok7jvj4ijrtil45dcq6ot', '::1', 1606369296, ''),
('qju2akg6grokfnlppitkge7m4c', '::1', 1606369296, ''),
('5ebp6i30e7g483qk563iulq5h5', '::1', 1606369296, ''),
('iqj13s6468k08qnu44ka0nakdf', '::1', 1606369297, ''),
('mlv3520icr0qnoltelv5lp390t', '::1', 1606369297, ''),
('2hv7446n19buamaf7g61dte0k9', '::1', 1606369297, ''),
('fkb5aqj85arvfavr2c0c3q031s', '::1', 1606369297, ''),
('ftcrvn8322mbceq828c1phm0f7', '::1', 1606369297, ''),
('bhkbseho4m7lquas6v1l4ute99', '::1', 1606369297, ''),
('mv7uo1u34kj5hid5c1q0lta41r', '::1', 1606369297, ''),
('msjfolct3c4c783vglkol6f5gv', '::1', 1606369298, ''),
('9e8crrhi174dd0epetvin3r25m', '::1', 1606369299, ''),
('caq8geflpqvj1s50vfh99pjfra', '::1', 1606369359, ''),
('arg4cvsds42evvkqpogbv78hh6', '::1', 1606369360, ''),
('nkgno57tufi5mgp30kkaigfhde', '::1', 1606369360, ''),
('v01o5rjijv570pv6b9tvb9ukrl', '::1', 1606369360, ''),
('7r3dno1asrh2fqc0tsnvnj714a', '::1', 1606369360, ''),
('2jfcbohuugvi5e4tf6br8taki2', '::1', 1606369360, ''),
('uv3ni07s388ruo2h99rl49gp2q', '::1', 1606369361, ''),
('b1a6u93m6dgapbr149t9vgd9e4', '::1', 1606369361, ''),
('stf0ldjq8377r3cphm9202p9dd', '::1', 1606369361, ''),
('oi0e0d1r3jq25jbviio8hus73a', '::1', 1606369361, ''),
('ri70vbumukl7rdu7ct68fn6pb7', '::1', 1606369362, ''),
('jcf3sdapva5413e7ltmvlgl02u', '::1', 1606369370, ''),
('hfcmregrj1fd3nnpod0d03460e', '::1', 1606369370, ''),
('7aa8uq2o64a2gpnufj5s3s4pq0', '::1', 1606369371, ''),
('rjun2f0m8e8fh6m4jqdao2co4b', '::1', 1606369371, ''),
('fvcvm28p5o2dj9drn0jg90e9t4', '::1', 1606369371, ''),
('ihfrg90m3h75dmiln3hbpu2e64', '::1', 1606369371, ''),
('7te75nvoe0m8kh0spn2pf3snt9', '::1', 1606369371, ''),
('ij9080kmcnmfditc0bmshdsur4', '::1', 1606369372, ''),
('1vs3v7s4agipo185hv3avj1smk', '::1', 1606369372, ''),
('o5kqmgk47boi6cjlmmft747khv', '::1', 1606369372, ''),
('56tpkpthi5u6on3cdju9cuat87', '::1', 1606369372, ''),
('9nnd11u9jav2c1t1dfdfqd8mn8', '::1', 1606369372, ''),
('vh2flr8i6adsnjdp74k5nr8jl8', '::1', 1606369372, ''),
('5l2586q5qmhjl0ruvh8dl6qucc', '::1', 1606369372, ''),
('reivhj1oh8egp0qkhhffc9t470', '::1', 1606369373, ''),
('vgb5bjeqm23skeb9e6t5h8e51h', '::1', 1606369385, ''),
('e1obro0djp99kbnaa3frnckh7n', '::1', 1606369385, ''),
('od9hkcbbdi41cnasca5frg1meu', '::1', 1606369386, ''),
('f24m07ljgph3uvhtop8rhg70h8', '::1', 1606369386, ''),
('tg8e1p0i061udbk7m4a37410r2', '::1', 1606369386, ''),
('7nqcsr38jcjouqgel92vlmibl3', '::1', 1606369386, ''),
('24ut5m1l551ikk2msi5e1n2sg3', '::1', 1606369387, ''),
('alr2lqdtiraji3c0n0nb80ntj9', '::1', 1606369387, ''),
('a0afnu40iboa3jfjhd6r5ed2fc', '::1', 1606369387, ''),
('7cpekn1rhfqr33mj6tmh3lavgm', '::1', 1606369388, ''),
('a5m9cb2v23u5vsgtohh25k5n2u', '::1', 1606369417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363336393431373b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_kategori_barang`
--

CREATE TABLE `pj_kategori_barang` (
  `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL,
  `kategori` varchar(40) NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_kategori_barang`
--

INSERT INTO `pj_kategori_barang` (`id_kategori_barang`, `kategori`, `dihapus`) VALUES
(1, 'Sepatu', 'ya'),
(2, 'Tas', 'tidak'),
(3, 'Baju', 'tidak'),
(4, 'Celana', 'tidak'),
(5, 'Topi', 'ya'),
(6, 'Gelang', 'ya'),
(7, 'Jam', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_merk_barang`
--

CREATE TABLE `pj_merk_barang` (
  `id_merk_barang` mediumint(1) UNSIGNED NOT NULL,
  `merk` varchar(40) NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_merk_barang`
--

INSERT INTO `pj_merk_barang` (`id_merk_barang`, `merk`, `dihapus`) VALUES
(1, 'Adidas', 'tidak'),
(2, 'Nike', 'tidak'),
(3, 'BodyPack', 'tidak'),
(4, 'Jansport', 'tidak'),
(5, 'Nevada', 'tidak'),
(6, 'Jackloth', 'tidak'),
(7, 'Pierro', 'ya'),
(8, 'Pierro', 'ya'),
(9, 'Pierro', 'ya'),
(10, 'Converse', 'tidak'),
(11, 'Piero', 'ya'),
(12, 'Teen', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_pelanggan`
--

CREATE TABLE `pj_pelanggan` (
  `id_pelanggan` mediumint(1) UNSIGNED NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text,
  `telp` varchar(40) DEFAULT NULL,
  `info_tambahan` text,
  `kode_unik` varchar(30) NOT NULL,
  `waktu_input` datetime NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_pelanggan`
--

INSERT INTO `pj_pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`, `info_tambahan`, `kode_unik`, `waktu_input`, `dihapus`) VALUES
(1, 'Pak Udin', 'Jalan Kayumanis 2 Baru', '08838493439', 'Testtt', '', '2016-05-07 22:44:25', 'ya'),
(2, 'Pak Jarwo', 'Kemanggisan deket binus', '4353535353', NULL, '', '2016-05-07 22:44:49', 'tidak'),
(3, 'Joko', 'Kayumanis', '08773682882', '', '', '2016-05-23 16:31:47', 'tidak'),
(4, 'Budi', 'Salemba', '089930393829', 'Testing', '', '2016-05-23 16:33:00', 'ya'),
(5, 'Mira', 'Pisangan', '09938829232', '', '', '2016-05-23 16:36:45', 'tidak'),
(6, 'Deden', 'Jauh', '990393', 'Test', '', '2016-05-24 20:54:58', 'ya'),
(7, 'Jamil', 'Berlan', '0934934939', '', '14640998941', '2016-05-24 21:24:54', 'tidak'),
(8, 'Budi', 'Jatinegara', '8349393439', '', '14640999321', '2016-05-24 21:25:32', 'tidak'),
(9, 'Kodok', 'Test', '0000', '', '14641003271', '2016-05-24 21:32:07', 'tidak'),
(10, 'Brandon', 'Test', '99030', '', '14641003401', '2016-05-24 21:32:20', 'tidak'),
(11, 'Broke', 'Test', '9900', 'Test', '14641005481', '2016-05-24 21:35:48', 'tidak'),
(12, 'Narji', 'Test', '000', 'Test', '14641006401', '2016-05-24 21:37:20', 'tidak'),
(13, 'Bernard', 'Test', '0000', 'test', '14641006651', '2016-05-24 21:37:45', 'tidak'),
(14, 'Nani', 'Test\r\n\r\nAja', '0000', 'Test\r\n\r\nAja', '14641016551', '2016-05-24 21:54:15', 'ya'),
(15, 'Norman', 'Test', '0039349', '', '14641017311', '2016-05-24 21:55:31', 'tidak'),
(16, 'Melina', 'Jauh', '9900039', 'Test', '14661682871', '2016-06-17 19:58:07', 'tidak'),
(17, 'Malih', 'test', '3434343', '', '14729767201', '2016-09-04 15:12:00', 'tidak'),
(18, 'jaka', 'jaka', '0000', 'jaka', '14729767881', '2016-09-04 15:13:08', 'tidak'),
(19, 'makak', 'kkk', '999', 'kakad', '14729768261', '2016-09-04 15:13:46', 'tidak'),
(20, 'asda', 'asda', '2342', 'asdad', '14729768371', '2016-09-04 15:13:57', 'tidak'),
(21, 'asdadadasdad', 'test', '324', 'asdadad', '14729768481', '2016-09-04 15:14:08', 'tidak'),
(22, 'akuimut', 'jl. surga', '8232873827', 'tidak ada', '', '0000-00-00 00:00:00', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_penjualan_detail`
--

CREATE TABLE `pj_penjualan_detail` (
  `id_penjualan_d` int(1) UNSIGNED NOT NULL,
  `id_penjualan_m` int(1) UNSIGNED NOT NULL,
  `id_barang` int(1) NOT NULL,
  `jumlah_beli` smallint(1) UNSIGNED NOT NULL,
  `harga_satuan` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_penjualan_detail`
--

INSERT INTO `pj_penjualan_detail` (`id_penjualan_d`, `id_penjualan_m`, `id_barang`, `jumlah_beli`, `harga_satuan`, `total`) VALUES
(2, 2, 2, 1, '120000', '120000'),
(3, 2, 4, 1, '35000', '35000'),
(4, 3, 3, 1, '350000', '350000'),
(5, 4, 2, 1, '120000', '120000'),
(6, 4, 11, 2, '30000', '60000'),
(7, 4, 4, 2, '35000', '70000'),
(11, 6, 2, 1, '120000', '120000'),
(10, 6, 1, 1, '400000', '400000'),
(12, 7, 4, 1, '35000', '35000'),
(13, 8, 3, 1, '350000', '350000'),
(14, 9, 1, 1, '400000', '400000'),
(15, 9, 2, 1, '120000', '120000'),
(16, 9, 3, 1, '350000', '350000'),
(17, 9, 4, 1, '35000', '35000'),
(18, 10, 1, 1, '400000', '400000'),
(19, 10, 2, 1, '120000', '120000'),
(20, 10, 3, 1, '350000', '350000'),
(21, 11, 1, 1, '400000', '400000'),
(22, 11, 3, 1, '350000', '350000'),
(23, 12, 3, 2, '350000', '700000'),
(26, 15, 1, 1, '400000', '400000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_penjualan_master`
--

CREATE TABLE `pj_penjualan_master` (
  `id_penjualan_m` int(1) UNSIGNED NOT NULL,
  `nomor_nota` varchar(40) NOT NULL,
  `tanggal` datetime NOT NULL,
  `grand_total` decimal(10,0) NOT NULL,
  `bayar` decimal(10,0) NOT NULL,
  `keterangan_lain` text,
  `id_pelanggan` mediumint(1) UNSIGNED DEFAULT NULL,
  `id_user` mediumint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_penjualan_master`
--

INSERT INTO `pj_penjualan_master` (`id_penjualan_m`, `nomor_nota`, `tanggal`, `grand_total`, `bayar`, `keterangan_lain`, `id_pelanggan`, `id_user`) VALUES
(2, '57431A97D5DF8', '2016-05-23 16:58:31', '155000', '160000', '', 3, 1),
(3, '57431BDDAFA9D2', '2016-05-23 17:03:57', '350000', '400000', '', 3, 2),
(4, '57445D46655AB1', '2016-05-24 15:55:18', '250000', '260000', '', NULL, 1),
(6, '576406086CB611', '2016-06-17 16:15:36', '520000', '550000', '', NULL, 1),
(7, '57655546C37441', '2016-06-18 16:05:58', '35000', '40000', '', NULL, 1),
(8, '57655552ABF781', '2016-06-18 16:06:10', '350000', '400000', '', NULL, 1),
(9, '577A31BABCDC51', '2016-07-04 11:51:54', '905000', '910000', '', NULL, 1),
(10, '577A3327991DC1', '2016-07-04 11:57:59', '870000', '880000', 'Dibayar Langsung', NULL, 1),
(11, '577A3793C67CB1', '2016-07-04 12:16:51', '750000', '750000', '', NULL, 1),
(12, '57CA627F897FB1', '2016-09-03 07:41:19', '700000', '800000', '', NULL, 1),
(15, '57CBD697806F61', '2016-09-04 10:08:55', '400000', '500000', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_user`
--

CREATE TABLE `pj_user` (
  `id_user` mediumint(1) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_akses` tinyint(1) UNSIGNED NOT NULL,
  `status` enum('Aktif','Non Aktif') NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_user`
--

INSERT INTO `pj_user` (`id_user`, `username`, `password`, `nama`, `id_akses`, `status`, `dihapus`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Bang Admin', 1, 'Aktif', 'tidak'),
(2, 'kasir', 'c7911af3adbd12a035b289556d96470a', 'Silanold', 2, 'Aktif', 'tidak'),
(4, 'gudang', '202446dd1d6028084426867365b0c7a1', 'Gudang', 3, 'Aktif', 'tidak'),
(5, 'keuangan', 'a4151d4b2856ec63368a7c784b1f0a6e', 'Keuangan', 4, 'Aktif', 'tidak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pj_akses`
--
ALTER TABLE `pj_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `pj_barang`
--
ALTER TABLE `pj_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pj_ci_sessions`
--
ALTER TABLE `pj_ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `pj_kategori_barang`
--
ALTER TABLE `pj_kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indeks untuk tabel `pj_merk_barang`
--
ALTER TABLE `pj_merk_barang`
  ADD PRIMARY KEY (`id_merk_barang`);

--
-- Indeks untuk tabel `pj_pelanggan`
--
ALTER TABLE `pj_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pj_penjualan_detail`
--
ALTER TABLE `pj_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_d`);

--
-- Indeks untuk tabel `pj_penjualan_master`
--
ALTER TABLE `pj_penjualan_master`
  ADD PRIMARY KEY (`id_penjualan_m`);

--
-- Indeks untuk tabel `pj_user`
--
ALTER TABLE `pj_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pj_akses`
--
ALTER TABLE `pj_akses`
  MODIFY `id_akses` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pj_barang`
--
ALTER TABLE `pj_barang`
  MODIFY `id_barang` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pj_kategori_barang`
--
ALTER TABLE `pj_kategori_barang`
  MODIFY `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pj_merk_barang`
--
ALTER TABLE `pj_merk_barang`
  MODIFY `id_merk_barang` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pj_pelanggan`
--
ALTER TABLE `pj_pelanggan`
  MODIFY `id_pelanggan` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pj_penjualan_detail`
--
ALTER TABLE `pj_penjualan_detail`
  MODIFY `id_penjualan_d` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `pj_penjualan_master`
--
ALTER TABLE `pj_penjualan_master`
  MODIFY `id_penjualan_m` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pj_user`
--
ALTER TABLE `pj_user`
  MODIFY `id_user` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
