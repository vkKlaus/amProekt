-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 12 2020 г., 13:14
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `amproekt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `imgproject`
--

CREATE TABLE `imgproject` (
  `id` int(11) NOT NULL,
  `name` int(2) NOT NULL,
  `idProject` int(11) NOT NULL,
  `title` varchar(125) DEFAULT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '1',
  `slider` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `imgproject`
--

INSERT INTO `imgproject` (`id`, `name`, `idProject`, `title`, `view`, `slider`) VALUES
(1, 1, 1, NULL, 1, 1),
(2, 2, 1, NULL, 1, 1),
(3, 3, 1, NULL, 1, 1),
(4, 4, 1, NULL, 1, 1),
(5, 5, 1, NULL, 1, 1),
(6, 6, 1, NULL, 1, 1),
(7, 7, 1, NULL, 1, 1),
(8, 8, 1, NULL, 1, 1),
(9, 9, 1, NULL, 1, 1),
(10, 10, 1, NULL, 1, 1),
(13, 1, 2, NULL, 1, 1),
(14, 2, 2, NULL, 1, 1),
(15, 3, 2, NULL, 1, 1),
(16, 4, 2, NULL, 1, 1),
(17, 5, 2, NULL, 1, 1),
(18, 6, 2, NULL, 1, 1),
(19, 7, 2, NULL, 1, 1),
(20, 8, 2, NULL, 1, 1),
(29, 1, 3, NULL, 1, 1),
(30, 2, 3, NULL, 1, 1),
(31, 3, 3, NULL, 1, 1),
(32, 4, 3, NULL, 1, 1),
(33, 5, 3, NULL, 1, 1),
(34, 6, 3, NULL, 1, 1),
(35, 7, 3, NULL, 1, 1),
(36, 8, 3, NULL, 1, 1),
(37, 9, 3, NULL, 1, 1),
(38, 10, 3, NULL, 1, 1),
(39, 11, 3, NULL, 1, 1),
(40, 1, 4, NULL, 1, 1),
(41, 2, 4, NULL, 1, 1),
(42, 1, 5, NULL, 1, 1),
(43, 2, 5, NULL, 1, 1),
(44, 3, 5, NULL, 1, 1),
(45, 1, 6, NULL, 1, 1),
(46, 2, 6, NULL, 1, 1),
(47, 3, 6, NULL, 1, 1),
(48, 4, 6, NULL, 1, 1),
(49, 1, 7, NULL, 1, 1),
(50, 2, 7, NULL, 1, 1),
(51, 1, 8, NULL, 1, 0),
(52, 2, 8, NULL, 1, 0),
(53, 3, 8, NULL, 1, 0),
(54, 4, 8, NULL, 1, 0),
(55, 5, 8, NULL, 1, 0),
(56, 6, 8, NULL, 1, 0),
(57, 7, 8, NULL, 1, 0),
(58, 8, 8, NULL, 1, 0),
(59, 9, 8, NULL, 1, 0),
(60, 10, 8, NULL, 1, 0),
(61, 11, 8, NULL, 1, 0),
(62, 12, 8, NULL, 1, 0),
(63, 13, 8, NULL, 1, 0),
(64, 14, 8, NULL, 1, 0),
(65, 15, 8, NULL, 1, 0),
(66, 16, 8, NULL, 1, 0),
(67, 17, 8, NULL, 1, 0),
(68, 18, 8, NULL, 1, 0),
(69, 19, 8, NULL, 1, 0),
(70, 20, 8, NULL, 1, 0),
(71, 21, 8, NULL, 1, 0),
(72, 22, 8, NULL, 1, 0),
(73, 23, 8, NULL, 1, 0),
(74, 24, 8, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `projekt`
--

CREATE TABLE `projekt` (
  `id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `comment` text,
  `view` tinyint(1) NOT NULL DEFAULT '1',
  `heder` varchar(1024) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `area` varchar(125) NOT NULL,
  `floors` varchar(125) NOT NULL,
  `volume` varchar(1024) NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projekt`
--

INSERT INTO `projekt` (`id`, `name`, `title`, `comment`, `view`, `heder`, `adress`, `area`, `floors`, `volume`, `status`) VALUES
(1, 'ЖК \"Две столицы - 1\"', 'Жилой комплекс \"Две столицы - 1\"  г.Химки', NULL, 1, 'ЖК \"Две столицы 1\" - это пять жилых домов комфорт-класса с двумя встроенно-пристроенными детскими садами и концепцией “двор без машин”.При проектировании жилого комплекса использовалась богатая пластика фасадов, не только для придания классического образа всей архитектуре, но и с определенным функциональным замыслом для создания богатого разнообразия типов планировочных решений для покупателей с различным бюджетом. Для каждой входной группы был разработан свой собственный уникальный дизайн интерьера.', 'Московская обл., г. Химки, Северо-Западная промышленно - коммунальная зона.', '144 640,2 кв.м.', 'Переменная от 13 до 17 этажей', 'Концепция[~a~]Стадия П (все разделы)[~a~]Альбом АГО[~a~]Получено заключение Экспертизы[~a~]Стадия Р (все комплекты). Рабочая документация, выдаваемая непосредственно на строительную площадку для производства работ.Содержит все необходимые данные для строительства объекта (узлы, детали, сечения, спецификации и т.п.)[~a~]\r\nАвторский надзор', 'Введен в эксплуатацию'),
(2, 'ЖК \"Две столицы - 2\"', 'Жилой комплекс \"Две столицы - 2\"  г.Химки', NULL, 1, 'ЖК \"Две столицы 2\" - это современный многофункциональный жилой комплекс комфорт-класса, воплощение самых актуальных архитектурных и инженерных решений. Представляет собой четыре монолитные жилые башни, попарно объединенные торговой галереей, в которой разместился супермаркет, кафе и прочий street retail.[~a~]При проектировании, мы разработали современную, учитывающую потребности клиентов квартирографию, в основу которой, заложены принципы разнообразия планировочных решений. Также, были максимально увеличены оконные проемы в квартирах для повышения уровня комфорта, вынесены магистрали ХВС, ГВС и отопленияв МОПы, спроектированы просторные входные группы с панорамным остеклением и со входом с уровня земли, без крылец, организованы изолированные дворы.', 'Московская обл., г. Химки, Северо-Западная промышленно - коммунальная зона.', '62 320,7 кв.м.', '17 этажей', 'Концепция[~a~]Стадия П (все разделы)[~a~]Альбом АГО[~a~]Получено заключение Экспертизы[~a~]Стадия Р (все комплекты). Рабочая документация, выдаваемая непосредственно на строительную площадку для производства работ.Содержит все необходимые данные для строительства объекта (узлы, детали, сечения, спецификации и т.п.)[~a~]Авторский надзо\r\n', 'Строится. Ввод в эксплуатацию в 2019 году.'),
(3, 'ЖК \"Бартон\"', 'Жилой комплекс \"Бартон\" г.Мытищи', NULL, 1, 'ЖК \"Бартон\" – это жилой комплекс класса бизнес-лайт расположенный в уникальном природном и ландшафтном комплексе близ усадьбы Нехлюдово, состоящий из шести домов в 3 этажа.[~a~]Архитектура комплекса наследует образы выдающихся строений в федеральном стиле. Строгая симметрия придает ему особую выразительность и узнаваемость. Это современное прочтение классики 1830-х годов.[~a~]Квартиры в уровне первого этажа имеют отдельный вход. В уровне 3-го этажа спроектированы квартиры с антресолями, гостиными со вторым светом и террасами. Закрытая территория, использование при отделке фасадов керамического кирпича ручной формовки, большие площади остекления - все это создает неповторимый уют и единение с природой.[~a~]Проект благоустройства выполнила компания Arteza.</p>', 'Московская обл., городской округ Мытищи, поселок Нагорное.', '24 006,5 кв.м. только жилых домов', '3+Антресоль', 'Концепция[~a~]Стадия П (все разделы)[~a~]Альбом АГО[~a~]Получено заключение Экспертизы[~a~]Стадия Р (ведется разработка). При разработке рабочей документации, выдаваемой непосредственно на строительнуюплощадку для производства работ, учитываются все необходимые данные для строительства объекта (узлы, детали, сечения, спецификации и т.п.)', 'Ведется строительство'),
(4, 'Паркинг г.Химки', 'Паркинг г.Химки', NULL, 1, 'Продуманный и современный паркинг – значительное преимущество любого объекта недвижимости. В данном проекте была проведена оптимизация проектных решений, которые были заложены в раннее разработанном проекте от сторонней организации,а именно, сокращена этажность при сохранении количества машинно-мест, удешевлены инженерные системы вентиляции и дымоудаления.', 'Московская обл., г. Химки, Северо-Западная промышленно - коммунальная зона.', '55 800,0 кв.м.', '8 этажей', 'Стадия П (все разделы)[~a~]Альбом АГО[~a~]Получено заключение Экспертизы[~a~]Стадия Р (все комплекты). Рабочая документация, выдаваемая непосредственно на строительную площадку для производства работ.Содержит все необходимые данные для строительства объекта (узлы, детали, сечения, спецификации и т.п.)[~a~]Авторский надзо\r\n', 'Строится. Ввод в эксплуатацию в 2019 году.'),
(5, 'Паркинг г.Мытищи', 'Паркинг г.Мытищи', NULL, 1, 'Продуманный и современный паркинг – значительное преимущество любого объекта недвижимости. В данном проекте была проведена оптимизация проектных решений, которые были заложены в раннее разработанном проекте от сторонней организации,а именно, сокращена этажность при сохранении количества машинно-мест, удешевлены инженерные системы вентиляции и дымоудаления.', ' Московская обл., городской округ Мытищи, поселок Нагорное.', '9 792,1 кв.м.', '3 этажа (+2 подземных)', 'Стадия П (все разделы)[~a~]Альбом АГО[~a~]Получено заключение Экспертизы[~a~]Стадия Р (все комплекты). Рабочая документация, выдаваемая непосредственно на строительную площадку для производства работ.Содержит все необходимые данные для строительства объекта (узлы, детали, сечения, спецификации и т.п.)[~a~]Авторский надзо\r\n', 'Строится. Ввод в эксплуатацию в 2019 году.'),
(6, 'ЖК \"RiverStreet\"', 'Жилой квартал \"RiverStreet\" мкр. Фирсановка г. Химки', NULL, 1, 'Жилой квартал \"RiverStreet\" возведен в живописном стародачном микрорайоне Фирсановка городского округа Химки. Проект представляет собой три многоквартирных малоэтажных жилых дома.', 'Московская обл., г. Химки, мкр.Фирсановка, ул.Речная', '4166 кв.м.', '3 этажа', 'Стадия П (все разделы)[~a~]Получено заключение Экспертизы[~a~]Стадия Р (все комплекты). Рабочая документация, выдаваемая непосредственно на строительную площадку для производства работ.Содержит все необходимые данные для строительства объекта (узлы, детали, сечения, спецификации и т.п.)[~a~]Авторский надзо\r\n', 'Введен в эксплуатацию'),
(7, 'КП «СЛАВИЧ»', 'Коттеджный поселок «СЛАВИЧ»', NULL, 1, 'Коттеджный поселок «СЛАВИЧ» состоит из 20 индивидуальных жилых домов общей площадью от 220 до 420 м2 в окружении живописной прогулочной зоны.', '', '', '', '', ''),
(8, 'Интерьеры и МОП', 'Интерьеры и МОП', 'Умный застройщик ориентируется на потребности потенциальных клиентов.\r\n<br>\r\nА мы — ориентируемся на запросы застройщиков, и готовы быстро предоставить разнообразные варианты современных функциональных планировок, которые, придутся по вкусу любым покупателям.\r\n<br>\r\nПри разработке квартирографии для жилого комплекса «Две столицы 2» мы предложили несколько видов архитектурных стилей для чистовой отделки квартир от застройщика, с подбором финишных отделочных материалов и мебели.', 1, 'Умный застройщик ориентируется на потребности потенциальных клиентов.[~a~]А мы — ориентируемся на запросы застройщиков, и готовы быстро предоставить разнообразные варианты современных функциональных планировок, которые, придутся по вкусу любым покупателям.[~a~]При разработке квартирографии для жилого комплекса «Две столицы 2» мы предложили несколько видов архитектурных стилей для чистовой отделки квартир от застройщика, с подбором финишных отделочных материалов и мебели.', '', '', '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `imgproject`
--
ALTER TABLE `imgproject`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projekt`
--
ALTER TABLE `projekt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `imgproject`
--
ALTER TABLE `imgproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `projekt`
--
ALTER TABLE `projekt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
