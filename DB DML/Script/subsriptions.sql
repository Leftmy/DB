SELECT Subscriptions.*
FROM Subscriptions
INNER JOIN Customers ON Subscriptions.subscription_id = Customers.subscription_id;
