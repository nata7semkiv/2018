create table user
(
	id int auto_increment
		primary key,
	username varchar(100) not null,
	password varchar(20) not null,
	name varchar(40) null,
	status enum('active', 'deleted', 'banned') default 'active' null,
	role enum('admin', 'user') default 'user' null,
	constraint user_username_uindex
		unique (username)
)
comment 'users for notes' engine=InnoDB
;

INSERT INTO xkeep3.user
(id, username, password, name, status, role)
VALUES (1, 'igor@lyutak.com', '1122', 'Igor', 'active', 'admin');