drop database if exists proyecto; 
create database proyecto;
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
insert into usuariosCliente values('Alberto','Ramirez','Rami001', 'Steman123', 'alramirez@gmail.com', '2136547896584', '39682517', 'Peten', 'Sayaxche', '2000/01/15');
insert into usuariosCliente values('Javier','Barrios','Elsayan', 'Contraseña123', 'elsayan1@gmail.com', '2957316482935', '17935642', 'Guatemala', 'Guatemala', '2001/04/09');
insert into usuariosCliente values('Carlos','Martinez','Calres12', 'Nelson102', 'Calres12@gmail.com', '5937164829764', '56897412', 'Chiquimula', 'Jocotan', '1995/07/07');
insert into usuariosCliente values('Inmanuel','Kanteras','InmKanter02', 'InmanuelKant1', 'InmKanter02@gmail.com', '2493568712658', '89785462', ' totonicapan', 'San Bartolo', '1986/11/18');
insert into usuariosCliente values('Samuel','Maldonado','Samdonado11', 'CoNtRa12', 'Samdonado11@gmail.com', '9764312580549', '82546591', 'Escuintla', 'Siquinala', '1979/07/21');
insert into usuariosCliente values('Fabio','Ortega','Fabga142', 'OrTeGa000', 'Fabga142@gmail.com', '2030654789410', '97864530', 'totonicapan', 'totonicapan', '1975/08/31');
insert into usuariosCliente values('Sofia','Melgar','Sofi002', 'Sofocles13', 'Sofi002@gmail.com', '3049568710265', '20469087', 'Guatemala', 'Villa Nueva', '1982/06/30');
insert into usuariosCliente values('Yahaira','Flores','Yahares13', 'Flowerskyes19', 'Yahares13@gmail.com', '3789654201569', '28520136', 'Escuintla', 'Palin', '1969/02/24');
insert into usuariosCliente values('Valeria','Quinteros','ValeriQ2', 'IlleVale99', 'ValeriQ2@gmail.com', '1926354870526', '70230150', 'Quiche', 'canilla', '2001/12/01');
insert into usuariosCliente values('Natalia','Arevalo','Natycrack1', 'Natylover1111', 'Natylovercrack1@gmail.com', '1346798520192', '25486531', 'Guatemala', 'Guatemala', '2000/04/07');
insert into usuariosCliente values('Ana','Gutierrez','AnaMonkey', 'MonkeY1', 'AnaMonkey@gmail.com', '9083462517902', '58595320', 'Solola', 'Concepcion', '2001/02/15');
insert into usuariosCliente values('Maria','Del Valle','vallesM2', 'olaKase100', 'vallesM2@gmail.com', '6180527930502', '20106986', 'Huehuetenango', 'Cuilco', '1992/04/11');
insert into usuariosCliente values('Alicia','Perez','AliceSkyes', 'NOTnullXD11', 'AliceSkyes@gmail.com', '1020306248975', '9246531', 'Quiche', 'Pachalum', '1986/07/01');
insert into usuariosCliente values('Isabel','Contreras','Isacont1', 'ibMasas10', 'Isacont1@gmail.com', '9764325813952', '20905084', 'Zacapa', 'Teculutan', '1995/09/10');
insert into usuariosCliente values('Agustin','Posadas','Agustpos', 'Agustineitor1', 'Agustpos@gmail.com', '7682134925024', '63256985', 'Guatemala', 'Guatemala', '1985/10/06');
insert into usuariosCliente values('Aldo','Garcia','Aldgarc01', 'Aldonerometro12', 'Aldgarc01@gmail.com', '5731926840255', '30789620', 'Solola', 'Solola', '1995/06/29');
insert into usuariosCliente values('Andres','Benitez','Benides41', 'Benitepaca12', 'Benides41@gmail.com', '6014785223269', '19760524', 'Zacapa', 'Gualan', '1987/03/24');
insert into usuariosCliente values('Arturo','Vidalero','Vidalerox99', 'Vidalfcv11', 'Vidalerox99@gmail.com', '7946130258439', '23605048', 'Huehuetenango', 'Santa Ana Huista', '1985/11/04');
insert into usuariosCliente values('Ivan','Gomez','Ivanez12', 'NOlaSabras0k', 'Ivanez12@gmail.com', '6325896321478', '94632581', 'Santa rosa', 'Guazacapan', '1979/01/02');
insert into usuariosCliente values('Alex','Casas','Alexsasytph', 'Ytphislive1', 'Alexsasytph@gmail.com', '4682159370258', '45678912', 'Huehuetenango', 'Union Cantinil', '1972/12/24');
insert into usuariosCliente values('Cristian','De Leon','Cristileon10', 'AberSilencio10', 'Cristileon10@gmail.com', '5825645915375', '97864502', 'Jalapa', 'Monjas', '1978/08/27');
insert into usuariosCliente values('Emilio','Reinos','EmilPos10', 'Posadasad3', 'EmilPos10@gmail.com', '7172737679785', '16235908', 'Guatemala', 'Mixco', '1995/03/');
insert into usuariosCliente values('Erick','Mazariegos','ErickKing1', 'Mazarick0', 'ErickKing1@gmail.com', '9173826457913', '20907065', 'Jalapa', 'Mataquescuintla', '1984/02/18');
insert into usuariosCliente values('Ernesto','Valmarillo','Valmarilles_1', 'Sequedasad34', 'Valmarilles_1@gmail.com', '9713054862049', '32165090', 'Chiquimula', 'San Jacinto', '1977/10/30');
insert into usuariosCliente values('Enrrique','paniagua','panikike1', 'Secretpass12', 'panikike1@gmail.com', '5632147896325', '12345609', 'Guatemala', 'Guatemala', '1986/01/16');
insert into usuariosCliente values('Josué','Guamuch','joguach','Hlonburt','jguamuch@gmail.com','85647212347','45889966','Totonicapan','Totonicapan','1995/04/25');
insert into usuariosCliente values('Diego','Castro','DC2001','hpbtmi','castdiego@yahoo.com','2314759652','52418766','Alta Verapaz','Coban','1985/02/26');
insert into usuariosCliente values('Alessandro','Calderón','wacb2003','a1e2i3o4u5','walesscb@gmail.com','2589945723','59229441','Guatemala','Guatemala','2003/02/11');
insert into usuariosCliente values('Daniel','Ipiña','dip23','defflepard','dipina15@hotmail.com','96258012414','25479632','San Juan Sacatepequez','Antigua Guatemala','1974/03/02');
insert into usuariosCliente values('Juan','García','chabelo','ruco123','jgarciaAC@netscape.net','0000000001','85743216','Pangea','Pangea','1105/10/25');
insert into usuariosCliente values('Javier','Chang','jch28','qwert','jchang28@gmail.com','4132657888','12369685','Escuintla','Amatitlan','2000/01/12');
insert into usuariosCliente values('Erick','García','ergar213','assfg','ergar2005@outlook.com','003322461','45852036','Huehuetenango','Huehuetenango','2002/03/07');
insert into usuariosCliente values('Jose','Santizo','santish','qwerty','jsantizo2000@gmail.com','559874231','96524177','Gutemala','Villa Nueva','2000/06/12');
insert into usuariosCliente values('Rodrigo','Calderón','rc2004','bartorcalderon947@gmail.com','rcalderon947@gmail.com','33475066520','50191937','Guatemala','Guatemala','2004/10/26');
insert into usuariosCliente values('Diego','Cruz','diegocruzxD','heilhall','cuquecruz@hotmail.com','7802301456','58620622','Totonicapan','Totonicapan','2002/11/30');
insert into usuariosCliente values('Nilrro','Alfaro','tromp1ja','nigpeta','alfaronilronilro@htomail.com','2352010174','96217830','Izabal','Livingston','2001/09/23');
insert into usuariosCliente values('Marcos','Tobías','choco','wishigbeingwhite','mtobias@gmail.com','636395987841','32147896','Izabal','Izabal','2003/06/09');
insert into usuariosCliente values('Marcelo','Hernandez','chelo','asdfrg','hmarcelo@gmail.com','521040963','85203691','Chiquimula','Chiquimula','2003/04/29');
insert into usuariosCliente values('Alejandro','Luncey','busquets','pianopro','aluncey@gmail.com','416703195','66529874','Guatemala','GUatemala','1990/05/21');
insert into usuariosCliente values('Elizabeth','Arevalo','eare225','gwagon','earevalo@hotmail.com','52369702202','25413678','Guatemala','Guatemala','2001/11/12');
insert into usuariosCliente values('Sergio','Barrera','chejo','nosetoquelacabeza','sbarrera@gmail.com','762646544321','35471026','Baja Verapaz','Salamá','1985/04/15');
insert into usuariosCliente values('Marissa','Aguilar','mariagui','fernion','marissagui@gmail.com','1684615868','63587412','Guatemala','Guatemala','2000/05/03');
insert into usuariosCliente values('Sammy','Soto','ssoto','heyguys','samsoto@gmail.com','2376116168','59781264','Retalhuleu','Retalhuleu','1981/02/09');
insert into usuariosCliente values('Phineas','Flinn','pflinn','queharemoshoy','pflinn@hotmail.com','7416162684','45821479','Jutiapa','Jutiapa','1995/12/25');
insert into usuariosCliente values('Fernando','Samayoa','lufe','superlufe','lfersama@gmail.com','7891546645','56214789','Peten','Flores','1986/03/09');
insert into usuariosCliente values('Luis','Masella','lupe','superlupe','luispemasella@hotmlail.com','254984651','45698231','Guatemala','Guatemala','2000/01/25');
insert into usuariosCliente values('Tatiana','Baldizón','tatiii','zxcddfe','tatibal@gmail.com','8741869846','78911245','Guatemala','Guatemala','2003/01/25');
insert into usuariosCliente values('Luis','Jimenez','wichoj','afihof','luisjim@gmail.com','35816848916','02153698','Guatemala','Guatemala','2001/12/01');
insert into usuariosCliente values('Javier','Juarez','javiei12','pojuroe','jjuarez@maildrop.cc','552233667788','55220011','Jalapa','Jalapa','1996/04/04');
insert into usuariosCliente values('Carlos','Godinez','gogucar','jlknvn','carlgodi@gmail.com','0654916509','00225548','Santa Rosa','Monterrico','1960/11/03');
insert into usuariosCliente values('Kevin','Duque','kd2122','bmogof','kduqueleon@hotmail.com','64849854','12368599','Quiche','Santa Cruz del Quiche','2002/07/04');

