CREATE TABLE FoodTrucks (
    foodtrucks_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cuisine_type VARCHAR(500) NOT NULL,
    city VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Locations (
    location_id INT PRIMARY KEY,
    foodtrucks_id INT NOT NULL,
    Location_date DATE NOT NULL,
    zone VARCHAR(100),
    FOREIGN KEY (foodtrucks_id) REFERENCES FoodTrucks(foodtrucks_id)
);
GO

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT,
    CONSTRAINT FK_Product_FoodTrucks FOREIGN KEY (foodtruck_id) REFERENCES FoodTrucks(foodtrucks_id)
);
GO

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    status VARCHAR(50),
    total DECIMAL(10, 2),
    CONSTRAINT FK_Orders_FoodTrucks FOREIGN KEY (foodtruck_id) REFERENCES FoodTrucks(foodtrucks_id)
);
GO

CREATE TABLE OrdersItems (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT FK_OrdersItems_Orders FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT FK_OrdersItems_Product FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
GO