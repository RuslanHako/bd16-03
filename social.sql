-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 16 2024 г., 06:34
-- Версия сервера: 8.0.31
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `social`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `message_text` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `us_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` tinyint DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `us_name`, `email`, `age`, `password`, `created`, `profile_picture`, `info`) VALUES
(2, 0, 'Иванов', 'b@b.ru', 18, '$2y$10$w4MjyTfzdGbi6kVAIp6IWOJdr7XvH3lNgzvMwxrZ4dScBLA1OvP8W', '2024-02-17 04:57:32', NULL, NULL),
(3, 0, 'Луи', 'q@q.ru', 22, '$2y$10$ebmmHjWrbfD9Ggq0q8WncuVlRbzc3IF37qV.px4An2AnmFiD45eSW', '2024-02-24 04:10:07', NULL, NULL),
(4, 0, 'Андрей', 'f@f.ru', 22, '$2y$10$uyG2mU9DuuAesgYPzg6Zw.USiEEVYDXvwf/4qrgUfye657DM.SJcu', '2024-02-24 04:47:05', NULL, NULL),
(6, 0, 'Огунев', 'o@o.ru', 54, '$2y$10$Eb9za4nT99p/HhzoMH976.OEFzUK4mmQ/Z1y5eAgdlQ/rQw4m4gba', '2024-02-24 05:28:31', NULL, NULL),
(8, 0, 'Андрей', 'h@h.ru', 66, '$2y$10$SqUaFLqiTP7OGAMC5jJiou9L3qy4COdmhy2OSCX7sbJtRsiuhK/zG', '2024-02-24 06:24:27', NULL, NULL),
(9, 0, 'Иванов', 'j@j.ru', 26, '$2y$10$Hk7vkaiZHiDNoOjQMzj4RuSdIbRifAFxUgrBroo8wW0GR/McIGV8.', '2024-03-02 04:11:48', NULL, NULL),
(13, 0, 'Иванько', 'P@P.ru', 52, '$2y$10$Zi011ZvM52J/XxiLwmf4xOM.8nfB1d/JBPe4C.aBT5PeDVwnHPw5O', '2024-03-16 04:14:05', 'avatars/13.png', 'Будущий Сеньёр');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_ibfk_1` (`sender_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
