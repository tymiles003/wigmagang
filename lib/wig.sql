-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2019 pada 06.55
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wig`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lm`
--

CREATE TABLE `tbl_lm` (
  `id_lm` int(10) NOT NULL,
  `id_wig` varchar(15) NOT NULL,
  `lm_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lm`
--

INSERT INTO `tbl_lm` (`id_lm`, `id_wig`, `lm_pic`) VALUES
(18, 'WIG0001', '[{\"lm\":\"Survey 1\",\"pic\":\"Pace\"}]'),
(19, 'WIG0002', '[{\"lm\":\"Survey 1\",\"pic\":\"Mace Riantri\"},{\"lm\":\"Survey 2\",\"pic\":\"Mace Rekha\"}]'),
(20, 'WIG0003', '[{\"lm\":\"melakukan pemutusan shuntr pelanggan di atas 23kvA \",\"pic\":\"wahyu\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lovsatuan`
--

CREATE TABLE `tbl_lovsatuan` (
  `id_lovsatuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lovsatuan`
--

INSERT INTO `tbl_lovsatuan` (`id_lovsatuan`) VALUES
('%akurasi'),
('%deviasi'),
('%kesalahan'),
('%kesesuaian SOP'),
('%MVAR/MW'),
('%validitas'),
('Account'),
('Agustus'),
('Akreditasi'),
('Ampere'),
('Aplikasi'),
('April'),
('Area'),
('Asset APP'),
('BBTU'),
('BBTUD'),
('Bobot'),
('BTU'),
('Buah'),
('Buah/kVA'),
('Buah/MVA'),
('Bulan'),
('COD'),
('Desa/pegawai'),
('Desember'),
('Detik'),
('Dokumen'),
('Down Time/Operation Time'),
('Eksemplar'),
('Februari'),
('Gardu'),
('GWh'),
('Ha'),
('Hari'),
('Hari Persediaan'),
('Hari/Pelanggan'),
('HOP'),
('Indeks'),
('Index'),
('Jam'),
('Jam/100 kms'),
('Jam/Hari'),
('Jam/kms'),
('Jam/Unit'),
('Januari'),
('Jlh Gangguan'),
('Juli'),
('Jumlah'),
('Juni'),
('Jurusan'),
('Juta Ton'),
('Kajian'),
('Kali'),
('Kali Koreksi'),
('Kali/100 gardu'),
('Kali/100 kms'),
('Kali/1000 Pelanggan'),
('Kali/DP'),
('Kali/Pelanggan'),
('Kali/Unit'),
('Kategori'),
('Kategori Proper'),
('Kawasan/Area'),
('kCal'),
('kCal/kg'),
('kCal/kWh'),
('kCal/MSCF'),
('kCal/Ton'),
('Kegiatan'),
('kg/kWh'),
('kiloliter'),
('kilometer'),
('kms'),
('Kontrak'),
('kVA'),
('kWh'),
('Lab'),
('Laporan'),
('Laporan Pekerjaan/Pegawai'),
('Laporan/Pegawai'),
('Level'),
('Liter/kWh'),
('Lokasi'),
('Man month'),
('Maret'),
('mdpl'),
('Mei'),
('Menit'),
('Menit/DP'),
('Menit/Gardu'),
('Menit/Jurusan'),
('Menit/Kejadian'),
('Menit/Pelanggan'),
('Menit/Penyulang'),
('meter kubik'),
('MMBTU'),
('MMBTU/kWh'),
('Modul'),
('MT'),
('MT/Hari'),
('MVA'),
('MVA/Pegawai'),
('MVAr'),
('MW'),
('MWh'),
('MWH Jual/Peg'),
('MWh Jual/Pegawai'),
('MWH Produksi/Peg'),
('MWh Produksi/Pegawai'),
('MWh Salur/Pegawai'),
('November'),
('Oktober'),
('Orang'),
('Paket'),
('Pegawai'),
('Pegawai/Bulan'),
('Pekerjaan'),
('Pelaksanaan/Pegawai'),
('Pelanggan'),
('Penyulang'),
('Peralatan'),
('Persen'),
('Point'),
('PRK'),
('Produk/Pegawai'),
('Program'),
('Project'),
('Proyek'),
('Rayon'),
('RLB'),
('Rp (Juta)'),
('Rp (Milyar)'),
('Rp (Triliun)'),
('Rp Ribu/Ton'),
('Rp(Juta)/MM'),
('Rp/kWh'),
('Rp/MVA'),
('Rp/MVA Available'),
('Rp/Pegawai'),
('Rp/Plg'),
('Rupiah/kwh'),
('September'),
('Sertifikasi'),
('Sertifikat'),
('Set'),
('Skala_x000D_'),
('Skor'),
('Skor/%'),
('Tanggal'),
('Titik Sambung'),
('Ton'),
('Tonase'),
('Tongkang/Hari'),
('Topik'),
('Tower'),
('TWh'),
('Unit'),
('Unit/KW'),
('Unit/MVA'),
('Unit/MW'),
('Yen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `role`) VALUES
('ADMIN', 'admin12345', 0),
('MANAGER', 'manager10', 1),
('SPVDALKON', '12345', 2),
('SPVKEUANGAN', 'keu111', 2),
('SPVMAPPING', '12345', 2),
('SPVPEMASARAN', 'pem111', 2),
('SPVPENYAMBUNGAN', '12345', 2),
('SPVPIUTANG', '12345', 2),
('SPVRENSUS', '12345', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wig`
--

CREATE TABLE `tbl_wig` (
  `id_wig` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `judul` text NOT NULL,
  `tanggal` date NOT NULL,
  `target` int(10) NOT NULL,
  `satuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_wig`
--

INSERT INTO `tbl_wig` (`id_wig`, `username`, `judul`, `tanggal`, `target`, `satuan`) VALUES
('WIG0001', 'SPVPEMASARAN', 'Pemasangan Listrik', '2019-01-29', 60, 'Bobot'),
('WIG0002', 'SPVMAPPING', 'Pembongkaran Meteran', '2019-01-30', 60, 'Bobot'),
('WIG0003', 'SPVMAPPING', 'menurunkan tunggakan dari 8m menjadi 5m pada bulan desember 2019', '2019-01-30', 5, 'Rp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wigprogress`
--

CREATE TABLE `tbl_wigprogress` (
  `id_wigproses` int(10) NOT NULL,
  `id_wig` varchar(15) NOT NULL,
  `value_wigprogress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_wigprogress`
--

INSERT INTO `tbl_wigprogress` (`id_wigproses`, `id_wig`, `value_wigprogress`) VALUES
(8, 'WIG0002', '[{\"tanggal\":\"2019-01-30\",\"target\":\"100\",\"realisasi\":\"60\"},{\"tanggal\":\"2019-02-19\",\"target\":\"60\",\"realisasi\":\"87\"},{\"tanggal\":\"2019-03-15\",\"target\":\"90\",\"realisasi\":\"70\"}]');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_lm`
--
ALTER TABLE `tbl_lm`
  ADD PRIMARY KEY (`id_lm`),
  ADD KEY `id_wig` (`id_wig`);

--
-- Indeks untuk tabel `tbl_lovsatuan`
--
ALTER TABLE `tbl_lovsatuan`
  ADD PRIMARY KEY (`id_lovsatuan`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbl_wig`
--
ALTER TABLE `tbl_wig`
  ADD PRIMARY KEY (`id_wig`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `tbl_wigprogress`
--
ALTER TABLE `tbl_wigprogress`
  ADD PRIMARY KEY (`id_wigproses`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_lm`
--
ALTER TABLE `tbl_lm`
  MODIFY `id_lm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_wigprogress`
--
ALTER TABLE `tbl_wigprogress`
  MODIFY `id_wigproses` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_lm`
--
ALTER TABLE `tbl_lm`
  ADD CONSTRAINT `tbl_lm_ibfk_1` FOREIGN KEY (`id_wig`) REFERENCES `tbl_wig` (`id_wig`);

--
-- Ketidakleluasaan untuk tabel `tbl_wig`
--
ALTER TABLE `tbl_wig`
  ADD CONSTRAINT `tbl_wig_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tbl_user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
