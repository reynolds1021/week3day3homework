-- Create Salesperson Table
CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

--SELECT * FROM customer;

-- Create Customers Table
CREATE TABLE customers(
	cust_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	cust_addr VARCHAR(100),
	billing_info VARCHAR(100)  
	
);

-- Create Cars Table
CREATE TABLE cars(
	serial_number SERIAL PRIMARY KEY,
	manufacturer VARCHAR(100),
	model VARCHAR(100),
	yr NUMERIC(4),
	color VARCHAR(100),
    transmission VARCHAR(100),
    number_cyl INTEGER,
    cond VARCHAR(100),
    number_doors INTEGER,
    body_style VARCHAR(100),
    odometer INTEGER,
    number_passengers INTEGER,
    price INTEGER
);


--Create Service History Table
CREATE TABLE service_history(
    serv_ticket SERIAL PRIMARY KEY,
    serv_ticket_date DATE,
    part_no INTEGER,
    part_cost NUMERIC(5,2),
    cust_id INTEGER NOT NULL,
    serial_number INTEGER NOT NULL,
    FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
    FOREIGN KEY(serial_number) REFERENCES cars(serial_number)
);




-- Create Invoice Table
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	cust_address VARCHAR(100),
	billinginfo VARCHAR(100),
    cust_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
	
);






--Create Mechanics Table
CREATE TABLE mechanics(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

--Create Parts Table
CREATE TABLE parts(
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(100),
    part_cost NUMERIC(5,2)
);


-- Add data to the salesperson table
INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
)
VALUES(
	1,
	'George',
	'Reynolds'
	
);

INSERT INTO salesperson(
    salesperson_id,
	first_name,
	last_name
	
)
VALUES(
    2,
	'Wendy',
	'Smith'
	
);



-- Insert for Invoice Table
INSERT INTO invoice(
    invoice_id,
    cust_address,
	billinginfo,
	cust_id,
	salesperson_id

)
VALUES(
    5,
	'27 Ferry Bridge Rd. Washington, CT 06793',
	'27 Ferry Bridge Rd. Washington, CT 06793',
	3,
	1
),

( 
    6,
	'272 East St. Sharon, CT 06069',
    '272 East St. Sharon, CT 06069',
	4,
	2
);




-- Insert for Cars
INSERT INTO cars(
    serial_number,
	manufacturer,
	model,
	yr,
    color,
    transmission,
    number_cyl,
    cond,
    number_doors,
    body_style,
    odometer,
    number_passengers,
    price

)
VALUES(
	5,
    'Volvo',
	'XC60',
    '2016',
    'Silver',
    'AUTO',
    6,
    'New',
    4,
    'AP',
    30349,
    4,
    12470
),

(

    6,
	'Audi',
    'A4',
    '2019',
    'Black',
    'MAN',
    6,
    'Used',
    4,
    'AP',
    3784,
    4,
    13800

);

-- Insert into Customer
INSERT INTO customers(
    cust_id,
	first_name,
	last_name,
	cust_addr,
	billing_info
)
VALUES(
    3,
	'Richard',
	'Bronson',
	'95 Lake St. Cooperstown, NY 13326',
    '95 Lake St. Cooperstown, NY 13326'
	
),

(
    4,
	'Susan',
	'Roberts',
	'3333 N. Charles St. Baltimore, MD 21287',
	'3333 N. Charles St. Baltimore, MD 21287'
	
);

INSERT INTO service_history(
    serv_ticket_id,
	serv_ticket_date,
	last_name,
	cust_addr,
	billing_info
)
VALUES(
    7,
	'10/21/2020',
	786,
	5.99
    
	
),

(
    8,
	'5/31/2019',
	199,
	314.15
	
);

INSERT INTO mechanics(
    mechanic_id,
	first_name,
    last_name

    19,
	'Chris',
	'Johnson',
	
    
	
),

(
    20,
	'Walter',
    'Truejohn'
	
);

INSERT INTO parts(
    part_id,
    part_name,
	part_cost,

    100,
    'Carburetor',
    200.00,

),

(
    101,
    'Sparkplug',
    7.99.
	
);