create table usuario(
	id_usuario INT primary key auto_increment,
	usuario VARCHAR(100),
	rol VARCHAR(100),
	password varchar(100)
);

create table empresa(
	id_empresa INT primary key auto_increment,
	razon_social VARCHAR(100),
	ruc VARCHAR(100),
	direccion varchar(100)
);

create table empresario(
	id_empresario INT primary key auto_increment,
	nombre VARCHAR(100),
	apellido VARCHAR(100),
	celular VARCHAR(100)
);

create table cliente(
	id_cliente INT primary key auto_increment,
	nombre varchar(100),
	apellido varchar(100)
);

create table empresario_empresa(
	id_empresario int not null,
	id_empresa int not null,
	foreign key (id_empresario) references empresario(id_empresario),
	foreign key (id_empresa) references empresa(id_empresa)
);

create table cliente_empresa(
	id_cliente int not null,
	id_empresa int not null,
	foreign key (id_cliente) references cliente(id_cliente),
	foreign key (id_empresa) references empresa(id_empresa)
);

/*password 12345*/
insert into usuario(usuario,rol,password) values ('admin','ADM','$2a$12$LY7mc8QEDym8h0GnFVGxF.HkCAQDgR2HNb/rZJIrBj2t0aKGIJp1S');
/*password user*/
insert into usuario(usuario,rol,password) values ('user','USER','$2a$12$I2aw66cEzTzZkBUpr7/7vOiCDgDCiCUmIXoicyeoH/E91XmBXBeJO');

