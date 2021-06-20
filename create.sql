create database db;
use db;
create table publisher(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255) NOT NULL,
   country VARCHAR(255) NOT NULL,
   PRIMARY KEY(id)
);
create table books(
      id INT NOT NULL AUTO_INCREMENT,
      title VARCHAR(255) NOT NULL,
      publisher INT NOT NULL,
      PRIMARY KEY(id),
      FOREIGN KEY(publisher) REFERENCES publisher(id)
);
create table subjects(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);
create table books_subjects(
book INT NOT NULL,
subject INT NOT NULL,
FOREIGN KEY(book) REFERENCES books(id),
FOREIGN KEY(subject) REFERENCES subjects(id)
);