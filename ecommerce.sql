create database ecommerce_db;

create table users (
user_id int primary key,
name varchar(100),
email varchar(100),
password varchar(100),
);

create table products (
product_id int primary key,
name varchar(100),
price decimal (10, 2),
stock int,
);

create table orders (
order_id int primary key,
user_id int,
order_date date,
total_amount decimal (10, 2),
foreign key (user_id) references users (user_id) -- linking to users table
);