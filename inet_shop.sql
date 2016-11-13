-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 13 2016 г., 17:11
-- Версия сервера: 5.7.13
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `inet_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `description`, `photo`) VALUES
(1, '111', '1112.00', '113', 'images/24fb6eb78cc8928c70d23e7db8f839aa.jpg'),
(2, '2', '3.00', '4', 'images/26d7c37f9db1069a8fdb268a8d0e9f67.jpg'),
(3, '2', '3.00', '4', 'images/9ae55fd5360cc53881d329bd9da6092d.jpg'),
(4, '3', '4.00', '5', 'images/545c46fb4814ab2219fdba423d550e8c.jpg'),
(5, '1', '2.00', '22', 'images/88c4b9c7b402e0be26741cc38fcabc1f.jpg'),
(6, '1', '2.00', '3', 'images/5dff87686fedce272c78396343c591df.jpg'),
(7, '44', '44.00', '44', 'images/14c6a9c72683da4102b2b6d12b75beb3.jpg'),
(8, '44', '44.00', '44', 'images/d436a83ba9dbec2ea70139273fc86109.jpg'),
(9, '1', '2.00', '4444', 'images/5d6d76b8f0120a942deb7e0a3c3e8753.jpg'),
(10, 'пингвин', '33.00', 'красивый', 'images/6c3ba275abce09c5dd1832aad649240e.jpg'),
(11, '1', '2.00', '3', 'images/b37cda2167d7a25af338d452b1284617.jpg'),
(12, '7', '7.00', '7', 'images/ac337b03e04cbabaeffd0527b8915ef4.jpg'),
(13, '1', '2.00', '22', 'images/eb108d51a8b3c0ed9bc4197f58bb3ded.jpg'),
(14, '1', '2.00', '22', 'images/3961018503447c8074b86835c9d35765.jpg'),
(15, '4', '4.00', '4', 'images/6146e9ecf3ed76d12fef19cf97fd48a4.jpg'),
(16, '3', '3.00', '3', 'images/62fbf6e3d4267800a6d43b8f3e0f9be7.jpg'),
(17, '1', '2.00', '2', 'images/7cc3c0987a565f5e49899f919e339a36.jpg'),
(18, '2', '3.00', '4', 'images/44fdf99ac82d358dc7b3a64333f21612.jpg'),
(19, '1', '2.00', '3', 'images/0d3daffc2b37f453795bbe5a1a9ec932.jpg'),
(20, '1', '1.00', '1', 'images/701f09bd197a7f7c29abc982a9eca1d8.jpg'),
(21, '123', '123.00', '1', 'images/91749833307f9c7bd61b1da81c7ed574.jpg'),
(22, '123', '1.00', '21', 'images/e8937c4c3ef91c644afde877e4e2abde.jpg'),
(23, 'фыв', '1.00', '22', 'images/ca977ad55e00e95b37f26c1b5249f817.jpg'),
(24, '123', '21.00', '21', 'images/a4b969e5263c705d1a0c13b9a113fb65.jpg'),
(25, '1', '2.00', '3', 'images/5eb50c65835f8c3c964f67a89849bdcf.jpg'),
(26, '1', '2.00', '3', 'images/a0c7c3272a4dca4d8cc87ce4da1e0578.jpg'),
(27, '123', '321.00', '31', 'images/1c94289a34ae8296317e245def1c5846.jpg'),
(28, '123', '321.00', '31', 'images/fb2ff9ddb29572ef77c0c2b7eb489a46.jpg'),
(29, '1', '1.00', '1', 'images/6fb3d4a85c5571f3ffa57d1e3911954b.jpg'),
(30, '1', '1.00', '1', 'images/88f45b846a3ebddab4fcddd463043c5e.jpg'),
(31, '12', '21.00', '123', 'images/959dfa02736e1bdb58c8de69f755f59c.jpg'),
(32, '21', '34.00', '3434', 'images/2d54e7050c7dce06ca3922c605f6b321.jpg'),
(33, '123', '21.00', '11111', 'images/be35462916e007884a9fbc2b0e7de851.jpg'),
(34, '1', '2.00', '2', 'images/457104de3a3301ec8da0a5259d11d900.jpg'),
(35, '34232', '33.00', '3333', 'images/26fa6c0a4fa264d2fc65a0636227c1f5.jpg'),
(36, '2', '3.00', '5', 'images/27c06d568b428ab8ddb138a208f27672.jpg'),
(37, '4', '5.00', '6', 'images/f82d9870774b7b0cc0a08bda8e1772a1.jpg'),
(38, '5656', '5656.00', '5', 'images/38e4005e9605c7de1460a58735d5f4d2.jpg'),
(39, 'фывфыв', '11.00', '212', 'images/c665dc8966627c005610a9a5e57b4cac.jpg'),
(40, '1', '1.00', '1', 'images/b7ce4fcf6b10e93c56163b480eb75400.jpg'),
(41, '1', '2.00', '3', 'images/f830c4e04c60617b5a44639169d46efa.jpg'),
(42, '1', '2.00', '3', 'images/2ac56db1aa6515919d81b48315f138e4.jpg'),
(43, '1', '2.00', '3', 'images/78ec578ab3620600fcdb7c06e844fb3e.jpg'),
(44, '1', '1.00', '1', 'images/91bb66af464cc9a18b599122f139aebb.jpg'),
(45, '1', '2.00', '3', 'images/be7f6755ffc2b747cff3a79df8f331c2.jpg'),
(46, '1', '2.00', '3', 'images/206abe7947d3110dee208b22e073a548.jpg'),
(47, '1', '2.00', '3', 'images/d6806f93f568f780d9870e7221ea6a63.jpg'),
(48, '1', '2.00', '3', 'images/7ed76c3c20cb793cfd5ec0d331d36e84.jpg'),
(49, 'я хочу пива', '11.00', '11', 'images/73ba460fc73ab39925a143b26c74f0a6.jpg'),
(50, 'теперь точно иду за пивом', '2.00', '1', 'images/df5fe3c12bf66e5560402801d485fd0c.jpg'),
(51, '234', '234.00', '3434', 'images/8293906593835c5b0aef7a8004e9f3fc.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
