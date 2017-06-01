create database hibernate;
use hibernate;
DROP TABLE IF EXISTS `student`;
create table student(
id int(11) not null auto_increment,
Name nvarchar(45) ,
Date date,
gender nvarchar(45),
nationality nvarchar(45),
address nvarchar(45),
MSSV varchar(45),
primary key(id)
)