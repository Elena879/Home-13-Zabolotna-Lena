-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 22 2018 г., 14:54
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
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `age` int(2) NOT NULL,
  `sex` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hobby` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `bank_card_number` int(11) NOT NULL,
  `about_myself` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `registration`
--

INSERT INTO `registration` (`id`, `name`, `surname`, `age`, `sex`, `hobby`, `username`, `password`, `date_of_birth`, `bank_card_number`, `about_myself`, `category`) VALUES
(15, 'Elena', 'Zabolotnaya', 19, 'woman', 'a:7:{i:0;s:7:"Running";i:1;s:15:"Mountain biking";i:2;s:7:"Singing";i:3;s:5:"Dance";i:4;s:20:"Computer programming";i:5;s:19:"Musical instruments";i:6;s:8:"Painting";}', 'lena', '8dbc672497bdc46f88e864bb1121232c', '1998-09-29', 1234234, 'qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwerty', 'Art');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `bank_card_number` (`bank_card_number`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
