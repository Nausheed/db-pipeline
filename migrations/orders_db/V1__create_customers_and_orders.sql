CREATE TABLE customers (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    email       VARCHAR(150) UNIQUE NOT NULL,
    created_at  TIMESTAMP DEFAULT NOW()
);

CREATE TABLE orders (
    id           SERIAL PRIMARY KEY,
    customer_id  INT NOT NULL REFERENCES customers(id),
    amount       NUMERIC(10,2) NOT NULL,
    status       VARCHAR(20) DEFAULT 'NEW',
    created_at   TIMESTAMP DEFAULT NOW()
);
