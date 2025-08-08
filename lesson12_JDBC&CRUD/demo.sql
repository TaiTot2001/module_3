create database demo_lesson12;
use demo_lesson12;
create table users (
id int(3) NOT NULL AUTO_INCREMENT, 
      name varchar(120) NOT NULL, 
      email varchar(220) NOT NULL, 
      country varchar(120), 
      PRIMARY KEY (id) 
);

INSERT INTO users(name, email, country)
VALUES ('Minh', 'minh@codegym.vn', 'Viet Nam'),('Kante', 'kante@che.uk', 'Kenia');


