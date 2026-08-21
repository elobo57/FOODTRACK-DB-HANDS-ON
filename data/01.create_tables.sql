CREATE TABLE foodtrucks{
    foodtrucks_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cuisine_type VARCHAR(500) NOT NULL,
    city VARCHAR(100) NOT NULL,
}

CREATE TABLE locations{
    location_id INT PRIMARY KEY,
    foodtrucks_id INT NOT NULL,
    Location_date  DATE NOT NULL,
    zone VARCHAR(100),
    FOREIGN KEY (foodtrucks_id) REFERENCES foodtrucks(foodtrucks_id)
}