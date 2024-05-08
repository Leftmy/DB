***DB Design in Code***



Customers {
	customer_id integer pk increments unique
	customer_name varchar(30)
	customer_email varchar(50) unique
	customer_country varchar(15)
	keyword_id integer >* Keywords.keyword_id
	subscription_id integer > Subscriptions.subscription_id
	notification_id integer > Notifications.notification_id
	topic_id integer >* Topics.topic_id
}

Subscriptions {
	subscription_id integer pk increments unique
	subscription_start_date integer
	subscription_expiration_date integer
	subscription_cost integer
}

Notifications {
	notification_id integer pk increments unique
	notification_type varchar(20)
}

Notes {
	note_id integer pk increments unique
	note_title varchar(30)
	note_abstract varchar(50) null
	note_author varchar(30)
	keyword_id integer >* Keywords.keyword_id
	topic_id integer >* Topics.topic_id
}

Topics {
	topic_id integer pk increments unique
	topic_title integer
}

Keywords {
	keyword_id integer pk increments unique
	keyword_title integer
}

