
CREATE DATABASE pizza_delivery;


USE pizza_delivery;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    description TEXT
);


INSERT INTO pizzas (name, price, description) VALUES ('Margherita', 8.99, 'Classic cheese and tomato pizza');
INSERT INTO pizzas (name, price, description) VALUES ('Pepperoni', 9.99, 'Pizza topped with pepperoni slices');
INSERT INTO pizzas (name, price, description) VALUES ('Vegetarian', 9.99, 'Pizza loaded with fresh vegetables');


CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    pizza_id INT NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(8, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id)
);


CREATE TABLE password_reset_tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    token VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
