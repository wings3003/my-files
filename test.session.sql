-- CREATE TABLE companies(
--     name VARCHAR(50),
--     address VARCHAR(50)
-- );


-- ALTER TABLE companies
-- ADD COLUMN employees INT NOT NULL;

-- DESCRIBE customers;

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY customer_id REFERENCES customers(id)
);