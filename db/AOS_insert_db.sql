INSERT INTO product VALUES (DEFAULT, 'Конд. AirW 45', 'кондиционер', 'Обслуживаемая площадь, м2: 28;Тип хладагента: R 410A', '5399.99', 'Bosch', 'Германия', '15');
INSERT INTO product VALUES (DEFAULT, 'Посуд. маш. White4', 'посудомоечная машина', 'вместимость: 12 комплектов;расход воды: 11.7 л', '15000', 'Smeg', 'Германия', '25');
INSERT INTO product VALUES (DEFAULT, 'BeClean v2.2', 'сушилка для белья', 'Длина:50 см;Ширина:31 см', '3999.99', 'AEG', 'Англия', '18');
INSERT INTO product VALUES (DEFAULT, 'Холодильник дв.камеры.', 'холодильник', 'ШхВхГ: 60х203х66 см;общий объем: 419 л;объем холодильной камеры: 280 л', '12499.99', 'Sharp', 'Франция', '1');
INSERT INTO product VALUES (DEFAULT, 'Плита Cook 453', 'кухонная плита', 'Тип:газовая;Материал рабочей поверхности:нерж. сталь', '5799.99', 'Samsung', 'Южная Корея', '3');
INSERT INTO product VALUES (DEFAULT, 'Jkle 5', 'стиральная машина', 'ШхГхВ: 60х55х85 см;загрузка: 8 кг', '19000', 'Sony', 'Англия', '34');
INSERT INTO product VALUES (DEFAULT, 'TV Syst 23dp', 'телевизор', 'разрешение: 4K UHD (3840x2160), HDR;диагональ экрана: 43";частота обновления экрана: 60 Гц', '3799', 'Philips', 'Англия', '29');
INSERT INTO product VALUES (DEFAULT, 'DVD Sony', 'DVD-проигрыватель', 'поддержка MPEG4, DivX;выход HDMI', '1999.99', 'Sony', 'Китай', '54');

INSERT INTO customer VALUES (DEFAULT, 'Николай Иванов', 'nikola.tesla@mail.ru', '89175432276', 'Москва просп.Верадского д.13 кв.1', 'kjh56SSEs345');
INSERT INTO customer VALUES (DEFAULT, 'Петрушка Федоров', 'kartoshka@bk.ru', '89856592284', 'Москва ул.Пражская д.120 кв.77', ',kjt&^%dg');
INSERT INTO customer VALUES (DEFAULT, 'Прокофий Прокофиевич', 'BigProf@mail.ru', '8-999-657-88-32', 'Санк-Петербург Невский просп. д.23 кв.3', 'mhgth4y#45yd');
INSERT INTO customer VALUES (DEFAULT, 'Акакий Акакиевич', 'ak.akak@mail.ru', '8 988 564 98 00', 'Балашиха ул.Семенова д.45 кв.46', 'fCG4gghgT');

INSERT INTO "order" VALUES (DEFAULT, 1, 'в обработке', '13.01.2020', '15:00', 'Москва просп.Верадского д.13 кв.1', '18.01.2020', '18:00 - 22:00');
INSERT INTO "order" VALUES (DEFAULT, 2, 'собран', '05.07.2005', '17:36', 'Москва Чечерский прд. д.123 кв.188', '13.08.2005', '12:00 - 16:00');
INSERT INTO "order" VALUES (DEFAULT, 3, 'поставлен', '18.11.2017', '10:03', 'Череповец ул.Ленина д.1 кв.14', '30.11.2017', '16:00 - 18:00');
INSERT INTO "order" VALUES (DEFAULT, 4, 'закрыт', '26.04.2010', '14:00', 'Рыбинск просп.Водный д.76 кв.39', '13.05.2010', '08:00 - 12:00');

INSERT INTO product_order VALUES (1, 1, 1, '5399.99');
INSERT INTO product_order VALUES (2, 2, 1, '13000');
INSERT INTO product_order VALUES (2, 3, 2, '2999');
INSERT INTO product_order VALUES (3, 4, 2, '17599');
INSERT INTO product_order VALUES (4, 5, 3, '5000');
INSERT INTO product_order VALUES (4, 6, 15, '13000');
INSERT INTO product_order VALUES (4, 7, 2, '2999.99');

INSERT INTO basket VALUES (2, 1, 3);
INSERT INTO basket VALUES (2, 2, 1);
INSERT INTO basket VALUES (3, 4, 4);
INSERT INTO basket VALUES (4, 5, 1);

INSERT INTO "admin" VALUES ('storekeeper', 'gfch74aas7t5', 'Илья Семенов');