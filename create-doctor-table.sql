CREATE DATABASE 'demo';
USE demo;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(120) NOT NULL,
	dn varchar(220) NOT NULL,
	email varchar(120),
	a1 varchar(120),
	a2 varchar(120),
	a3 varchar(120),
	PRIMARY KEY (id)
);