insert into vend values (null, '1234567890123', 'Electricista', 'Hago Magia', 'cv.docx', 12, 3, 'avatar.jpg');
insert into vend values (null, '2136547896584', 'Editor', 'todo tipo de ediciones', 'cv.docx', 12, 2, 'avatar2.jpg');
insert into vend values (null, '2136547896584', 'Musico', 'musica de mi para el mundo', 'cv.docx', 76, 5, 'avatar3.jpg');
insert into vend values (null, '5937164829764', 'Pintor', 'pinto todo tipo de cosas', 'cv.docx', 10, 3, 'avatar4.jpg');
insert into vend values (null, '2493568712658', 'Exterminador de Plagas', 'hasta la ultima hormiga', 'cv.docx', 30, 4, 'avatar5.jpg');
insert into vend values (null, '9764312580549', 'Dentista', 'dentista profecional', 'cv.docx', 20, 2, 'avatar6.jpg');
insert into vend values (null, '2030654789410', 'Zapatero', 'arreglo zapatos y tennis', 'cv.docx', 45, 2, 'avatar7.jpg');
insert into vend values (null, '3049568710265', 'Albañil', 'el mejor para construir tus sueños', 'cv.docx', 21, 4, 'avatar8.jpg');
insert into vend values (null, '3789654201569', 'Cerrajero', 'usa la llave del alma', 'cv.docx', 11, 1, 'avatar9.jpg');
insert into vend values (null, '1926354870526', 'Guia Turistico', 'por toda guatemala', 'cv.docx', 47, 3, 'avatar10.jpg');
insert into vend values (null, '1346798520192', 'Musico', 'musica que sale del alma', 'cv.docx', 68, 5, 'avatar11.jpg');
insert into vend values (null, '9083462517902', 'Tutor', 'todo tipo de materias ', 'cv.docx', 10, 2, 'avatar12.jpg');
insert into vend values (null, '6180527930502', 'Chofer', 'te llevo a donde tu quieras', 'cv.docx', 40, 4, 'avatar12.jpg');
insert into vend values (null, '1020306248975', 'Interprete', 'sesde mandarin hasta ingles', 'cv.docx', 30, 3, 'avatar14.jpg');
insert into vend values (null, '9764325813952', 'Plomero', 'arreglo todo', 'cv.docx', 26, 5, 'avatar15.jpg');
insert into vend values (null, '9713054862049', 'Sastre', 'hago trajes de calidad', 'cv.docx', 54, 4, 'avatar16.jpg');

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
							