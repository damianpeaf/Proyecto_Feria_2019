/* drop database if exists proyecto; */
/* create database proyecto;*/
ALTER DATABASE proyecto charset=utf8;
use proyecto;

create table departamento(

	id int auto_increment,
	departamento varchar(50),
	primary key(id)
	

);

create table municipio  (

	id int auto_increment,
	id_municipio int,
	municipio varchar(50),
	primary key(id)
    
);

/*
create table usuariosVendedor(

	nombres varchar(100) not null,
    apellidos varchar(100) not null,
    nombreUsuario varchar(100) not null,
    contraseña varchar(100) not null,
    correo varchar(100) not null, 
    dpi varchar(100) not null primary key,
    telefono varchar(100) not null,
    fechaNac date not null

);
*/

create table usuariosCliente (

	nombres varchar(50),
    apellidos varchar(50),
    nombreUsuario varchar(10),
    contra varchar(16),
    correo varchar(75), 
    dpi varchar(13)primary key,
    telefono varchar(8),
    departamento varchar(100),
    municipio varchar(100),
    fechaNac date

);

create table ofi(

	idF int auto_increment primary key,
    descrip varchar(50)

);

create table vend (
	
    idV int auto_increment primary key,
    idC varchar(13),
    foreign key (idC) references usuariosCliente(dpi),
    oficio varchar(100),
    descrip varchar(200),
    cv varchar(50),
    trabajosRealizados int,
    rating int,
    avatar varchar(50)

);

create table consulta(

	idConsulta int auto_increment primary key,
     idC varchar(13),
    foreign key (idC) references usuariosCliente(dpi),
    idV int,
    foreign key (idV) references vend(idV),
    pedido varchar(250),
    respuesta varchar(250),
    estado int,
    rating int

);

create table trabajosRealizados(

	idImagen int auto_increment primary key,
    idV int, 
    foreign key (idV) references vend(idV),
    imagen varchar(100),
    descripcion varchar(350)

);


create table comentario (

	idComentario int auto_increment primary key,
    idV int, 
    foreign key (idV) references vend(idV),
    comentario varchar(350)

);

SELECT * from vend where idC ='1064796534864';

alter table comentario ADD COLUMN idC varchar(13);

alter table comentario add FOREIGN key (idC) REFERENCES usuarioscliente(dpi);

insert into ofi values (null, 'Electricista'),
					   (null, 'Dentista'),
                       (null, 'Veterinario'),
                       (null, 'Carpintero'),
                       (null, 'Tutor'),
                       (null, 'Plomero'),
                       (null, 'Zapatero'),
                       (null, 'Albañil'),
                       (null, 'Sastre'),
                       (null, 'Diseñador Grafico'),
                       (null, 'Mecanico'),
                       (null, 'Editor'),
                       (null, 'Traductor'),
                       (null, 'Interprete'),
                       (null, 'Chofer'),
                       (null, 'Arquitecto'),
                       (null, 'Fotografo'),
                       (null, 'Organizador de eventos'),
                       (null, 'Panadero'),
                       (null, 'Pastelero'),
                       (null, 'Musico'),
                       (null, 'Guia Turistico'),
                       (null, 'DJ'),
                       (null, 'Cerrajero'),
                       (null, 'Pintor'),
                       (null, 'Exterminador de Plagas');                       

insert into usuariosCliente values('Damian','Peña','Dios', 'SoyDios321', 'damianpeaf@gmail.com', '1234567890123', '12345678', 'Guatemala', 'Guatemala', '2003/01/12');
insert into usuariosCliente values('Juan','Caballo','JUCA123', 'Wow1231', 'hola@gmail.com', '8756789656789', '12345678', 'Alta Verapaz', 'Coban', '2002/05/12');
insert into usuariosCliente values('Jose','Alessandro','JUCA123', 'Wow1231', 'hola@gmail.com', '1726394762518', '12345678', 'Alta Verapaz', 'Coban', '2002/05/12');
insert into usuariosCliente values('Alberto','Morales','JUCA123', 'Wow1231', 'hola@gmail.com', '9182736451523', '12345678', 'Guatemala', 'Villa Nueva', '2002/05/12');
insert into usuariosCliente values('Miguel','Aguilar','JUCA123', 'Wow1231', 'hola@gmail.com', '1064796534864', '12345678', 'Huehuetenago', 'Huehuetenango', '2002/05/12');

