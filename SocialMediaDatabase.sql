CREATE DATABASE IF NOT EXISTS social_media_db;
Use social_media_db;

drop table if exists comment;
drop table if exists post;
drop table if exists user;

Create Table user (
	user_name varchar(20) not null,
	email varchar(50) not null,
	password varchar(20) not null,
	primary key(user_name)
);

create table post (
	post_number int(20) not null,
	user_user_name varchar(20) not null,
	time_posted datetime not null,
	post varchar(255) not null,
	primary key(post_number),
	foreign key(user_user_name) references user(user_name)
);
create table comment (
	user_user_name varchar(20) not null,
	post_post_number int(20) not null,
	time_commented datetime not null,
	comment varchar(255) not null,
	foreign key(user_user_name) references user(user_name),
	foreign key(post_post_number) references post(post_number)
);