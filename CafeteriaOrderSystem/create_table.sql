CREATE TABLE Admin (
    ID INT PRIMARY KEY,
    userName VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    createtime DATETIME NOT NULL,
    permission_type VARCHAR(50) NOT NULL
);
CREATE TABLE User (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    ethnic_group VARCHAR(50) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    wallet DECIMAL(10, 2) NOT NULL
);
CREATE TABLE Merchant (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    rating DECIMAL(2, 1) NOT NULL,
    favorite_count INT NOT NULL
);
CREATE TABLE merchantkeyword (
    id INT PRIMARY KEY,
    merchant_id INT,
    keyword_id INT,
    FOREIGN KEY (merchant_id) REFERENCES Merchant(ID),
    FOREIGN KEY (keyword_id) REFERENCES Keyword(id)
);
CREATE TABLE Keyword (
    id INT PRIMARY KEY,
    keyword VARCHAR(255) NOT NULL
);
CREATE TABLE Dish (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Description TEXT,
    Image VARCHAR(255),
    MerchantID INT,
    ingredients TEXT,
    nutrition_info TEXT,
    allergens TEXT,
    user_rating DECIMAL(2, 1),
    review TEXT,
    is_special BOOLEAN,
    favorite_count INT,
    FOREIGN KEY (MerchantID) REFERENCES Merchant(ID)
);
CREATE TABLE dishpricechange (
    id INT PRIMARY KEY,
    dish_id INT,
    original_price DECIMAL(10, 2),
    changed_price DECIMAL(10, 2),
    change_time DATETIME,
    FOREIGN KEY (dish_id) REFERENCES Dish(ID)
);
CREATE TABLE restaurantreview (
    id INT PRIMARY KEY,
    restaurant_id INT,
    user_id INT,
    rating DECIMAL(2, 1),
    comment TEXT,
    created_time DATETIME,
    FOREIGN KEY (restaurant_id) REFERENCES Merchant(ID),
    FOREIGN KEY (user_id) REFERENCES User(ID)
);
CREATE TABLE dishReview (
    id INT PRIMARY KEY,
    dish_id INT,
    user_id INT,
    rating DECIMAL(2, 1),
    comment TEXT,
    created_at DATETIME,
    FOREIGN KEY (dish_id) REFERENCES Dish(ID),
    FOREIGN KEY (user_id) REFERENCES User(ID)
);
CREATE TABLE Order (
    ID INT PRIMARY KEY,
    UserID INT,
    merchant_id INT,
    OrderDate DATETIME,
    TotalPrice DECIMAL(10, 2),
    Status VARCHAR(20),
    OrderType VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES User(ID),
    FOREIGN KEY (merchant_id) REFERENCES Merchant(ID)
);
CREATE TABLE OrderDetail (
    ID INT PRIMARY KEY,
    OrderID INT,
    DishID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES `Order`(ID),
    FOREIGN KEY (DishID) REFERENCES Dish(ID)
);
CREATE TABLE Message (
    ID INT PRIMARY KEY,
    UserID INT,
    MessageContent TEXT,
    MessageDate DATETIME,
    MessageType VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES User(ID)
);
CREATE TABLE FavoriteMerchant (
    ID INT PRIMARY KEY,
    UserID INT,
    MerchantID INT,
    FOREIGN KEY (UserID) REFERENCES User(ID),
    FOREIGN KEY (MerchantID) REFERENCES Merchant(ID)
);
CREATE TABLE FavoriteDish (
    ID INT PRIMARY KEY,
    UserID INT,
    DishID INT,
    FOREIGN KEY (UserID) REFERENCES User(ID),
    FOREIGN KEY (DishID) REFERENCES Dish(ID)
);

