--Customer insert
INSERT INTO customer (email, name, phone, address) VALUES
('john.doe@example.com', 'John Doe', '1234567890', '123 Main St'),
('jane.smith@example.com', 'Jane Smith', '0987654321', '456 Oak Ave'),
('alice.jones@example.com', 'Alice Jones', '1112223333', '789 Pine Rd');

--Company insert
INSERT INTO company (id, name, hq, url) VALUES
(1, 'TechCorp', '123 Silicon Valley, CA', 'https://www.techcorp.com'),
(2, 'GadgetWorld', '456 Tech Park, NY', 'https://www.gadgetworld.com'),
(3, 'BookHub', '789 Book St, TX', 'https://www.bookhub.com');

--Category insert
INSERT INTO category (categoryid, name, description) VALUES
(1, 'Electronics', 'Devices and gadgets'),
(2, 'Books', 'All kinds of books and literature'),
(3, 'Home Appliances', 'Appliances for home use');

--Type of product insert
INSERT INTO typeofproduct (typeid, tname, categoryid) VALUES
(1, 'Phone', 1),
(2, 'Laptop', 1),
(3, 'Washing Machine', 3),
(4, 'Television', 1),
(5, 'Novel', 2),
(6, 'Cookbook', 2);

--Product insert
INSERT INTO product (productid, name, price, instock, categoryid, typeid, companyid) VALUES
(1, 'iPhone 13', 999.99, 50, 1, 1, 1),
(2, 'MacBook Pro', 1299.99, 30, 1, 2, 1),
(3, 'Samsung Washing Machine', 699.99, 15, 3, 3, 2),
(4, 'Sony TV', 499.99, 25, 1, 4, 2),
(5, 'The Great Gatsby', 15.99, 200, 2, 5, 3),
(6, 'Mastering the Art of French Cooking', 40.00, 100, 2, 6, 3);

--Supplier insert 
INSERT INTO suplier (supplierid, name, contactinfo, productid) VALUES
(1, 'SupplyCo', 'contact@supplyco.com', 1),
(2, 'DistributorX', 'info@distributorx.com', 2),
(3, 'ApplianceWorld', 'support@applianceworld.com', 3);


--Purchase history table
INSERT INTO Purchase (PURCHASEID, EMAIL, PRODUCTID, PUCHASEDATE, HOWMANY) VALUES
(1, 'john.doe@example.com', 1, '2024-09-15', 2),
(2, 'jane.smith@example.com', 3, '2024-09-12', 1),
(3, 'alice.jones@example.com', 2, '2024-09-10', 3),
(4, 'john.doe@example.com', 4, '2024-09-16', 1),
(5, 'jane.smith@example.com', 5, '2024-09-14', 4);