insert into vend values (null, '1234567890123', 'Electricista', 'Hago Magia', 'cv.docx', 12, 3, 'avatar.jpg');
insert into vend values (null, '8756789656789', 'DJ', 'Hago Magia', 'cv.docx', 50, 5, 'avatar.jpg');
insert into vend values (null, '1726394762518', 'Musico', 'Hago Magia', 'cv.docx', 1, 4, 'avatar.jpg');
insert into vend values (null, '9182736451523', 'Panadero', 'Hago Magia', 'cv.docx', 3, 2, 'avatar.jpg');
insert into vend values (null, '1064796534864', 'Electricista', 'Hago Magia', 'cv.docx', 5, 4, 'avatar.jpg');

Insert into departamento values (null, 'Alta Verapaz'),
								(null, 'Baja Verapaz'),
                                (null, 'Chimaltenango'),
                                (null, 'Chiquimula'),
                                (null, 'Peten'),
                                (null, 'El Progreso'),
                                (null, 'Quiche'),
                                (null, 'Escuintla'),
                                (null, 'Guatemala'),
                                (null, 'Huehuetenango'),
                                (null, 'Izabal'),
                                (null, 'Jalapa'),
                                (null, 'Jutiapa'),
                                (null, 'Quetzaltenango'),
                                (null, 'Retalhuleu'),
                                (null, 'Sacatquez'),
                                (null, 'San Marcos'),
                                (null, 'Santa rosa'),
                                (null, 'Solola'),
                                (null, 'Suchitepequez'),
                                (null, 'totonicapan'),
                                (null, 'Zacapa');
								

INSERT into municipio values (null,1,'Coban'),
							 (null,1,'Santa Cruz Verapaz'),
                             (null,1,'Tactic'),
                             (null,1,'Tamahu'),
                             (null,1,'Tucurú'),
                             (null,1,'Panzos'),
                             (null,1,'Senahú'),
                             (null,1,'San Pedro Carchá'),
                             (null,1,'San Juan Chamelco'),
                             (null,1,'Lanquín'),
                             (null,1,'Santa María Cahabón'),
                             (null,1,'Chisex'),
                             (null,1,'Chahal'),
                             (null,1,'Fray Bartolomé de las Casas'),
                             (null,1,'Santa Catalina La Tinta'),
                             (null,1,'Raxruha');
                             
INSERT into municipio values (null,2,'Salama'),
							 (null,2,'Cubulco'),
                             (null,2,'Granados'),
                             (null,2,'Purulhá'),
                             (null,2,'Rabinal'),
                             (null,2,'San Jeronimo'),
                             (null,2,'Miguel Chicaj'),
                             (null,2,'Zruz El Chol');
                             
INSERT into municipio values (null,3,'chimaltenango'),
							 (null,3,'Acatenango'),
                             (null,3,'El Tejar'),
                             (null,3,'Parramos'),
                             (null,3,'Patzicia'),
                             (null,3,'Patzun'),
                             (null,3,'San Andres Itzaltapa'),
                             (null,3,'San Jose Poaquil'),
                             (null,3,'Juan Comalapa'),
                             (null,3,'San Martin Jilotepeque'),
                             (null,3,'Micguel Pochuta'),
                             (null,3,'Pedro Yepocapa'),
                             (null,3,'Santa Apolonia'),
                             (null,3,'Santa Cruz Balanya'),
                             (null,3,'Tecpan'),
                             (null,3,'Zaragoza');
                             
INSERT into municipio values (null,4,'Chiquimula'),
							 (null,4,'Camotan'),
                             (null,4,'Concepcion de las minas'),
                             (null,4,'Esquipulas'),
                             (null,4,'Ipala'),
                             (null,4,'Jocotan'),
                             (null,4,'Quezaltepeque'),
                             (null,4,'San Jacinto'),
                             (null,4,'San Jose La Arada'),
                             (null,4,'San Juan Ermita');

