CREATE TABLE invoices (
    id         SERIAL PRIMARY KEY,
    order_ref  INT NOT NULL,
    amount     NUMERIC(10,2) NOT NULL,
    paid       BOOLEAN DEFAULT FALSE,
    issued_at  TIMESTAMP DEFAULT NOW()
);
