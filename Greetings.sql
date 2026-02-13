
DROP DATABASE test_db;
CREATE DATABASE test_db;
USE test_db;

create table Greetings(
  id int auto_increment primary key, message varchar(255)
  );
  
  insert into Greetings(message) values('Hello World');
  select message from Greetings;