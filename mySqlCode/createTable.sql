CREATE DATABASE notas;
USE notas;

CREATE TABLE state (
  id int(11) NOT NULL,
  name varchar(80) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE category (
  id int(11) NOT NULL,
  name varchar(80) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE note (
  id int(11) NOT NULL,
  state_id int(11) NOT NULL,
  creation_date date NOT NULL,
  modification_date date NOT NULL,
  description text NOT NULL,
  read_only tinyint NOT NULL,
  category_id int(11) NOT NULL,
  title varchar(200) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY FK1 (state_id) references state(id),
  FOREIGN KEY FK2 (category_id) references category(id)
);

CREATE TABLE users (
  id int(11) NOT NULL,
  name varchar(80) NOT NULL,
  email varchar(255) NOT NULL,
  note_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY FK3 (note_id) references note(id)
);