-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 16 2018 г., 16:45
-- Версия сервера: 5.7.20-0ubuntu0.16.04.1
-- Версия PHP: 7.1.12-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `home_13`
--

-- --------------------------------------------------------

--
-- Структура таблицы `registration`
--

CREATE TABLE `registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hobby` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `bank_card_number` int(255) NOT NULL,
  `about_myself` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `registration`
--

INSERT INTO `registration` (`id`, `name`, `surname`, `age`, `sex`, `hobby`, `username`, `password`, `date_of_birth`, `bank_card_number`, `about_myself`, `category`) VALUES
(49, 'Elena', 'Zabolotnaya', 19, 'woman', 'Dance', 'lena', '8dbc672497bdc46f88e864bb1121232c', '1998-09-29', 1243243214, 'qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwerty', 'Art'),
(50, 'john', 'john', 11, 'man', 'Running', 'john', '527bd5b5d689e2c32ae974c6229ff785', '2018-01-07', 124, 'johnjohnjohnjohnjohnjohnjohnjohnjohn', 'Sport'),
(52, 'Jack', 'Dawson', 20, 'man', 'Dance', 'jack123', '4ff9fc6e4e5d5f590c4f2134a8cc96d1', '2018-01-06', 124124, 'advgaegadd', 'Art');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
