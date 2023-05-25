-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 25 May 2023, 17:22:59
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eshop`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparislers`
--

CREATE TABLE `siparislers` (
  `id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `toplam_tutar` float NOT NULL,
  `teslim_tarihi` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `adres` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `siparislers`
--

INSERT INTO `siparislers` (`id`, `kullanici_id`, `toplam_tutar`, `teslim_tarihi`, `created_at`, `updated_at`, `adres`, `status`) VALUES
(94, 1, 4800.89, '2023-05-17', '2023-05-15 09:52:20', '2023-05-15 09:52:20', 'İzmit', 0),
(95, 2, 8229.97, '2023-05-17', '2023-05-15 09:54:18', '2023-05-15 09:54:18', 'Kadıköy İstanbul', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_uruns`
--

CREATE TABLE `siparis_uruns` (
  `id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `adet` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `siparis_uruns`
--

INSERT INTO `siparis_uruns` (`id`, `siparis_id`, `urun_id`, `adet`, `created_at`, `updated_at`) VALUES
(25, 94, 1, 1, '2023-05-15 09:52:20', '2023-05-15 09:52:20'),
(26, 94, 3, 1, '2023-05-15 09:52:20', '2023-05-15 09:52:20'),
(27, 95, 3, 1, '2023-05-15 09:54:18', '2023-05-15 09:54:18'),
(28, 95, 7, 1, '2023-05-15 09:54:18', '2023-05-15 09:54:18'),
(29, 95, 11, 1, '2023-05-15 09:54:18', '2023-05-15 09:54:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunlers`
--

CREATE TABLE `urunlers` (
  `id` int(11) NOT NULL,
  `adi` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `adet` int(11) NOT NULL,
  `fiyat` float NOT NULL,
  `foto1` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `satista_mi` tinyint(1) NOT NULL DEFAULT 0,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `kullanici_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `urunlers`
--

INSERT INTO `urunlers` (`id`, `adi`, `aciklama`, `adet`, `fiyat`, `foto1`, `foto2`, `foto3`, `satista_mi`, `olusturma_tarihi`, `guncelleme_tarihi`, `created_at`, `updated_at`, `kullanici_id`) VALUES
(1, 'Cannes Oturma Grubu', 'Konforlu ve şık tasarımlı oturma grubu. Gri renkte kumaş kaplamaya sahiptir.', 10, 2800.9, 'uploads/formImage/Cannes Oturma Grubu 0.jpeg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:50:13', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 5),
(2, 'Berlin Dolap', 'Modern ve kullanışlı dolap. Beyaz renkte ve yüksek depolama kapasitesine sahiptir.', 20, 1500, 'uploads/formImage/Berlin Dolap 1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:59:20', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 6),
(3, 'Barcelona Sandalye', 'Elegan ve konforlu koltuk. Beyaz renkte deri kaplamaya sahiptir.', 5, 1999.99, 'uploads/formImage/Barcelona Sandalye 0.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:53:02', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 7),
(4, 'Milano TV Sehpası', 'Modern ve minimalist tasarımlı TV sehpası. Ahşap ve metal kombinasyonundan oluşur.', 3, 18000, 'uploads/formImage/Florence TV Sehpası 0.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:53:30', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 5),
(5, 'Roma Dolap', 'Modern ve kullanışlı dolap. Beyaz renkte ve yüksek depolama kapasitesine sahiptir.', 15, 1499.99, 'uploads/formImage/Berlin Dolap 1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:59:28', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 6),
(6, 'Napoli Sandalye', 'Şık ve rahat sandalye. Ahşap ayaklar ve beyaz renkte kumaş kaplamaya sahiptir.', 8, 9499.99, 'uploads/formImage/Barcelona Sandalye 1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:54:26', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 7),
(7, 'Barcelona Koltuk', 'Elegan ve konforlu koltuk. Beyaz renkte deri kaplamaya sahiptir.', 12, 4999.99, 'uploads/formImage/Milano Köşe Koltuk 0.jpeg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:55:35', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 5),
(8, 'Paris Yatak Odası Takımı', 'Lüks ve şık tasarımlı yatak odası takımı. Siyah renkte ve oymalı desenlere sahiptir.', 6, 16500, 'uploads/formImage/Sevilla Yatak Odası Takımı 0.jpeg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:56:13', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 6),
(9, 'Venice Dolap', 'Modern ve zarif tasarıma sahip, beyaz renkli, yüksek depolama kapasiteli bir dolap.', 25, 999.99, 'uploads/formImage/Berlin Dolap 3.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:59:30', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 6),
(10, 'Capri Kanepe', 'Konforlu ve şık tasarımlı kanepe, gri renkte kumaş kaplamaya sahip.', 18, 12100, 'uploads/formImage/Cannes Oturma Grubu 0.jpeg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:50:23', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 7),
(11, 'Florence Yemek Masası', 'Vintage tarzda tasarlanmış yemek masası, ahşap gövde ve metal detaylara sahip.', 1, 1229.99, 'uploads/formImage/Oslo Yemek Masası 0.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:56:57', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 9),
(12, 'Monaco Sehpa', 'Minimalist tasarımlı sehpa, altın rengi metal ayaklar ve cam tablaya sahip.', 1, 1246.56, 'uploads/formImage/Florence TV Sehpası 0.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:53:40', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 7),
(13, 'Valencia Koltuk Takımı', 'Lüks ve modern tasarımlı koltuk takımı, deri kaplamalı ve bej renkte.', 1, 499, 'uploads/formImage/Cannes Oturma Grubu 0.jpeg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:50:37', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 8),
(14, 'Milan Kitaplık', 'Ahşap malzemeden üretilmiş, minimalist tasarımlı kitaplık.', 1, 169.99, 'uploads/formImage/Milano Kitaplık 0.jpeg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:48:28', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 7),
(15, 'Paris Komodin', 'Şık ve zarif tasarımlı komodin, beyaz renkte ahşap malzemeden üretilmiştir.', 1, 185, 'uploads/formImage/Venedik Komodin 0.jpeg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:57:43', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 8),
(16, 'Madrid Yatak Odası Takımı', 'Şık ve modern tasarımlı yatak odası takımı, siyah ve beyaz renklerde, lake kaplamalıdır.', 2, 79, 'uploads/formImage/Sevilla Yatak Odası Takımı 0.jpeg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:56:23', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 9),
(17, 'Oslo TV Ünitesi', 'Modern ve zarif tasarıma sahip, beyaz renkli, yüksek depolama kapasiteli bir dolap.', 12, 104.9, 'uploads/formImage/Nevada TV Ünitesi 0.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:57:58', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 5),
(18, 'Barcelona Sandalye', 'Şık ve rahat sandalye, ahşap ayaklar ve kırmızı renkte kumaş kaplamaya sahip.', 1, 21.23, 'uploads/formImage/Barcelona Sandalye 0.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:54:55', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 5),
(19, 'Monaco Sehpa', 'Minimalist tasarımlı sehpa, altın rengi metal ayaklar ve cam tablaya sahip.', 10, 21000, 'uploads/formImage/Florence TV Sehpası 0.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:53:46', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 6),
(20, 'Valencia Koltuk Takımı', 'Lüks ve modern tasarımlı koltuk takımı, deri kaplamalı ve bej renkte.', 1, 59.9, 'uploads/formImage/Cannes Oturma Grubu 2.jpeg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:51:03', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 7),
(21, 'Venice Dolap', 'Modern ve zarif tasarıma sahip, beyaz renkli, yüksek depolama kapasiteli bir dolap.', 1, 120, 'uploads/formImage/Berlin Dolap0.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:58:33', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 8),
(22, 'Venice Dolap', 'Modern ve zarif tasarıma sahip, beyaz renkli, yüksek depolama kapasiteli bir dolap.', 2, 999, 'uploads/formImage/Berlin Dolap 1.jpg', NULL, NULL, 0, '2023-05-15 11:29:51', '2023-05-15 11:58:54', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 9),
(23, 'Cannes Oturma Grubu', 'Konforlu ve şık tasarımlı oturma grubu. Gri renkte kumaş kaplamaya sahiptir.', 10, 2800, 'uploads/formImage/Cannes Oturma Grubu 1.jpeg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:50:53', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 8),
(24, 'Berlin Dolap', 'Modern ve kullanışlı dolap. Beyaz renkte ve yüksek depolama kapasitesine sahiptir.', 5, 1500, 'uploads/formImage/Berlin Dolap 1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 12:00:14', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 9),
(25, 'Barcelona Sandalye', 'Şık ve rahat sandalye. Ahşap ayaklar ve bej renkte kumaş kaplamaya sahiptir.', 20, 350, 'uploads/formImage/Barcelona Sandalye 1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:55:00', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 5),
(26, 'Verona Yemek Masası', 'Vintage tarzda tasarlanmış yemek masası. Ahşap gövde ve metal detaylara sahiptir.', 7, 1900, 'verona_yemek_masasi_1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:30:34', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 1),
(27, 'Genova Köşe Takımı', 'Modern ve ferah köşe takımı. Kahverengi renkte deri kaplamaya sahiptir.', 3, 4200, 'genova_kose_takimi_1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:30:34', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 1),
(28, 'Florence Gardırop', 'Elegan ve geniş iç hacme sahip gardırop. Beyaz renkte ve aynalı kapaklara sahiptir.', 8, 2200, 'florence_gardrop_1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:30:34', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 1),
(29, 'Milano Kitaplık', 'Minimalist tasarımlı kitaplık. Metal gövde ve ahşap raflardan oluşur.', 12, 800, 'milano_kitaplik_1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:30:34', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 1),
(30, 'Roma Masa', 'Şık ve zarif masa. Ahşap malzemeden üretilmiştir ve kahverengi renktedir.', 6, 900, 'roma_masa_1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:30:34', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 1),
(31, 'Napoli TV Ünitesi', 'Klasik tarzdaki TV ünitesi. Ahşap malzeme ve oymalı detaylara sahiptir.', 4, 1500, 'napoli_tv_unitesi_1.jpg', NULL, NULL, 1, '2023-05-15 11:29:51', '2023-05-15 11:30:34', '2023-05-15 11:30:34', '2023-05-15 11:30:27', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `adi`, `email`, `password`, `adres`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@test.com', '$2y$10$AJluECkLVr7f3roLGuwBjuKWo/.DfzgTm/ZbPtEbUjb9q1Qpq/Kb6', NULL, '2023-05-06 23:04:37', '2023-05-06 23:04:50'),
(2, 'feyyaz', 'feyyaz@test.com', '$2y$10$AJluECkLVr7f3roLGuwBjuKWo/.DfzgTm/ZbPtEbUjb9q1Qpq/Kb6', 'Kadıköy İstanbul', '2023-05-06 20:05:05', '2023-05-07 22:48:05'),
(3, 'meryem koç', 'meryem@test.com', '$2y$10$44U1eQcHJkC/f9MfLwaJFOWB0sk0dxOOnPu/cS1SSGkPxoCIUpuZ6', 'SAKARYAA', '2023-05-06 20:05:50', '2023-05-07 19:34:53'),
(4, 'büşra çelikçioğlu', 'busra@test.com', '$2y$10$0IhXXJiGLZe7V9l2.wE21etxxAKNsjHfCYKJ1xRwQry3zrZrel.h2', 'Umuttepe Kampüs', '2023-05-06 20:20:36', '2023-05-07 19:47:38'),
(5, 'Çilek', 'cilek@test.com', '$2y$10$au7JqtMZpTeo5cMmmH4/1.UVyZ398Dd6s.X07gzxzFnB6tJMTkrQa', 'test', '2023-05-06 20:21:47', '2023-05-06 20:21:47'),
(6, 'Kilim', 'kilim@test.com', '$2y$10$My53Ou5O75DKiP/PuIYjpeFB3poOZuAnO0WD8aDRXgAU5O/n1iMD.', 'test3', '2023-05-06 20:23:59', '2023-05-06 20:23:59'),
(7, 'Bellona', 'bellona@test.com', '$2y$10$R6dPPvnnzFCRfN6n2c4pBOxZGYRhnhtPkubvOLMvohhTbj1ld9Juu', 'test4', '2023-05-06 20:26:01', '2023-05-06 20:26:01'),
(8, 'Ikea', 'ikea@test.com', '$2y$10$KdlQ0V04gQjMf7f8xsBWNOc6NtdiT9UIPCYOy.1I625b6OysAcKuW', 'testtt', '2023-05-06 20:29:40', '2023-05-06 20:29:40'),
(9, 'Alfemo', 'alfemo@test.com', '$2y$10$2SJ5mAE2AQNruWK/K.fXUObrNzhD9aAgLYOTu3BnEIuyr1aEzm6Rq', 'testtt', '2023-05-06 20:29:49', '2023-05-06 20:29:49'),
(10, 'ismet şahin', 'ismet@test.com', '$2y$10$sre4YjCe1J90t7c87Fdj2eKkchpi33VLczemA77B2V5L3zMHxqLwe', 'testtt', '2023-05-06 20:31:57', '2023-05-06 20:31:57'),
(11, 'furkan çete', 'furkan@test.com', '$2y$10$VOpGonWvAo6gD.tAof0vNuSghWFkU3Y4mLTxZcqN4WPOzRxUU3v52', '123123', '2023-05-06 20:47:05', '2023-05-06 20:47:05'),
(12, 'Feyyaz ONUR', 'feyyaz@f.com', '$2y$10$Q/t7KbQ2oaCws8bVVBKVCO7LzLwKBtle9.qyJSoz6hZIY1ambhjKS', 'Umuttepe İzmit Kocaeli', '2023-05-07 18:33:13', '2023-05-07 18:33:13'),
(13, 'hakan', 'giray@test.com', '$2y$10$1ibupKJRC.sz1STh4TDy5O0Q2IfBWPjHvDBsWbx6t17HKVmPixqQq', 'kocaeli üniversitesi kampüs', '2023-05-07 22:21:34', '2023-05-07 22:25:06'),
(14, 'hüseyin', 'deneme@testasd.com', '$2y$10$oshBtaLydZRdPHZjP.hSwOwA0Nkl0TNPLRmi3IhqIZ1izzFEQSC4y', 'gemlik', '2023-05-07 23:36:01', '2023-05-07 23:37:33'),
(15, 'İkbal', 'ikbal@test.com', '$2y$10$Lpg8lGh.X8n0KzJ2wfgb0.cIY7PmUglC4qXh4ysOCzWKQDSJJDVwy', 'umuttepe kocaeli', '2023-05-08 03:24:08', '2023-05-08 03:24:08');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `siparislers`
--
ALTER TABLE `siparislers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparis_uruns`
--
ALTER TABLE `siparis_uruns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siparis_id` (`siparis_id`);

--
-- Tablo için indeksler `urunlers`
--
ALTER TABLE `urunlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_urunlers_users` (`kullanici_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `siparislers`
--
ALTER TABLE `siparislers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_uruns`
--
ALTER TABLE `siparis_uruns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `urunlers`
--
ALTER TABLE `urunlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `siparislers`
--
ALTER TABLE `siparislers`
  ADD CONSTRAINT `siparislers_ibfk_2` FOREIGN KEY (`kullanici_id`) REFERENCES `users` (`id`);

--
-- Tablo kısıtlamaları `siparis_uruns`
--
ALTER TABLE `siparis_uruns`
  ADD CONSTRAINT `siparis_uruns_ibfk_1` FOREIGN KEY (`siparis_id`) REFERENCES `siparislers` (`id`),
  ADD CONSTRAINT `siparis_uruns_ibfk_2` FOREIGN KEY (`urun_id`) REFERENCES `urunlers` (`id`);

--
-- Tablo kısıtlamaları `urunlers`
--
ALTER TABLE `urunlers`
  ADD CONSTRAINT `fk_urunlers_users` FOREIGN KEY (`kullanici_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
