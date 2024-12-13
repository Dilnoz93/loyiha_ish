-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 13 2024 г., 12:40
-- Версия сервера: 10.4.6-MariaDB
-- Версия PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Airqi_taladalar`
--
CREATE DATABASE IF NOT EXISTS `Airqi_taladalar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Airqi_taladalar`;

-- --------------------------------------------------------

--
-- Структура таблицы `Talaba`
--

CREATE TABLE `Talaba` (
  `Id` int(11) NOT NULL,
  `Ismi` varchar(15) NOT NULL,
  `Stipendiya` float NOT NULL,
  `Kurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- База данных: `kiyim_magazini`
--
CREATE DATABASE IF NOT EXISTS `kiyim_magazini` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kiyim_magazini`;

-- --------------------------------------------------------

--
-- Структура таблицы `chegirmalar`
--

CREATE TABLE `chegirmalar` (
  `id` int(11) NOT NULL,
  `mahsulot_nomlari` varchar(255) NOT NULL,
  `chegirma_foizi` decimal(5,2) NOT NULL,
  `amal_muddat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chegirmalar`
--

INSERT INTO `chegirmalar` (`id`, `mahsulot_nomlari`, `chegirma_foizi`, `amal_muddat`) VALUES
(1, 'T-ko\'ylak', 10.00, '2024-12-31'),
(2, 'Shim', 15.00, '2024-12-25'),
(3, 'Ko\'ylak', 20.00, '2024-12-20');

-- --------------------------------------------------------

--
-- Структура таблицы `jamgarmalar`
--

CREATE TABLE `jamgarmalar` (
  `id` int(11) NOT NULL,
  `mijoz_ismi` varchar(255) NOT NULL,
  `hisob` decimal(10,2) NOT NULL,
  `oxirgi_operatsiya` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `jamgarmalar`
--

INSERT INTO `jamgarmalar` (`id`, `mijoz_ismi`, `hisob`, `oxirgi_operatsiya`) VALUES
(1, 'Aliyev Akmal', 50000.00, '2024-12-01'),
(2, 'Karimova Dilnoza', 75000.00, '2024-12-05'),
(3, 'Abdullayev Doston', 30000.00, '2024-11-30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chegirmalar`
--
ALTER TABLE `chegirmalar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jamgarmalar`
--
ALTER TABLE `jamgarmalar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chegirmalar`
--
ALTER TABLE `chegirmalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `jamgarmalar`
--
ALTER TABLE `jamgarmalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
