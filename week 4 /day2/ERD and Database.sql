-- Create Customer Table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100)
);

SELECT * FROM customer;

-- Create Tickets Table
CREATE TABLE tickets(
	tickets_id SERIAL PRIMARY KEY,
	price NUMERIC(2,2),
	sales NUMERIC(5,2),
    mov_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(mov_id) REFERENCES movies(mov_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
	
);

-- Create Concessions Table
CREATE TABLE concessions(
	concessions_id SERIAL PRIMARY KEY,
	food VARCHAR(100),
	drink VARCHAR(100),
	sales NUMERIC(5,2)
	customer_id INTEGER NOT NULL, -- NOT NULL CONSTRAINT means this can't be empty
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Create Movies Table
CREATE TABLE movies(
	mov_id SERIAL PRIMARY KEY,
	mov_title VARCHAR(100),
	mov_year DATE,
	mov_time TIME,
	mov_lang VARCHAR(100),
    mov_genre VARCHAR(100),
    mov_rel_country VARCHAR(100),
    mov_actor VARCHAR(100),
    mov_director VARCHAR(100),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
	
);
















-- Add data to our customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)
VALUES(
	1,
	'George',
	'Reynolds',
	'18 Milton St',
	'18 Milton St Cambridge, MA 02140'
);

INSERT INTO customer(
	first_name,
	last_name,
	address,
	billing_info
)
VALUES(
	'Wendy',
	'Smith',
	'222 Circle Dr',
	'222 Circle Dr Chicago, IL 60632'
);

INSERT INTO customer(
	first_name,
	last_name,
	address,
	billing_info
)
VALUES(
	'Sally',
	'Johns',
	'123 Sandwich St',
	'123 Sandwich St Champaign, IL 61820'
),
(
	'Colonel',
	'Sanders',
	'666 Burger Ave',
	'666 Burger Ave Des Plaines, IL 61652'
);

-- Insert for Tickets Table
INSERT INTO tickets(
	price,
	sales
)
VALUES(
	6.99,
	500.00
),

( 
	10.00,
	750.50

);



-- Insert for Concessions
INSERT INTO concessions(
	food,
	drink,
	sales
)
VALUES(
	'Popcorn',
	'Sprite'
),

(
	'Snickers',
	'Coke'

);

-- Insert into Movies
INSERT INTO movies(
	mov_title,
	mov_year,
	mov_time,
	mov_lang,
	mov_genre,
	mov_rel_country,
	mov_actor,
	mov_director
)
VALUES(
	'The Dark Knight',
	'2008',
	'6:00',
	'English',
	'Thriller',
	'USA',
	'Heath Ledger',
	'Christopher Nolan'
),

(
	'Skyfall',
	'2012',
	'7:30',
	'English',
	'Action',
	'USA',
	'Daniel Craig',
	'Sam Mendes'
	
	
);



