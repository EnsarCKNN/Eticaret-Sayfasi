-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Nis 2022, 14:08:38
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kat_int` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kat_int`, `kategori`) VALUES
(1, 'Ana Kart'),
(2, 'Monitör'),
(3, 'İşlemci'),
(4, 'Ram'),
(5, 'Masaüstü Pc'),
(6, 'Laptop');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marka`
--

CREATE TABLE `marka` (
  `marka_id` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `marka`
--

INSERT INTO `marka` (`marka_id`, `marka`) VALUES
(1, 'Lenova'),
(2, 'Asus'),
(3, 'Apple'),
(4, 'Huawei'),
(5, 'Hp'),
(6, 'Toshiba');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `veri`
--

CREATE TABLE `veri` (
  `id` int(11) NOT NULL,
  `kullanıcı` text NOT NULL,
  `sifre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `veri`
--

INSERT INTO `veri` (`id`, `kullanıcı`, `sifre`) VALUES
(1, 'Ensar', '01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ürün`
--

CREATE TABLE `ürün` (
  `ürün_id` int(11) NOT NULL,
  `ürün_name` varchar(150) NOT NULL,
  `ürün_resim` text NOT NULL,
  `ürün_fiyat` int(11) NOT NULL,
  `marka` varchar(100) NOT NULL,
  `kategori` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `ürün`
--

INSERT INTO `ürün` (`ürün_id`, `ürün_name`, `ürün_resim`, `ürün_fiyat`, `marka`, `kategori`) VALUES
(1, 'Motorola 156 MX-VLS', 'laptop.gif', 15000, '1', '5'),
(2, 'MSI B450', 'anakart.jpg', 200000, '6', '1'),
(3, 'Samsung Odyssey G9', 'ekran.jpg', 5000, '5', '2'),
(4, 'Intel Core i3 2100', 'ram.jpg', 1000, '4', '4');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kat_int`);

--
-- Tablo için indeksler `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`marka_id`);

--
-- Tablo için indeksler `veri`
--
ALTER TABLE `veri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ürün`
--
ALTER TABLE `ürün`
  ADD PRIMARY KEY (`ürün_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kat_int` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `marka`
--
ALTER TABLE `marka`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `veri`
--
ALTER TABLE `veri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ürün`
--
ALTER TABLE `ürün`
  MODIFY `ürün_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
