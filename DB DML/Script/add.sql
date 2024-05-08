
INSERT INTO Notifications (notification_type) VALUES
    ('Header'),
    ('Header with text'),
    ('Full text');

INSERT INTO Subscriptions (subscription_cost, subscription_title) VALUES
    (10.99, 'Basic'),
    (19.99, 'Standard'),
    (29.99, 'Premium'),
    (15.99, 'Gold'),
    (25.99, 'Platinum'),
    (35.99, 'Silver'),
    (20.99, 'Bronze'),
    (30.99, 'Diamond'),
    (40.99, 'Titanium'),
    (50.99, 'Enterprise');
	


INSERT INTO Customers (customer_name, customer_email, customer_country, subscription_id, notification_id)
VALUES
    ('John Doe', 'john@gmail.com', 'USA', 8, 1),
    ('Alice Smith', 'alice@gmail.com', 'UK', 9, 2),
    ('Bob Johnson', 'bob@gmail.com', 'Canada', 10, 3),
    ('Emma Brown', 'emma@gmail.com', 'Australia', 5, 1),
    ('Michael Lee', 'michael@gmail.com', 'Germany', 6, 2),
    ('Sophia Wong', 'sophia@gmail.com', 'China', 7, 3),
    ('William Wu', 'william@gmail.com', 'Japan', 1, 1),
    ('Olivia Kim', 'olivia@gmail.com', 'South Korea', 2, 2),
    ('Daniel Park', 'daniel@gmail.com', 'France', 3, 3),
    ('Emily Chen', 'emily@gmail.com', 'Taiwan', 4, 1);

INSERT INTO Notes (note_title, note_abstact, note_author) VALUES
    ('Introduction to SQL', 'This note covers basic SQL commands', 'William Wu'),
    ('Advanced SQL Techniques', 'Learn about advanced SQL features', 'Emily Chen'),
    ('Database Design Principles', 'Essential principles of database design', 'Emily Chen'),
    ('Data Manipulation in SQL', 'How to manipulate data using SQL', 'John Smith'),
    ('Data Warehousing Concepts', 'Understanding data warehousing', 'William Wu'),
    ('Introduction to NoSQL Databases', 'An overview of NoSQL databases', 'Sophia Wong'),
    ('Big Data Analytics', 'Analyzing big data using SQL', 'John Smith'),
    ('Data Mining Techniques', 'Exploring data mining methods', 'Olivia Kim'),
    ('Data Visualization with SQL', 'Visualizing data using SQL queries', 'John Smith'),
    ('Machine Learning in Databases', 'Using machine learning in databases', 'John Smith');
	

INSERT INTO Keywords(keyword_title, customer_id, note_id) VALUES
	('BasicSQL',6,1),
	('BasicSQL',5,1),
	('BasicSQL',3,1),
	('Database',4,2),
	('Data', 2,3),
	('Data',3,3),
	('Data',1,3),
	('ML',2,9),
	('ML',1,9),
	('ML',6,9);

INSERT INTO Topics(topic_title,customer_id,note_id) VALUES
	('Basic NoSQL',7,5),
	('Basic NoSQL',7,6),
	('Data Manipulation',8,4),
	('Data Manipulation',9,4),
	('Data Manipulation',2,4),
	('Data Manipulation',5,4),
	('Big Data',1,6),
	('Big Data',4,6),
	('Database Design',3,2),
	('Database Design',8,2);
