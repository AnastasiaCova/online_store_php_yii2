-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 13 2023 г., 01:07
-- Версия сервера: 5.7.33-0ubuntu0.16.04.1
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hgykgvsz_m1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(2, 'Лазерный принтер'),
(3, 'Струйный принтер'),
(4, 'Термопринтер стационарный');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `sum` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `time`, `status_id`, `count`, `sum`, `reason`) VALUES
(5, 9, '2023-02-10 09:26:42', 2, 2, 49980, ''),
(6, 9, '2023-02-10 09:26:44', 3, 2, 49980, 'отменили'),
(8, 9, '2023-02-09 12:55:13', 2, 11, 277870, NULL),
(10, 9, '2023-02-09 12:55:23', 2, 17, 424830, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order_item`
--

CREATE TABLE `order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `count`, `title`, `price`) VALUES
(1, 5, 12, 2, 'Принтер струйный Canon Pixma ', 24990),
(2, 6, 11, 1, 'Термопринтер стационарный TSC ', 24990),
(3, 6, 12, 1, 'Принтер струйный Canon Pixma ', 24990),
(5, 8, 13, 3, 'Принтер лазерный Brother ', 24990),
(6, 8, 10, 1, 'Термопринтер стационарный TSC ', 39990),
(7, 8, 12, 5, 'Принтер струйный Canon Pixma ', 24990),
(8, 8, 5, 2, 'Принтер лазерный HP Laser ', 18980),
(10, 10, 13, 17, 'Принтер лазерный Brother ', 24990);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `year`, `price`, `count`, `country`, `model`, `photo`, `category_id`) VALUES
(5, 'Принтер лазерный HP Laser ', 2021, 18980, 18, 'Китай', '107r черно-белый, цвет: белый', '/images/8_1670596884.png', 2),
(6, 'Принтер струйный HP Ink Tank ', 2021, 24990, 20, 'Китай', '115 цветной, цвет: черный', '/images/8_1670596920.png', 3),
(7, 'Принтер лазерный HP Color LaserJet Laser', 2020, 39990, 25, 'Китай', '150a цветной, цвет: белый', '/images/8_1670596972.png', 2),
(8, 'Принтер струйный HP OfficeJet ', 2022, 15530, 20, 'Китай', '107r черно-белый, цвет: белый', '/images/8_1670597028.png', 3),
(9, 'Термопринтер стационарный Brother ', 2022, 39990, 0, 'Китай', '115 цветной, цвет: черный', '/images/8_1670597272.png', 4),
(10, 'Термопринтер стационарный TSC ', 2022, 39990, 19, 'Китай', '115 цветной, цвет: черный', '/images/8_1670597292.png', 4),
(11, 'Термопринтер стационарный TSC ', 2022, 24990, 19, 'Китай', '115 цветной, цвет: черный', '/images/8_1670597313.png', 4),
(12, 'Принтер струйный Canon Pixma ', 2022, 24990, 0, 'Китай', '115 цветной, цвет: черный', '/images/8_1670597337.png', 3),
(13, 'Принтер лазерный Brother ', 2022, 24990, 0, 'Китай', '107r черно-белый, цвет: белый', '/images/8_1670597371.png', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `title`) VALUES
(1, 'Новый'),
(2, 'Подтвержденный'),
(3, 'Отмененный');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `role_id`, `auth_key`) VALUES
(3, 'Name', 'Sur', 'Pat', 'log', 'mail@mail', '$2y$13$tZlfZIrMWzlCqAxbtA8/I.ptwgkuOH/yFEeqzsz.rX5Xz9YHyVsye', 2, 'sQuwUQf8_g1msxHLDUIGG1VRKhma9kaX'),
(6, 'Name', 'Sur', 'Pat', 'log', 'mail@mail', '$2y$13$Ha06fWkrzRBUenrFaipKA.s.BQLxvWyJksqmeere.DZhstc/Jpmga', 2, 'Y93wZ6gO9Uhh3nC8uSpCvQrVHJBC3Eyj'),
(8, 'admin', 'admin', 'admin', 'admin', 'admin@a.a', '$2y$13$I7TQsz62KeRQo2vRMR7MVOH5CiCSwERxd6xtzooVX2dvPaUgr2h52', 1, 'xFpuepCfmeospfWmz5_gX5k01l_Sv91e'),
(9, 'a', 'a', 'a', 'a', 'a@a.a', '$2y$13$rJpvl0IBgDE98VEJ0LeRJuVVkUP6gaGK.0FkdH6KjYvajgrx9UPMC', 2, 'HlwHc82I0ppJ72zvUPXlewXLzXCOH9NF'),
(10, 'f', 'f', '', 'f', 'f@a.a', '$2y$13$Euxhi6XP1dXdmdAViZH.v.Bl1m6k7qbG04EmjAwoagAfM1cg50ehC', 2, 'vakAMxyLwpfYKmbTsBfkfl1DkPxubkKI'),
(11, 'g', 'g', NULL, 'g', 'g@a.a', '$2y$13$50wsEFpNW0v5fI2sTJTVweMwg0.KFyAQPon/Adl.9ZWvHxUGqxHiC', 2, 'cQScZDrDPW0ESy5c5ErKVXDeQAGJC_Fj'),
(12, 'd', 'd', 'd', 'd', 'd@a.a', '$2y$13$B1ZutHONgEUOZRkKz9WOHuMPBtHoL.LM2tIk4QcpzkJotpqZ73abG', 2, 'C7p4xbZgqGtcBJC96L00S-p0BM45LJ8D');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Индексы таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
