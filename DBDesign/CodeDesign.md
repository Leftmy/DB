***DB Design in Code***


Customers {
	customer_id integer pk increments unique
	customer_name varchar(30)
	customer_email varchar(50)
	customer_country varchar
	customer_city varchar
	customer's_topics integer > Topics.Topic_id
	customer's_subscription integer null > Subscription.subscription_id
	customer_notification integer >* Notification.customer_id
	note_id integer *> Notes.note_id
}

Notes {
	note_id integer pk increments unique
	note_title varchar
	note_abstract varchar
	note_author integer *> Authors.author_id
	note_create_date date
}

Subscription {
	subscription_id integer pk increments unique
	subscription_start_date date
	subscription_expiration_date date
	subscription_cost decimal
}

Topics {
	Topic_id integer pk increments unique
	topic_name varchar(25)
	keyword_id integer >* Keywords.keyword_id
}

Keywords {
	keyword_id integer pk increments unique
	keyword_name varchar(25)
}

Notification {
	notification_id integer pk increments unique
	customer_id integer > undefined.id
	type_of_notification text
}

