CREATE DATABASE notas;
USE notas;

CREATE TABLE state (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(80) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE category (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(80) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE note (
  id int(11) NOT NULL AUTO_INCREMENT,
  state_id int(11) NOT NULL,
  creation_date date NOT NULL,
  modification_date date NULL,
  description text NOT NULL,
  read_only tinyint NOT NULL,
  category_id int(11) NOT NULL,
  title varchar(200) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY FK1 (state_id) references state(id),
  FOREIGN KEY FK2 (category_id) references category(id)
);

CREATE TABLE noteCategory (
  id int(11) NOT NULL AUTO_INCREMENT,
  note_id int(11) NOT NULL,
  category_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY FK4 (note_id) references note(id),
  FOREIGN KEY FK5 (category_id) references category(id)
);

CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(80) NOT NULL,
  email varchar(255) NOT NULL,
  note_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY FK3 (note_id) references note(id)
);

insert into state(name) values
('creada'),
('modificada'),
('eliminada');

insert into category(name) values
('Notas de hogar'),
('Notas laborales'),
('Notas capacitacion'),
('Notas varias');

INSERT INTO note (id, state_id, creation_date, modification_date, description, read_only, category_id, title) VALUES
	(1, 1, '2021-08-16', NULL, 'una nota1', 1, 3, 'titulo de una nota1'),
  (2, 2, '2021-08-16', '2021-09-17', 'una nota2', 0, 2, 'titulo de una nota2'),
	(3, 3, '2021-08-17', '2021-09-19', 'una nota3', 0, 1, 'titulo de una nota3'),
	(4, 1, '2021-08-17', NULL, 'una nota4', 1, 3, 'titulo de una nota4'),
	(5, 1, '2021-08-18', NULL, 'una nota5', 1, 3, 'titulo de una nota5'),
	(6, 1, '2021-08-18', NULL, 'una nota6', 1, 3, 'titulo de una nota6'),
	(7, 2, '2021-08-19', '2021-09-21', 'una nota7', 0, 3, 'titulo de una nota7'),
	(8, 2, '2021-08-19', '2021-09-21', 'una nota8', 0, 3, 'titulo de una nota8'),
	(9, 2, '2021-08-19', '2021-09-22', 'una nota9', 0, 3, 'titulo de una nota9'),
	(10, 3, '2021-08-20', '2021-09-30', 'una nota10', 1, 4, 'titulo de una nota10');
	
INSERT INTO users (id, name, email, note_id) VALUES
	(1, 'usuario1', 'usuario1@notes.com', 1),
  (2, 'usuario1', 'usuario1@notes.com', 2),
  (3, 'usuario1', 'usuario1@notes.com', 3),
  (4, 'usuario2', 'usuario2@notes.com', 4),
  (5, 'usuario3', 'usuario3@notes.com', 5),
  (6, 'usuario3', 'usuario3@notes.com', 6),
  (7, 'usuario4', 'usuario4@notes.com', 7),
  (8, 'usuario4', 'usuario4@notes.com', 8),
  (9, 'usuario4', 'usuario4@notes.com', 9),
  (10, 'usuario5', 'usuario5@notes.com', 10);