-- Get all detected diseases with user details
SELECT Users.name, TeaLeaves.image_url, TeaLeaves.disease_detected, TeaLeaves.detection_date
FROM TeaLeaves
JOIN Users ON TeaLeaves.user_id = Users.user_id;

-- Average user rating for chatbot responses
SELECT AVG(rating) AS avg_rating FROM Feedback;
