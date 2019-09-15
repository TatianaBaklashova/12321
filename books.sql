-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 13 2019 г., 14:57
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`) VALUES
(1, 'Название книги 1'),
(2, 'Название книги 2'),
(3, 'Название книги 3'),
(4, 'Название книги 4'),
(5, 'Название книги 5'),
(6, 'Название книги 6'),
(7, 'Название книги 7'),
(8, 'Название книги 8'),
(9, 'Название книги 9'),
(10, 'Название книги 10');

-- --------------------------------------------------------

--
-- Структура таблицы `creator`
--

CREATE TABLE `creator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `creator`
--

INSERT INTO `creator` (`id`, `Name`) VALUES
(1, 'Иванов Иван'),
(2, 'Сергеев Сергей'),
(3, 'Федоров Федор'),
(4, 'Петров Петр'),
(5, 'Ильин Илья'),
(6, 'Викторов Виктор');

-- --------------------------------------------------------

--
-- Структура таблицы `creator_books1`
--

CREATE TABLE `creator_books1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `books_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `creator_books1`
--

INSERT INTO `creator_books1` (`id`, `creator_id`, `books_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 7),
(8, 3, 8),
(9, 2, 1),
(10, 3, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `creator`
--
ALTER TABLE `creator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `creator_books1`
--
ALTER TABLE `creator_books1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `books_id` (`books_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `creator`
--
ALTER TABLE `creator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `creator_books1`
--
ALTER TABLE `creator_books1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `creator_books1`
--
ALTER TABLE `creator_books1`
  ADD CONSTRAINT `creator_books1_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `creator` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `creator_books1_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
