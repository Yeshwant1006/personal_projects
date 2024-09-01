create table users(
id serial unique primary key,
username varchar(255) not null,
created_at timestamp default now());

create table photos(
id serial primary key,
img_url varchar(355) not null,
user_id int not null,
created_date timestamp default now(),
foreign key(user_id)references users(id));

create table comments(
id serial primary key,
comment_text varchar(255) not null,
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key(photo_id)references photos(id));

create table likes(
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key(user_id)references users(id),
foreign key(photo_id)references photos(id),
	primary key(user_id, photo_id));
	
create table follow(
follower_id int not null,
followee_id int not null,
created_at timestamp default now(),
foreign key(follower_id)references users(id),
foreign key(followee_id)references users(id),
	primary key(follower_id, followee_id));
	
create table tags(
id serial primary key,
tag_name varchar(255)unique not null,
created_at timestamp default now());

select * from tags 

create table photo_tags(
photo_id int not null,
tag_id int not null,
foreign key(photo_id)references photos(id),
foreign key(tag_id)references tags(id),
primary key(photo_id, tag_id));


select * from users
select * from photo_tags
select * from photos
select * from comments 
select * from likes 
select * from follow
select * from tags



