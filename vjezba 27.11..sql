use master;
go
drop database if exists vjezba;
go
create database vjezba;
go
use vjezba;
go

use vjezba;

create table IspitniRok(
sifra int,
predmet varchar(50),
vrstaIspita varchar(50),
datum datetime,
pristupio bit);

create table Pristupnici(
ispitniRok int,
student varchar(50),
brojBodova int,
ocjena char(1));
