


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






CREATE TABLE products (
    product_id BIGSERIAL PRIMARY KEY,
    category_id BIGINT NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    sku VARCHAR(50) UNIQUE NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL CHECK (unit_price > 0),
    cost_price NUMERIC(10,2) NOT NULL CHECK (cost_price > 0),
    stock_quantity INT NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0),
    weight_kg NUMERIC(6,2),
    color VARCHAR(50),
    launch_date DATE,
    product_status VARCHAR(20) DEFAULT 'Active'
        CHECK (product_status IN ('Active','Discontinued','Out of Stock')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_products_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