INSERT into municipio values (null,5,'Flores'),
							 (null,5,'Dolores'),
                             (null,5,'El Chal'),
                             (null,5,'Libertad'),
                             (null,5,'Melchor de Mencos'),
                             (null,5,'Poptun'),
                             (null,5,'San Andres'),
                             (null,5,'San Benito'),
                             (null,5,'San Francisco'),
                             (null,5,'San Jose'),
                             (null,5,'San Luis'),
                             (null,5,'Santa Ana'),
                             (null,5,'Sayaxche');


INSERT into municipio values (null,6,'Guastatoya'),
							 (null,6,'El Jicaro'),
                             (null,6,'Morazan'),
                             (null,6,'San Agustin acasagustlan'),
                             (null,6,'Antonio La Paz'),
                             (null,6,'Cristobal Acasaguastlan'),
                             (null,6,'Sanarate'),
                             (null,6,'Sansare');
                             
INSERT into municipio values (null,7,'Cruz del chiche'),
							 (null,7,'canilla'),
                             (null,7,'chajul'),
                             (null,7,'chicaman'),
                             (null,7,'Chiche'),
                             (null,7,'Chichicastenango'),
                             (null,7,'Chinique'),
                             (null,7,'Cunen'),
                             (null,7,'Ixcan'),
                             (null,7,'Joyabaj'),
                             (null,7,'Pachalum'),
                             (null,7,'Patzite'),
                             (null,7,'sacapulas'),
                             (null,7,'Andres Sajcabaja'),
                             (null,7,'canilla'),
                             (null,7,'Antonio Ilotenango'),
                             (null,7,'Bartolome Jocotenango'),
                             (null,7,'Juan Cotzal'),
                             (null,7,'San Pedro Jocopilas'),
                             (null,7,'Maria Nebaj'),
                             (null,7,'Uspantan'),
                             (null,7,'zacualpa');
                              
                             
 INSERT into municipio values (null,8,'escuintla'),
							  (null,8,'Guanagazapa'),
                              (null,8,'Iztapa'),
                              (null,8,'Democracia'),
                              (null,8,'Gomera'),
                              (null,8,'Masagua'),
                              (null,8,'Nueva Concepcion'),
                              (null,8,'Palin'),
                              (null,8,'San Jose'),
                              (null,8,'San Vicente Pacaya'),
                              (null,8,'Santa Lucia Cotzumalguapa'),
                              (null,8,'Sipacate'),
                              (null,8,'Siquinala'),
                              (null,8,'Tiquisate');
                              
INSERT into municipio values (null,9,'San Juan Sacatepequez'),
							 (null,9,'San Raymundo'),
                             (null,9,'Chuarrancho'),
                             (null,9,'San Joose del Golfo'),
                             (null,9,'Sab Pedro Ayampuc'),
                             (null,9,'Chinautla'),
                             (null,9,'San Pedro Sacatequez'),
                             (null,9,'Mixco'),
                             (null,9,'Guatemala'),
                             (null,9,'Palencia'),
                             (null,9,'San Jose Pinula'),
                             (null,9,'Santa Catarina Pinula'),
                             (null,9,'Villa Nueva'),
                             (null,9,'Petapa'),
                             (null,9,'Frasijanes'),
                             (null,9,'Villa Canales'),
                             (null,9,'Amatitlan');
                             
INSERT into municipio values (null,10,'Huehuetenango'),
							 (null,10,'San Aguacatan'),
                             (null,10,'Chiantla'),
                             (null,10,'Colotenango'),
                             (null,10,'Concepcion Huista'),
                             (null,10,'Cuilco'),
                             (null,10,'Jacaltenango'),
                             (null,10,'Libertad'),
                             (null,10,'Democracia'),
                             (null,10,'Malacatancito'),
                             (null,10,'Nenton'),
                             (null,10,'Antonio Huista'),
                             (null,10,'San Gaspar ixchil'),
                             (null,10,'San Ildefonso Ixtahuacan'),
                             (null,10,'San Juan Atitan'),
                             (null,10,'San Juan Ixcoy'),
                             (null,10,'San Mateo Ixtatan'),
                             (null,10,'San Miguel Acatan'),
                             (null,10,'San Pedro Necta'),
                             (null,10,'San Pedro Soloma'),
                             (null,10,'San Rafael La Independencia'),
                             (null,10,'San Rafael Petza'),
                             (null,10,'San Sebastian huehuetenango'),
                             (null,10,'Santa Ana Huista'),
                             (null,10,'Santa Barbara'),
                             (null,10,'San Cruz Barillas'),
                             (null,10,'Santa Eulalia'),
                             (null,10,'Santago Chimaltenango'),
                             (null,10,'San Tectitan'),
                             (null,10,'Todos los Santos Cuchumatan'),
                             (null,10,'Union Cantinil');
                             
