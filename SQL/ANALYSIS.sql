-- Q1. What is the total number of passenger trips recorded?
/
SELECT COUNT(passenger_full_name) AS Total_Count FROM airline_data;
/
-- Q2. What is the distribution of passengers by gender?
/
SELECT gender, COUNT(*) AS total_values FROM airline_data GROUP BY gender;
/
-- Q3. Which age group accounts for the highest number of travelers?
/
SELECT age_category, COUNT(*) AS highest_travelled_age_category FROM airline_data GROUP BY age_category ORDER BY highest_travelled_age_category DESC LIMIT 1;
/
-- Q4. Which departure airport is used most frequently?
/
SELECT airport_name, COUNT(*) AS highest_departed_airport FROM airline_data GROUP BY airport_name ORDER BY highest_departed_airport DESC LIMIT 1;
/
-- Q5. Identify the country with the maximum number of passenger trips.
/
SELECT nationality, COUNT(*) AS highest_passengers FROM airline_data GROUP BY nationality ORDER BY highest_passengers DESC LIMIT 1;
/
-- Q6. Which continent has the highest number of departing flights?
/
SELECT continents, COUNT(*) AS highest_total_flights FROM airline_data GROUP BY continents ORDER BY highest_total_flights DESC LIMIT 1;
/
-- Q7. During which month do the most departures occur?
/
SELECT departure_month, COUNT(*) AS highest_travel_month FROM airline_data GROUP BY departure_month ORDER BY highest_travel_month DESC LIMIT 1;
/
-- Q8. What is the overall distribution of flight statuses (on-time, delayed, cancelled)?
/
SELECT flight_status, COUNT(*) AS total_values FROM airline_data GROUP BY flight_status;
/
-- Q9. How many trips were made by each age group?
/
SELECT age_category, COUNT(*) AS total_values FROM airline_data GROUP BY age_category;
/
-- Q10. What percentage of flights were cancelled?
/
SELECT ROUND((SUM(CASE WHEN flight_status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0)/ COUNT(*),2) AS cancelled_percentage FROM airline_data;
/