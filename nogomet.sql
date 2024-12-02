use master;
go
drop database if exists nogomet;
go
create database nogomet;
go
use nogomet;
go

create table klub(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
osnovan date,
stadion varchar(50),
predsjednik varchar(50),
drzava varchar(50),
liga varchar(50),);

create table igrac(
sifra int not null,
ime varchar(50)not null,
prezime varchar(50)not null,
datum_rodenja date,
pozicija varchar(50),
broj_dresa int,
klub int not null references klub(sifra)
);

create table utakmica(
sifra int not null,
datum date,
vrijeme time,
lokacija varchar(50),
stadion varchar(50),
domaci_klub int references klub(sifra),
gostujuci_klub int references klub(sifra)
);

create table trener(
sifra int,
ime varchar(50),
prezime varchar(50),
klub int references klub(sifra),
nacionalnost varchar(50),
iskustvo int);