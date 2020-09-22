
show databases;

create database if not exists meteors;

create table t_app
(
	id int auto_increment,
	app_id varchar(64) auto_increment comment 'app id',
	app_name varchar(255) not null comment '应用名称',
	is_del tinyint default 0 not null,
	create_at Timestamp default current_timestamp not null,
	last_modify_time TIMESTAMP default CURRENT_TIMESTAMP not null
);

create unique index t_app_app_id_uindex
	on t_app (app_id);

create unique index t_app_id_uindex
	on t_app (id);

alter table t_app
	add constraint t_app_pk
		primary key (id);