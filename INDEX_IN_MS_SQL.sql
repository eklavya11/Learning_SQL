--INDEX IN MS SQL

--In general, index is used to measure performance
--Database systems uses indices to provide fast access to relational data.
--special type of physical data structure used to access one or more data rows fast.
--database index can change each time the correspoding data changes(insert,update,delete)

--query optimiser(database component) decides whether or not to use an existing index
--assigns a row address to values of column on which indexing is applied

--SYNTAX

--CREATE INDEX Index_name ON table_name

--Ex - CREATE INDEX IDX_EMPLOYEE_SALARY ON EMPLOYEE(SALARY ASC);

--CREATE TABLE LS.EMPLOYEE(

--EMP_ID INT PRIMARY KEY,
--NAME VARCHAR(50),
--SALARY DECIMAL(14,2),
--LOCATION VARCHAR(50)
--)


ALTER TABLE LS.EMPLOYEE
ALTER COLUMN EMP_ID INT


SELECT * FROM LS.EMPLOYEE where salary> 50000





--INSERT INTO LS.EMPLOYEE (EMP_ID, NAME, SALARY, LOCATION) VALUES
--(1, 'Alice Smith', 55000.00, 'New York'),
--(2, 'Bob Johnson', 62000.00, 'Los Angeles'),
--(3, 'Charlie Brown', 48000.00, 'Chicago'),
--(4, 'Diana Prince', 72000.00, 'Houston'),
--(5, 'Edward Elric', 54000.00, 'Phoenix'),
--(6, 'Fiona Green', 61000.00, 'Philadelphia'),
--(7, 'George Martin', 58000.00, 'San Antonio'),
--(8, 'Hannah Baker', 67000.00, 'San Diego'),
--(9, 'Ian McKellen', 50000.00, 'Dallas'),
--(10, 'Julia Roberts', 80000.00, 'San Jose'),
--(11, 'Kevin Spacey', 59000.00, 'Austin'),
--(12, 'Liam Neeson', 72000.00, 'Jacksonville'),
--(13, 'Mia Farrow', 66000.00, 'San Francisco'),
--(14, 'Nina Dobrev', 53000.00, 'Columbus'),
--(15, 'Oliver Twist', 48000.00, 'Fort Worth'),
--(16, 'Paula Patton', 75000.00, 'Indianapolis'),
--(17, 'Quentin Tarantino', 85000.00, 'Charlotte'),
--(18, 'Rachel Green', 49000.00, 'Seattle'),
--(19, 'Steve Jobs', 95000.00, 'Denver'),
--(20, 'Tina Fey', 62000.00, 'Washington'),
--(21, 'Uma Thurman', 68000.00, 'Boston'),
--(22, 'Vin Diesel', 74000.00, 'El Paso'),
--(23, 'Winston Churchill', 60000.00, 'Detroit'),
--(24, 'Xena Warrior', 80000.00, 'Nashville'),
--(25, 'Yara Shahidi', 57000.00, 'Baltimore'),
--(26, 'Zoe Saldana', 89000.00, 'Milwaukee'),
--(27, 'Aaron Paul', 61000.00, 'Albuquerque'),
--(28, 'Bella Hadid', 72000.00, 'Tucson'),
--(29, 'Chris Hemsworth', 85000.00, 'Fresno'),
--(30, 'Dwayne Johnson', 100000.00, 'Sacramento'),
--(31, 'Ethan Hawke', 58000.00, 'Long Beach'),
--(32, 'Felicity Jones', 64000.00, 'Kansas City'),
--(33, 'Gina Rodriguez', 65000.00, 'Mesa'),
--(34, 'Henry Cavill', 70000.00, 'Virginia Beach'),
--(35, 'Isla Fisher', 66000.00, 'Atlanta'),
--(36, 'Jack Black', 58000.00, 'Colorado Springs'),
--(37, 'Kate Winslet', 71000.00, 'Omaha'),
--(38, 'Leonardo DiCaprio', 95000.00, 'Raleigh'),
--(39, 'Monica Bellucci', 69000.00, 'Miami'),
--(40, 'Nathan Drake', 55000.00, 'Cleveland'),
--(41, 'Olivia Wilde', 72000.00, 'Tulsa'),
--(42, 'Peter Dinklage', 60000.00, 'Oakland'),
--(43, 'Quincy Jones', 68000.00, 'Minneapolis'),
--(44, 'Robert Pattinson', 73000.00, 'Wichita'),
--(45, 'Sandra Bullock', 83000.00, 'New Orleans'),
--(46, 'Tom Hanks', 95000.00, 'Arlington'),
--(47, 'Uma Thurman', 60000.00, 'Bakersfield'),
--(48, 'Vanessa Hudgens', 59000.00, 'Tampa'),
--(49, 'Will Smith', 88000.00, 'Honolulu'),
--(50, 'Xander Cage', 54000.00, 'Anaheim'),
--(51, 'Yvonne Strahovski', 65000.00, 'Santa Ana'),
--(52, 'Zach Galifianakis', 57000.00, 'St. Louis'),
--(53, 'Alicia Vikander', 72000.00, 'Pittsburgh'),
--(54, 'Brad Pitt', 95000.00, 'Corpus Christi'),
--(55, 'Cate Blanchett', 80000.00, 'Anchorage'),
--(56, 'David Schwimmer', 65000.00, 'Stockton'),
--(57, 'Eva Mendes', 71000.00, 'Cincinnati'),
--(58, 'Finn Wolfhard', 64000.00, 'Buffalo'),
--(59, 'Gwen Stefani', 78000.00, 'Chula Vista'),
--(60, 'Hugh Jackman', 85000.00, 'Fort Wayne'),
--(61, 'Iggy Azalea', 60000.00, 'Jersey City'),
--(62, 'Jason Momoa', 90000.00, 'Chandler'),
--(63, 'Kylie Jenner', 95000.00, 'Laredo'),
--(64, 'Lana Del Rey', 70000.00, 'Madison'),
--(65, 'Matthew McConaughey', 85000.00, 'Durham'),
--(66, 'Natalie Portman', 78000.00, 'Lubbock'),
--(67, 'Oscar Isaac', 69000.00, 'Irvine'),
--(68, 'Penelope Cruz', 76000.00, 'Chesapeake'),
--(69, 'Quinn Fabray', 54000.00, 'Gilbert'),
--(70, 'Ryan Gosling', 83000.00, 'Henderson'),
--(71, 'Sofia Vergara', 95000.00, 'St. Petersburg'),
--(72, 'Timothée Chalamet', 66000.00, 'Laredo'),
--(73, 'Ursula K. Le Guin', 58000.00, 'Chattanooga'),
--(74, 'Vincent Cassel', 72000.00, 'Garland'),
--(75, 'Will Ferrell', 90000.00, 'Glendale'),
--(76, 'Xiomara Reyes', 63000.00, 'Hialeah'),
--(77, 'Yannick Noah', 55000.00, 'Overland Park'),
--(78, 'Zoe Kravitz', 70000.00, 'Tallmadge'),
--(79, 'Alfred Molina', 58000.00, 'West Valley City'),
--(80, 'Benedict Cumberbatch', 80000.00, 'Columbia'),
--(81, 'Catherine Zeta-Jones', 85000.00, 'Clarksville'),
--(82, 'Daniel Craig', 95000.00, 'Waterbury'),
--(83, 'Emily Blunt', 66000.00, 'New Haven'),
--(84, 'Fiona Shaw', 67000.00, 'Murrieta'),
--(85, 'Gal Gadot', 73000.00, 'Lancaster'),
--(86, 'Heath Ledger', 80000.00, 'Salem'),
--(87, 'Iris Apatow', 60000.00, 'Hayward'),
--(88, 'Jenna Ortega', 70000.00, 'Pomona'),
--(89, 'Kendall Jenner', 80000.00, 'Escondido'),
--(90, 'Liam Hemsworth', 72000.00, 'Sunnyvale'),
--(91, 'Madonna', 95000.00, 'Macon'),
--(92, 'Nicolas Cage', 86000.00, 'Grand Prairie'),
--(93, 'Oprah Winfrey', 120000.00, 'Columbus'),
--(94, 'Piper Perabo', 62000.00, 'Fort Collins'),
--(95, 'Queen Latifah', 74000.00, 'Little Rock'),
--(96, 'Reese Witherspoon', 85000.00, 'Torrance'),
--(97, 'Selena Gomez', 93000.00, 'Chattanooga'),
--(98, 'Tom Hardy', 87000.00, 'Cape Coral'),
--(99, 'Uma Thurman', 66000.00, 'Oxnard'),
--(100, 'Viggo Mortensen', 78000.00, 'Fontana');
