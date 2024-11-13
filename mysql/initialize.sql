drop database if exists mydb;
create database mydb;
drop user if exists 'mydbuser'@'localhost';
create user mydbuser@localhost identified by 'action';
grant all on mydb.* mydbuser@localhost;