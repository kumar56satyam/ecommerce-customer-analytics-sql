


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









CREATE TABLE payments (
    payment_id BIGSERIAL PRIMARY KEY,
    payment_method VARCHAR(30) NOT NULL
        CHECK (payment_method IN (
            'Credit Card',
            'Debit Card',
            'UPI',
            'Net Banking',
            'Wallet',
            'Cash on Delivery'
        )),

    payment_status VARCHAR(20) NOT NULL
        CHECK (payment_status IN (
            'Pending',
            'Completed',
            'Failed',
            'Refunded'
        )),

    transaction_reference VARCHAR(100) UNIQUE,

    payment_amount NUMERIC(10,2) NOT NULL
        CHECK (payment_amount >= 0),

    payment_date TIMESTAMP NOT NULL,

    gateway_name VARCHAR(50),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);















CREATE TABLE orders (
    order_id BIGSERIAL PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    payment_id BIGINT,
    order_date TIMESTAMP NOT NULL,
    order_status VARCHAR(30) NOT NULL,
    shipping_city VARCHAR(100),
    shipping_state VARCHAR(100),

    CONSTRAINT fk_order_customer
    FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id),

    CONSTRAINT fk_order_payment
    FOREIGN KEY(payment_id)
    REFERENCES payments(payment_id)
);






CREATE TABLE returns( 
    return_id BIGSERIAL PRIMARY KEY,
    customer_id BIGINT NOT NULL, 
    return_date DATE, return_reason VARCHAR(200), 
    refund_amount NUMERIC(10,2), 
    CONSTRAINT fk_return_order 
    FOREIGN KEY(customer_id) 
    REFERENCES customers(customer_id) );











