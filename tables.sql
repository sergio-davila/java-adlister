use adlister_db;

create table if not exists users (
   id int unsigned auto_increment,
   username varchar(100) not null,
   email varchar(100) not null,
   password varchar(50) not null,
   primary key (id)
);

create table if not exists ads (
    id int unsigned auto_increment,
    user_id int unsigned,
    title varchar(100) not null,
    description varchar(100) not null,
    primary key (id),
    foreign key (user_id) references users (id)
);