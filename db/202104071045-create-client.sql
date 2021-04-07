create table client(
	name varchar(1000),
	token text default md5(random():: text),
	data jsonb);
