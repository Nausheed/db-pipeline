-- New column for customer phone numbers
ALTER TABLE customers ADD COLUMN phone VARCHAR(20);

-- Speed up lookups of orders by customer
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
