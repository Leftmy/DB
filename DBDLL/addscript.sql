
create table Notifications(
	notification_id serial primary key,
	notification_type varchar(30) not null
);

create table Subscriptions(
	subscription_id serial primary key,
	subscription_cost float
);

create table Keywords(
	keyword_id serial primary key,
	keyword_title varchar(30)
);

create table Topics(
	topic_id serial primary key,
	topic_title varchar(30)
);

create table Notes(
	note_id serial primary key,
	note_title varchar(30) not null,
	note_abstact varchar(30),
	note_author varchar(30) not null,
	keyword_id int references Keywords(keyword_id),
	topic_id int references Topics(topic_id)
);

create table Customers(
	customer_id serial primary key,
	customer_name varchar(30),
	customer_email varchar(30) not null,
	customer_country varchar(30) not null,
	keyword_id int references Keywords(keyword_id),
	topic_id int references Topics(topic_id),
	subscription_id int references Subscriptions(subscription_id),
	notification_id int references Notifications(notification_id)
);
