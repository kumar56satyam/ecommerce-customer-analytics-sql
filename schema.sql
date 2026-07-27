


CREATE TABLE customers (
    customer_id BIGSERIAL PRIMARY KEY,
    customer_name VARCHAR(150) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    gender VARCHAR(10),
    date_of_birth DATE,
    city VARCHAR(100),
    state VARCHAR(100),
    signup_date DATE NOT NULL,
    customer_status VARCHAR(20) DEFAULT 'Active'
);






CREATE TABLE categories (
    category_id BIGSERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
