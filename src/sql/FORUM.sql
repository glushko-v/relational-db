create table users(
id int,
constraint users_pk primary key(id),
nick varchar2(16),
password varchar2(128),
email varchar2(128),
userDate timestamp,
karma float,
ip varchar2(20)
);

create table forumCategories (
id int,
constraint forumCategories_pk primary key(id),
title varchar2(64),
description clob,
categoryDate timestamp,
ip varchar2(20)
);

create table forumSubcategories(
id int,
constraint forumSubcategories_pk primary key(id),
idCategory int,
constraint forumCategories_fk foreign key(idCategory) references forumCategories(id),
title varchar2(45),
description clob,
subcategoryDate timestamp,
ip varchar2(20)
);


create table forumPosts (
id int,
constraint forumPosts_pk primary key(id),
idSubcategory int,
constraint subcategories_fk foreign key (idSubcategory) references forumSubcategories(id),
idUser int,
constraint users_fk foreign key (idUser) references users(id),
parentPost int,
title varchar2(90),
content clob,
isPoll char(1) default ('n') check (isPoll = 'y' or isPoll = 'n'),
postDate timestamp,
ip varchar2(20)
);

create table forumPollsOptions(
id int,
constraint forumPolls_pk primary key(id),
idPost int,
constraint forumPosts_fk foreign key(idPost) references forumPosts(id),
title varchar2(64),
pollDate timestamp
);

create table forumPollsOptionsVotes(
id int,
constraint forumPollsOptionsVotes_pk primary key (id),
idPollOption int,
constraint forumPollsOptions_fk foreign key (idPollOption) references forumPollsOptions(id),
idUser int,
constraint users_fk1 foreign key (idUser) references users(id),
pollsOptionsDate timestamp,
ip varchar2(20)
);