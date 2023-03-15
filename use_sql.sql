CREATE database mybatis_db DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;

create user 'mybatis'@'%' identified by 'mybatis1234';

grant all on mybatis_db.* to 'mybatis'@'%';

use mybatis_db;

create table company (
	id integer auto_increment primary key,
	company_name varchar(128),
	company_address varchar(128),
	index (company_name)
)

-- delete from company;

select * from company;


create table employee (
	id integer auto_increment primary key,
	company_id integer,
	employee_name varchar(128),
	employee_address varchar(128),
	index(employee_name),
	foreign key (company_id) references company(id)
)
 