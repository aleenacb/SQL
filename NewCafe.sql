drop database NewCafe;
create database NewCafe;
use NewCafe;

create table categories(
CategoryID int not null primary key,
CategoryName nvarchar(50) not null,
ItemDescription nvarchar(50) not null,
age int not null
);

insert into categories(CategoryId, CategoryName, ItemDescription, age) values
(1, "Beverages", "Soft Drinks", 20),
(2, "Condiments", "Sweet and Savory",18),
(3, "Confections", "Sweet Breads", 22);

select * from categories;

/*drop table categories;*/

/*drop table if exists categories;*/

show tables;

/*alter table categories rename to Restaurant;*/

alter table categories rename Column CategoryName to CName;

alter table categories 
add juice varchar(52);
select * from categories;

alter table categories
modify column ItemDescription nvarchar(50);

alter table categories
drop column juice;
/*desc categories;*/

alter table categories
alter column age set default 18;