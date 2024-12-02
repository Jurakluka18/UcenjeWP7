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
sifra int not null primary key identity(1,1),
predmet varchar(50) not null,
vrstaIspita varchar(50) not null,
datum datetime,
pristupio bit not null);

create table Pristupnici(
ispitniRok int not null references IspitniRok(sifra),
student varchar(50) not null,
brojBodova int not null,
ocjena char(1) not null);