INSERT into municipio values (null,11,'Puerto Barrios'),
							 (null,11,'El Estor'),
                             (null,11,'Livingston'),
                             (null,11,'Amates'),
                             (null,11,'morales');
                             
                             
INSERT into municipio values (null,12,'Jalapa'),
							 (null,12,'Mataquescuintla'),
                             (null,12,'Monjas'),
                             (null,12,'San Carlos Alzatate'),
                             (null,12,'San Luis Jilotque'),
                             (null,12,'San Manuel Chaparron'),
                             (null,12,'San Pedro Pinula');
                             
                             
INSERT into municipio values (null,13,'Jutiapa'),
							 (null,13,'Agua Blanca'),
                             (null,13,'Asuncion Mita'),
                             (null,13,'Atescatempa'),
                             (null,13,'Comapa'),
                             (null,13,'Conguaco'),
                             (null,13,'El Adelanto'),
                             (null,13,'El Progreso'),
                             (null,13,'Jalpatagua'),
                             (null,13,'Jerez'),
                             (null,13,'Moyuta'),
                             (null,13,'Pasaco'),
                             (null,13,'Quesada'),
                             (null,13,'Jose Acatempa'),
                             (null,13,'Santa Catarina Mita'),
                             (null,13,'Yuplitepeque'),
                             (null,13,'Zapotitlan');
                             
INSERT into municipio values (null,14,'Quetzaltenango'),
							 (null,14,'Almolonga'),
                             (null,14,'Cabrican'),
                             (null,14,'Cajola'),
                             (null,14,'Cantel'),
                             (null,14,'Coatepeque');
                             
INSERT into municipio values (null,15,'El Asintal'),
							 (null,15,'Nuevo San Carlos'),
                             (null,15,'San Felipe'), 
                             (null,15,'San Sebastian'), 
                             (null,15,'San Martin Zapotitlan'), 
                             (null,15,'San Andres Villa seca'),
                             (null,15,'Santa Cruz Mulua'),
                             (null,15,'Retalhuleu'),
                             (null,15,'Champerico');
                             
INSERT into municipio values (null,16,'Antigua Guatemala'),
							 (null,16,'Ciudad Vieja'),
                             (null,16,'Jocotenango'),
                             (null,16,'Magdalena Milpas Altas'),
                             (null,16,'Pastores'),
                             (null,16,'San Antonio Aguas Calientes'),
                             (null,16,'San Bartolome Milpas Altas'),
                             (null,16,'San Juan Alotenango'),
                             (null,16,'San Lucas Sacatepequez'),
                             (null,16,'San Miguel Dueñas'),
                             (null,16,'Santa Catarina Barahona'),
                             (null,16,'Santa Lucia Milpas Altas'),
                             (null,16,'Santa Maria de Jesus'),
                             (null,16,'Santiago Sacatepequez'),
                             (null,16,'Santo Domingo Xenacoj'),
                             (null,16,'Sumpango');
                             
INSERT into municipio values (null,17,'San Marcos'),
							 (null,17,'Ayutla'),
                             (null,17,'Catarina'),
                             (null,17,'Comitancillo'),
                             (null,17,'Concepcion Tutuapa'),
                             (null,17,'Municipio de El Quetzal'),
                             (null,17,'El Tumbador'),
                             (null,17,'Esquipulas Palo Gordo'),
                             (null,17,'Ixchiguacan'),
                             (null,17,'La Blanca'),
                             (null,17,'La Reforma'),
                             (null,17,'Malacatan'),
                             (null,17,'Nuevo Progreso'),
                             (null,17,'Ocos'),
                             (null,17,'Pajapita'),
                             (null,17,'Rio Blanco'),
                             (null,17,'San Antonio Sacatepequez'),
                             (null,17,'San Cristobal Cucho'),
                             (null,17,'San Jose El Rodeo'),
                             (null,17,'San Jose Ojetenam'),
                             (null,17,'San Lorenzo'),
                             (null,17,'San Miguel Ixtahuacan'),
                             (null,17,'San Pablo'),
                             (null,17,'San Pedro Sacatepequez'),
                             (null,17,'San Rafael Pie de Cuesta'),
                             (null,17,'Sibinal'),
                             (null,17,'Sipacapa'),
                             (null,17,'Tacana'),
                             (null,17,'Tajumulco'),
                             (null,17,'Tejutla');
                             
