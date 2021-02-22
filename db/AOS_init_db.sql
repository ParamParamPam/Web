-- Тип для товаров --
CREATE TYPE "types" AS ENUM (
	'кондиционер',
	'посудомоечная машина',
	'сушилка для белья',
	'холодильник',
	'кухонная плита',
	'стиральная машина',
	'телевизор',
	'DVD-проигрыватель'
);
-- Компании производители товаров --
CREATE TYPE companies AS ENUM (
	'Bosch',
	'Smeg',
	'AEG',
	'Sharp',
	'Samsung',
	'Sony',
	'Philips'
);
-- Статус заказа --
CREATE TYPE statuses AS ENUM (
	'в обработке',
	'собран',
	'поставлен',
	'закрыт' -- заказ получен покупателем
);
-- Временные промежутки доставки --
CREATE TYPE time_period AS ENUM (
	'08:00 - 12:00',
	'12:00 - 16:00',
	'16:00 - 18:00',
	'18:00 - 22:00'
);
-- ТАБЛИЦА PRODUCT -- ТОВАР --
CREATE TABLE IF NOT EXISTS product (
	product_id serial PRIMARY KEY,
	title varchar(50) NOT NULL,
	"type" "types" NOT NULL, -- тип (холодильник/телевизор и т.д.)
	description text NOT NULL, -- габариты/разрешение и т.д., зависит от типа
	price real NOT NULL CHECK (price > 0),
	company companies NOT NULL, -- компания производитель
	assembly_place varchar(50) NOT NULL, -- место сборки
	amount int NOT NULL CHECK (amount >= 0) -- количество
);
-- ТАБЛИЦА CUSTOMER -- ПОКУПАТЕЛЬ --
CREATE TABLE IF NOT EXISTS customer (
	customer_id serial PRIMARY KEY,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL UNIQUE,
	phone_number varchar(50) NOT NULL,
	address text NOT NULL,
	pswd_hash varchar(16) NOT NULL -- modified md5
);
-- ТАБЛИЦА ORDER -- ЗАКАЗ --
CREATE TABLE IF NOT EXISTS "order" (
	order_id serial PRIMARY KEY,
	customer_id int REFERENCES CUSTOMER ON DELETE RESTRICT,
	status statuses NOT NULL, -- статус заказа
	creation_date date NOT NULL,
	creation_time time NOT NULL,
	address text NOT NULL,
	recieve_date date NOT NULL,
	recieve_time_period time_period NOT NULL
);
-- ТАБЛИЦА PRODUCT_ORDER -- ТОВАРЫ В ЗАКАЗЕ --
CREATE TABLE IF NOT EXISTS product_order (
	order_id int REFERENCES "order" ON DELETE RESTRICT,
	product_id int REFERENCES PRODUCT ON DELETE RESTRICT,
	amount int NOT NULL CHECK (amount > 0),
	price real NOT NULL CHECK (price > 0),
	PRIMARY KEY(order_id, product_id)
);
-- ТАБЛИЦА BASKET -- КОРЗИНА --
CREATE TABLE IF NOT EXISTS basket (
	customer_id int REFERENCES CUSTOMER ON DELETE RESTRICT,
	product_id int REFERENCES PRODUCT ON DELETE RESTRICT,
	amount int NOT NULL CHECK (amount > 0),
	PRIMARY KEY(customer_id, product_id)
);
-- ТАБЛИЦА ADMIN -- АДМИНИСТРАТОР --
CREATE TABLE IF NOT EXISTS "admin" (
	login varchar(50) PRIMARY KEY,
	pswd_hash varchar(16) NOT NULL, -- modified md5
	"name" varchar(50) NOT NULL
);