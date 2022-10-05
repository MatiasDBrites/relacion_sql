create table singer (
id serial primary KEY,
name varchar(20) not null,
age int not null,
style varchar(20) not null,
band varchar(20) not null 
);

insert into singer values ('1', 'Ozzy_Osbourn', '73', 'Heavy_metal', 'Black_Sabbath');
insert into singer  values ('2', 'Ronnie_James_Dio', '67', 'Heavy_metal', 'Dio');
insert into singer  values ('3', 'Rob_Halford', '71', 'Heavy_metal', 'Judas_Priest');
insert into singer  values ('4', 'Till_Lindemann', '33', 'Heavy_metal', 'Rammstein');
insert into singer  values ('5', 'Bruce_Dickinson', '64', 'Heavy_metal', 'Iron_Maiden');

create table guitarist (
id serial primary KEY,
name varchar(20) not null,
age int not null,
style varchar(20) not null,
band varchar(20) not null 
);

insert into guitarist  values ('1', 'Anthony_Frank_Lommi', '74', 'Heavy_metal', 'Black_Sabbath');
insert into guitarist  values ('2', 'Craig_Goldy', '61', 'Heavy_metal', 'Dio');
insert into guitarist  values ('3', 'Glenn_Raymond_Tipton', '74', 'Heavy_metal', 'Judas_Priest');
insert into guitarist  values ('4', 'Richard_Zven_Kruspe', '55', 'Heavy_metal', 'Rammstein');
insert into guitarist  values ('5', 'Adrian_Smith', '65', 'Heavy_metal', 'Iron_Maiden');

create table drummer (
id serial primary KEY,
name varchar(20) not null,
age int not null,
style varchar(20) not null,
band varchar(20) not null 
);

insert into drummer  values ('1', 'William_Thomas_Ward', '74', 'Heavy_metal', 'Black_Sabbath');
insert into drummer  values ('2', 'Simon_Wright', '59', 'Heavy_metal', 'Dio');
insert into drummer  values ('3', 'Scott_Travis', '61', 'Heavy_metal', 'Judas_Priest');
insert into drummer  values ('4', 'Christoph_Schneider', '56', 'Heavy_metal', 'Rammstein');
insert into drummer  values ('5', 'Michael_H_McBrain', '70', 'Heavy_metal', 'Iron_Maiden');

create table band (
id serial primary KEY,
name varchar(20) not null,
period varchar(20) not null,
style varchar(20) not null,
member int not null 
);

insert into band  values ('1', 'Black_Sabbath', '1968-2017', 'Heavy_metal', '5');
insert into band  values ('2', 'Dio', '1980-2010', 'Heavy_metal', '5');
insert into band  values ('3', 'Judas_Priest', '1969-2022', 'Heavy_metal', '5');
insert into band  values ('4', 'Rammstein', '1994-2022', 'Heavy_metal', '6');
insert  into band  values ('5', 'Iron_Maiden', '1975-2022', 'Heavy_metal', '6');

alter table singer add column band_id integer;
alter table guitarist  add column band_id integer;
alter table drummer add column band_id integer;

alter table singer add constraint fk_id_band foreign key (band_id) references band(id);
alter table guitarist  add constraint fk_id_band foreign key (band_id) references band(id);
alter table drummer add constraint fk_id_band foreign key (band_id) references band(id);

select b.* from singer s
join band b ON b.id = s.band_id 
where b."name" = 'Rammstein';