INSERT into municipio values (null,18,'Cuilapa'),
							 (null,18,'Barberena'),
                             (null,18,'Casillas'),
                             (null,18,'Chiquimula'),
                             (null,18,'Guazacapan'),
                             (null,18,'Nueva Santa Rosa'),
                             (null,18,'Oratorio'),
                             (null,18,'Pueblo Nuevo Viñas'),
                             (null,18,'San Juan Tecuaco'),
                             (null,18,'San Rafael las Flores'),
                             (null,18,'Santa Cruz Naranjo'),
                             (null,18,'Santa Maria Ixhuatan'),
                             (null,18,'Santa Rosa de la Lima'),
                             (null,18,'Taxisco');
                             
INSERT into municipio values (null,19,'Nahuala'),
							 (null,19,'Santa Clara La Laguna'),
                             (null,19,'Santa Visitacion'),
                             (null,19,'San Juan la Laguna'),
                             (null,19,'Santiago Atitlan'),
                             (null,19,'San Lucas Toliman'),
                             (null,19,'San Antonio Palopo'),
                             (null,19,'Santa Catarina Ixtahuacan'),
                             (null,19,'San ANdres Semetabaj'),
                             (null,19,'Panajachel'),
                             (null,19,'Concepcion'),
                             (null,19,'Solola'),
                             (null,19,'Santa Cruz La Laguna'),
                             (null,19,'San Marcos La Laguna'),
                             (null,19,'San Pablo la Laguna'),
                             (null,19,'Santa Caratina Palopo'),
                             (null,19,'Santa Lucia Utatlan'),
                             (null,19,'San Jose Chacaya');

INSERT into municipio values (null,20,'Mazatenango'),
							 (null,20,'Chicacao'),
                             (null,20,'Cuyotenango'),
                             (null,20,'Patulul'),
                             (null,20,'Pueblo Nuevo'),
                             (null,20,'Rio Bravo'),
                             (null,20,'Samayac'),
                             (null,20,'San Antonio Suchitepequez'),
                             (null,20,'San Bernanrdino'),
                             (null,20,'Francisco Zapotitlan'),
                             (null,20,'San Gabriel'),
                             (null,20,'San Jose El Idolo'),
                             (null,20,'San Jose La Maquina'),
                             (null,20,'San Juan Bautista'),
                             (null,20,'San Lorenzo'),
                             (null,20,'San Miguel Panan'),
                             (null,20,'San Pablo Jocopilas'),
                             (null,20,'Municipio de Santa Barbara'),
                             (null,20,'Santo Domingo Suchitepequez'),
                             (null,20,'Santo Tomas la Union'),
                             (null,20,'Zunilito');
                             
INSERT into municipio values (null,21,'Santa Lucia la Reforma'),
							 (null,21,'San Bartolo'),
                             (null,21,'Momostenango'),
                             (null,21,'Santa Maria Chiquimula'),
                             (null,21,'San Francisco el Alto'),
                             (null,21,'Totonicapan'),
                             (null,21,'San Cristobal Totonicapan'),
                             (null,21,'San Andres Xecul');
                             
INSERT into municipio values (null,22,'Zacapa'),
							 (null,22,'Cabañas'),
                             (null,22,'Estanzuela'),
                             (null,22,'Gualan'),
                             (null,22,'Huite'),
                             (null,22,'La Union'),
                             (null,22,'Rio Hondo'),
                             (null,22,'San Diego'),
                             (null,22,'San Jorge'),
                             (null,22,'Teculutan'),
                             (null,22,'Usumatlan');
							