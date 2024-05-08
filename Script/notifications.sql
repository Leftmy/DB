SELECT Notifications.*
FROM Notifications
INNER JOIN Customers ON Notifications.notification_id = Customers.notification_id;
